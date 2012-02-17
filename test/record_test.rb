# -*- coding: utf-8 -*-
#
#= The test module of Record module.
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

#= The test class of Record module.
#
#Include and test Record module.
class TC_Record < Test::Unit::TestCase
  include Record

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

  #== load test
  #
  #=== Parameters
  #none
  #=== Returns
  #none
  #=== Note
  #Execute function "load" of Record module and ensure attribute "key" is changed.
  def test_load
    load(1, nil)

    assert_equal(1, element_key, "The first element key is not loaded.");

    load(2, nil)

    assert_equal(2, element_key, "The first element key is not loaded.");
  end
end
