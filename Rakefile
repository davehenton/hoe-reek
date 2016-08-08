# -*- ruby -*-
# Release:
# * enable :git
# * rake run_before_release
# * disable :git
# * Checkin
# * rake release
# * rake run_after_release

require 'rubygems'
require 'hoe'

Hoe.plugin :bundler
Hoe.plugin :doofus
Hoe.plugin :email
# Hoe.plugin :gem_prelude_sucks
#Hoe.plugins.delete :git
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
# Hoe.plugin :rubygems
#Hoe.plugin :seattlerb
Hoe.plugin :version
Hoe.plugin :website

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
  self.post_install_message = 'Please file bugreports and feature requests on: https://saigkill.myjetbrains.com/youtrack/issues'

  dependency 'bundler', '~> 1.11'
  dependency 'setup', '~> 5.2'

  extra_dev_deps << ['coveralls', '~> 0.8']
  extra_dev_deps << ['hoe-bundler', '~> 1.3']
  extra_dev_deps << ['hoe-doofus', '~> 1.0']
  extra_dev_deps << ['hoe-git', '~> 1.6']
  extra_dev_deps << ['hoe-highline', '~> 0.2']
  extra_dev_deps << ['hoe-manns', '~> 1.4']
  extra_dev_deps << ['hoe-reek', '~> 1.1']
  extra_dev_deps << ['hoe-rubygems', '~> 1.0']
  extra_dev_deps << ['hoe-seattlerb', '~> 1.3']
  extra_dev_deps << ['hoe-version', '~> 1.2']
  extra_dev_deps << ['rake', '~> 11.2']
  extra_dev_deps << ['reek', '~> 4.2']
  extra_dev_deps << ['rspec', '~> 3.5']
  extra_dev_deps << ['simplecov', '~> 0.12']
end

##################################################SETUP ZONE############################################################


# vim: syntax=ruby
