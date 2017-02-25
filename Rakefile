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
#Hoe.plugins.delete :git
Hoe.plugin :git
Hoe.plugin :history
Hoe.plugin :highline
Hoe.plugin :manns
Hoe.plugin :reek
Hoe.plugin :rdoc
Hoe.plugin :version
Hoe.plugin :website

###########################################DEVELOPING ZONE##############################################################
# rubocop:disable Metrics/LineLength
Hoe.spec 'hoe-reek' do
  developer('Sascha Manns', 'Sascha.Manns@mailbox.org')
  developer('Erik Hollensbe', 'erik@hollensbe.org')

  license 'MIT' # this should match the license in the README
  require_ruby_version '>= 2.2.0'

  email_to << 'ruby-talk@ruby-lang.org'

  self.history_file = 'History.rdoc'
  self.readme_file = 'README.rdoc'
  self.extra_rdoc_files = FileList['*.rdoc'].to_a
  self.post_install_message = 'Please file bugreports and feature requests on: https://github.com/saigkill/hoe-reek/issues'

  dependency 'bundler', '~> 1.13'
  dependency 'reek', '~> 4.5'

  extra_dev_deps << ['coveralls', '~> 0.8']
  extra_dev_deps << ['hoe-bundler', '~> 1.3']
  extra_dev_deps << ['hoe-doofus', '~> 1.0']
  extra_dev_deps << ['hoe-git', '~> 1.6']
  extra_dev_deps << ['hoe-highline', '~> 0.2']
  extra_dev_deps << ['hoe-manns', '~> 1.6']
  extra_dev_deps << ['hoe-rubygems', '~> 1.0']
  extra_dev_deps << ['hoe-seattlerb', '~> 1.3']
  extra_dev_deps << ['hoe-version', '~> 1.2']
  extra_dev_deps << ['rake', '~> 11.3']
  extra_dev_deps << ['rspec', '~> 3.5']
  extra_dev_deps << ['simplecov', '~> 0.12']
end

##################################################SETUP ZONE############################################################


# vim: syntax=ruby
