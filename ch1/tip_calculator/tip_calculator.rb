#!/usr/bin/env ruby

require 'bundler/setup'
Bundler.require

require_relative 'lib/tip_calculator'
TipCalculator.new().run
