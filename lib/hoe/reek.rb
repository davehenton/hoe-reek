# @encoding: utf-8
# @author: Sascha Manns
# @abstract: hoe-reek is a small reek integration into hoe
#
# Copyright (c) 2015-2017 Sascha Manns <Sascha.Manns@mailbox.org>
# License: MIT

# Dependencies

# Main module for hoe-reek
module Hoe::Reek
  # Versionizing the gem
  VERSION = '1.2.1'.freeze

  #attr_accessor :reek

  def initialize_reek
    require 'reek/rake/task'
  end

  def define_reek_tasks
    Reek::Rake::Task.new do |t|
      t.config_file = 'config.reek'
      t.source_files = 'lib/**/*.rb'
      t.reek_opts = ''
      t.fail_on_error = false
      t.verbose = true
    end
  end
end
