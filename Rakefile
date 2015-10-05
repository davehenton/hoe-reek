# -*- ruby -*-
# Release:
# * update *.wiki markdown documentation for GitLab
# * enable :git
# * rake run_before_release
# * disable :git
# * Checkin
# * rake release
# * rake run_after_release

require 'rubygems'
require 'hoe'

Hoe.plugin :bundler
Hoe.plugin :deveiate # Enable deveiate plugin for generating manuals
Hoe.plugin :doofus
Hoe.plugin :email
Hoe.plugin :gemspec
# Hoe.plugin :gem_prelude_sucks
#Hoe.plugin.remove :git
#Hoe.plugin :git
Hoe.plugin :history
Hoe.plugin :highline
#Hoe.plugin :inline
Hoe.plugin :manns
#Hoe.plugin :mercurial
#Hoe.plugin :perforce
# Hoe.plugin :racc
#Hoe.plugin :rcov
Hoe.plugin :reek
Hoe.plugin :rdoc
Hoe.plugin :rubocop
# Hoe.plugin :rubygems
#Hoe.plugin :seattlerb
Hoe.plugin :travis
Hoe.plugin :version
Hoe.plugin :website
Hoe.plugin :yard

###########################################DEVELOPING ZONE##############################################################
# rubocop:disable Metrics/LineLength
Hoe.spec 'hoe-reek' do
  developer('Sascha Manns', 'samannsml@directbox.com')
  developer('Erik Hollensbe', 'erik@hollensbe.org')

  license 'MIT' # this should match the license in the README
  require_ruby_version '>= 2.2.0'

  email_to << 'ruby-talk@ruby-lang.org'

  self.history_file = 'History.rdoc'
  self.readme_file = 'README.rdoc'
  self.extra_rdoc_files = FileList['*.rdoc'].to_a
  self.post_install_message = '*** Run rake setup to finish the installation *** Please file bugreports and feature requests on: https://gitlab.com/saigkill/hoe-reek/issues'

  dependency 'bundler', '~> 1.10'
  dependency 'setup', '~> 5.2'

  extra_dev_deps << ['coveralls', '~> 0.8']
  extra_dev_deps << ['gem-release', '~> 0.7']
  extra_dev_deps << ['hoe-bundler', '~> 1.2']
  extra_dev_deps << ['hoe-deveiate', '~> 0.7']
  extra_dev_deps << ['hoe-doofus', '~> 1.0']
  extra_dev_deps << ['hoe-gemspec', '~> 1.0']
  extra_dev_deps << ['hoe-git', '~> 1.6']
  extra_dev_deps << ['hoe-highline', '~> 0.2']
  extra_dev_deps << ['hoe-manns', '~> 1.0']
  extra_dev_deps << ['hoe-reek', '~> 1.1']
  extra_dev_deps << ['hoe-rubocop', '~> 0.1']
  extra_dev_deps << ['hoe-rubygems', '~> 1.0']
  extra_dev_deps << ['hoe-seattlerb', '~> 1.3']
  extra_dev_deps << ['hoe-travis', '~> 1.2']
  extra_dev_deps << ['hoe-version', '~> 1.2']
  extra_dev_deps << ['hoe-yard', '~> 0.1']
  extra_dev_deps << ['indexer', '~> 0.3']
  extra_dev_deps << ['minitest', '~> 5.8.1']
  extra_dev_deps << ['rake', '~> 10.0']
  extra_dev_deps << ['reek', '~> 3.3']
  extra_dev_deps << ['rspec', '~> 3.3']
  extra_dev_deps << ['rubocop', '~> 0.34']
  extra_dev_deps << ['simplecov', '~> 0.10']
  extra_dev_deps << ['test', '~> 1.0.0']
  extra_dev_deps << ['test-unit', '~> 3.1.4']
  extra_dev_deps << ['ZenTest', '~> 4.11']
  extra_dev_deps << ['bundler-audit', '~> 0.4.0']
  extra_dev_deps << ['manns_shared', '~> 1.0.0']
  extra_dev_deps << ['bundler-audit', '~> 0.4.0']
end

##################################################SETUP ZONE############################################################
require 'setup'
task :setup do
  system('setup.rb uninstall --force')
  system('setup.rb config')
  system('setup.rb install')
end

# vim: syntax=ruby
