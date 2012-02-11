# -*- coding: utf-8 -*-
#
#= The library for manipulating data piles.
#
#Authors::   Bragging Boozer<bragging.boozer@gmail.com>
#Version::   0.1
#License::   GPL Ver. 2.0
#Copyright:: Copyright (C) 2012 BraggingBoozer<bragging.boozer@gmail.com>. All rights reserved.
#
#This program is free software; you can redistribute it and/or modify it under
#the terms of the GNU General Public License as published by the Free Software
#Foundation; either version 2 of the License, or (at your option) any later
#version.
#        
#This program is distributed in the hope that it will be useful, but WITHOUT
#ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
#FOR A PARTICULAR PURPOSE. See the GNU General Public License for more
#details.
#        
#You should have received a copy of the GNU General Public License along with
#this program; if not, see <http://www.gnu.org/licenses/old-licenses/gpl-2.0.txt>.

require 'find'

#= The module which defines interfaces for data piles.
#
#Every data pile classes must include this module and override methods.
module Pile
  #== Fetch a record
  #
  #=== Parameters
  #none
  #=== Returns
  #a record
  #=== Note
  #Fetch a record from the data pile.
  def fetch()
    raise NotImplementedError, "You can not fetch record from this pile."
  end

  #== Discard a record
  #
  #=== Parameters
  #record:: The record which should be deleted.
  #=== Reruens
  #none
  #=== Note
  #Discard a record specified by the user.
  def discard(record)
    raise NotImplementedError, "You can not discard record from this pile."
  end
end

#= The module which defines interfaces for records in the pile.
#
#User of data pile must define class for records in the pile and include this module in it.
module Record
  #Key of injected data(The data pile uses this when recoed is discarded).
  attr_reader :element_key

  #== Inject data to a record
  #
  #=== Parameters
  #key:: key for element data
  #element:: element data
  #=== Returns
  #none
  #=== Note
  #The data pile can inject a raw data to a record by this method.
  def inject(key, element)
    @element_key = key
  end
end

#= File based data pile class.
#
#Data pile based files in a directory.
class FilePile
  include Pile

  #== Initializer
  #
  #=== Parameters
  #dir:: pile directory
  #=== Note
  #Create data pile with specified directory.
  def initialize(dir, klass)
    @dir = dir

    if @dir !~ /\/$/
      @dir += "/"
    end

    @record_class = klass
  end

  #== Fetch a record
  #
  #=== Parameters
  #none
  #=== Returns
  #a record
  #=== Note
  #Pick up file and create record with it.
  def fetch()
    record = @record_class.new

    Find.find(@dir).select{|f| FileTest.file?(f)}.each do |f|
      File.open(f) do |fo|
        record.inject(File.basename(f), fo)
      end
    end
  end

  #== Discard a record
  #
  #=== Parameters
  #record:: The record which should be deleted.
  #=== Reruens
  #none
  #=== Note
  #Remove an injected file with specified record.
  def discard(record)
    File.unlink(@dir + record.element_key)
  end
end
