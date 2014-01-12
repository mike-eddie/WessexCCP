# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "amcharts-rails"
  s.version = "2.7.7.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Mike MacDonald"]
  s.date = "2012-09-30"
  s.description = ""
  s.email = ["crazymykl@gmail.com"]
  s.homepage = "https://github.com/crazymykl/amcharts-rails"
  s.require_paths = ["lib"]
  s.rubygems_version = "2.0.3"
  s.summary = "Integrates amCharts javascript charts with rails."

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rails>, ["~> 3.2.8"])
      s.add_development_dependency(%q<sqlite3>, [">= 0"])
    else
      s.add_dependency(%q<rails>, ["~> 3.2.8"])
      s.add_dependency(%q<sqlite3>, [">= 0"])
    end
  else
    s.add_dependency(%q<rails>, ["~> 3.2.8"])
    s.add_dependency(%q<sqlite3>, [">= 0"])
  end
end
