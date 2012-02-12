# -*- coding: utf-8 -*-
#
#= The test module of Pile module.
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

$LOAD_PATH.push('..')

require 'test/unit'
require 'data_pile'

#= The test class of Pile module.
#
#Include and test Pile module.
class TC_Pile < Test::Unit::TestCase
  include Pile

  #== Set up
  #
  #=== Parameters
  #none
  #=== Returns
  #none
  #=== Note
  #The set up function now do nothing.
  def setup
  end

  #== Tear down
  #
  #=== Parameters
  #none
  #=== Returns
  #none
  #=== Note
  #The tear down function now do nothing.
  def teardown
  end

  #== fetch test
  #
  #=== Parameters
  #none
  #=== Returns
  #none
  #=== Note
  #Execute function "fetch" of Pile module and ensure exception occurs.
  def test_fetch
    assert_raise(NotImplementedError,
                 "You can not fetch record from this pile.") do
      fetch()
    end
  end

  #== discard test
  #
  #=== Parameters
  #none
  #=== Returns
  #none
  #=== Note
  #Execute function "discard" of Pile module and ensure exception occurs.
  def test_discard
    assert_raise(NotImplementedError,
                 "You can not discard record from this pile.") do
      discard(nil)
    end
  end
end
