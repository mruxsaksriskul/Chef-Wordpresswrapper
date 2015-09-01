# -*- encoding: utf-8 -*-
source 'https://rubygems.org'

gem 'chef-handler-profiler'
gem 'chef-handler-datadog'
gem 'chef-handler-opsmatic'

group :test do
  gem 'berkshelf', '~> 3.1'
  gem 'chefspec', '>= 3.1'
  gem 'foodcritic', '>= 3.0'
  gem 'rake', '>= 10.2'
  gem 'rubocop', '= 0.28.0'
end

group :integration do
  gem 'guard', '>= 2.6'
  gem 'guard-foodcritic', '~> 1.0.0'
  gem 'guard-kitchen'
  gem 'guard-rspec'
  gem 'guard-rubocop', '>= 1.1'
  gem 'kitchen-vagrant'
  gem 'test-kitchen', '~> 1.2.0'
  gem 'travis-lint'
  gem 'serverspec'
end
group :development do
  gem 'webmock'
  gem 'fauxhai'
end








#gem 'berkshelf'

# Uncomment these lines if you want to live on the Edge:
#
# group :development do
#   gem "berkshelf", github: "berkshelf/berkshelf"
#   gem "vagrant", github: "mitchellh/vagrant", tag: "v1.6.3"
# end
#
# group :plugins do
#   gem "vagrant-berkshelf", github: "berkshelf/vagrant-berkshelf"
#   gem "vagrant-omnibus", github: "schisamo/vagrant-omnibus"
# end

#gem "test-kitchen"
#gem "kitchen-vagrant"
