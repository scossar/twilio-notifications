# -*- encoding: utf-8 -*-
# stub: twilio-ruby 4.9.0 ruby lib

Gem::Specification.new do |s|
  s.name = "twilio-ruby"
  s.version = "4.9.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Andrew Benton"]
  s.date = "2015-12-17"
  s.description = "A simple library for communicating with the Twilio REST API, building TwiML, and generating Twilio Client Capability Tokens"
  s.email = ["andrew@twilio.com"]
  s.extra_rdoc_files = ["README.md", "LICENSE.md"]
  s.files = ["LICENSE.md", "README.md"]
  s.homepage = "http://github.com/twilio/twilio-ruby"
  s.licenses = ["MIT"]
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "twilio-ruby", "--main", "README.md"]
  s.required_ruby_version = Gem::Requirement.new(">= 1.9.3")
  s.rubygems_version = "2.4.6"
  s.summary = "A simple library for communicating with the Twilio REST API, building TwiML, and generating Twilio Client Capability Tokens"

  s.installed_by_version = "2.4.6" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<multi_json>, [">= 1.3.0"])
      s.add_runtime_dependency(%q<builder>, [">= 2.1.2"])
      s.add_runtime_dependency(%q<jwt>, ["~> 1.0"])
      s.add_development_dependency(%q<bundler>, ["~> 1.5"])
    else
      s.add_dependency(%q<multi_json>, [">= 1.3.0"])
      s.add_dependency(%q<builder>, [">= 2.1.2"])
      s.add_dependency(%q<jwt>, ["~> 1.0"])
      s.add_dependency(%q<bundler>, ["~> 1.5"])
    end
  else
    s.add_dependency(%q<multi_json>, [">= 1.3.0"])
    s.add_dependency(%q<builder>, [">= 2.1.2"])
    s.add_dependency(%q<jwt>, ["~> 1.0"])
    s.add_dependency(%q<bundler>, ["~> 1.5"])
  end
end
