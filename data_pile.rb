# -*- coding: utf-8 -*-
#
#= The module which defines interfaces for data piles.
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

module Pile
  #== Fetch a record
  #
  #===Parameters
  #none
  #===Returns
  #a record
  #===Note
  #Fetch a record from the data pile.
  def fetch()
    raise NotImplementedError, "You can not fetch record from this pile."
  end

  #== Discard a record
  #
  #===Parameters
  #record:: The record which should be deleted.
  #===Reruens
  #none
  #===Note
  #Discard a record specified by the user.
  def discard(record)
    raise NotImplementedError, "You can not discard record from this pile."
  end
end
