# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "autoscaler/version"

Gem::Specification.new do |s|
  s.name        = "autoscaler"
  s.version     = Autoscaler::VERSION
  s.authors     = ["Justin Love", "Fix Peña"]
  s.email       = ["git@JustinLove.name"]
  s.homepage    = ""
  s.summary     = %q{Start/stop Sidekiq workers on Heroku}
  s.description = %q{Currently provides a Sidekiq middleware that does 0/1 scaling of Heroku processes}

  s.rubyforge_project = "autoscaler"

  s.files         = <<MANIFEST.split("\n")
lib/autoscaler/heroku_scaler.rb
lib/autoscaler/sidekiq.rb
lib/autoscaler/version.rb
lib/autoscaler.rb
README.md
CHANGELOG.md
examples/complex.rb
examples/simple.rb
MANIFEST
  s.test_files    = <<TEST_MANIFEST.split("\n")
Guardfile
spec/autoscaler/heroku_scaler_spec.rb
spec/autoscaler/sidekiq_spec.rb
spec/spec_helper.rb
spec/redis_test.conf
TEST_MANIFEST
  s.require_paths = ["lib"]

  s.add_runtime_dependency "sidekiq", '>= 2.6.1', '< 3.0'
  s.add_runtime_dependency "heroku-api"

  s.add_development_dependency "bundler"
  s.add_development_dependency "mast"
  s.add_development_dependency "rspec"
  s.add_development_dependency "guard-rspec"
  s.add_development_dependency "guard-process"
end
