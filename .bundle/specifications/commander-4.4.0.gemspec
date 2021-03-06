# -*- encoding: utf-8 -*-
# stub: commander 4.4.0 ruby lib

Gem::Specification.new do |s|
  s.name = "commander"
  s.version = "4.4.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["TJ Holowaychuk", "Gabriel Gilder"]
  s.date = "2016-02-19"
  s.description = "The complete solution for Ruby command-line executables. Commander bridges the gap between other terminal related libraries you know and love (OptionParser, HighLine), while providing many new features, and an elegant API."
  s.email = ["gabriel@gabrielgilder.com"]
  s.executables = ["commander"]
  s.files = ["bin/commander"]
  s.homepage = "https://github.com/commander-rb/commander"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.4.5"
  s.summary = "The complete solution for Ruby command-line executables"

  s.installed_by_version = "2.4.5" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<highline>, ["~> 1.7.2"])
      s.add_development_dependency(%q<rspec>, ["~> 3.2"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<simplecov>, [">= 0"])
      s.add_development_dependency(%q<rubocop>, ["~> 0.29.1"])
    else
      s.add_dependency(%q<highline>, ["~> 1.7.2"])
      s.add_dependency(%q<rspec>, ["~> 3.2"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<simplecov>, [">= 0"])
      s.add_dependency(%q<rubocop>, ["~> 0.29.1"])
    end
  else
    s.add_dependency(%q<highline>, ["~> 1.7.2"])
    s.add_dependency(%q<rspec>, ["~> 3.2"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<simplecov>, [">= 0"])
    s.add_dependency(%q<rubocop>, ["~> 0.29.1"])
  end
end
