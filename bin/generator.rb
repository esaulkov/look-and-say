#!/usr/bin/env ruby
# frozen_string_literal: true

$LOAD_PATH.unshift(File.expand_path('../lib', 'lib'))
require 'look_and_say'

sequence = LookAndSay::Sequence.new(ARGV[0])
puts sequence.print(ARGV[1].to_i)
