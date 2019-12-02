# -*- encoding: utf-8 -*-
# stub: simple-spreadsheet 0.5.0 ruby lib

Gem::Specification.new do |s|
  s.name = "simple-spreadsheet".freeze
  s.version = "0.5.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Andrea Mostosi".freeze]
  s.date = "2016-09-19"
  s.description = "Simple spreadsheet reader for common formats: Excel (.xls, .xlsx), Open-office (.ods) and some CSV (standard, excel, tab separated). Future versions: writing and more formats.".freeze
  s.email = ["andrea.mostosi@zenkay.net".freeze]
  s.homepage = "https://github.com/zenkay/simple-spreadsheet".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "2.7.8".freeze
  s.summary = "Read and write most common spreadsheet format".freeze

  s.installed_by_version = "2.7.8" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>.freeze, ["~> 1.10"])
      s.add_development_dependency(%q<rake>.freeze, ["~> 10.1"])
      s.add_development_dependency(%q<rspec>.freeze, ["~> 3.3"])
      s.add_runtime_dependency(%q<roo>.freeze, ["~> 2.4"])
      s.add_runtime_dependency(%q<roo-xls>.freeze, ["~> 1.0"])
    else
      s.add_dependency(%q<bundler>.freeze, ["~> 1.10"])
      s.add_dependency(%q<rake>.freeze, ["~> 10.1"])
      s.add_dependency(%q<rspec>.freeze, ["~> 3.3"])
      s.add_dependency(%q<roo>.freeze, ["~> 2.4"])
      s.add_dependency(%q<roo-xls>.freeze, ["~> 1.0"])
    end
  else
    s.add_dependency(%q<bundler>.freeze, ["~> 1.10"])
    s.add_dependency(%q<rake>.freeze, ["~> 10.1"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.3"])
    s.add_dependency(%q<roo>.freeze, ["~> 2.4"])
    s.add_dependency(%q<roo-xls>.freeze, ["~> 1.0"])
  end
end
