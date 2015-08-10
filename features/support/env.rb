#!/usr/bin/env ruby

require "bundler"

Bundler.require

$LOAD_PATH.unshift(File.expand_path("../../../lib", __FILE__))

SimpleCov.start do
  add_filter "lib"
  add_filter "features/support"

  add_group "Step Definitions", "features/step_definitions"
  add_group "Page Objects", "features/page_objects"
end

require "blackbox"

Blackbox.setup
