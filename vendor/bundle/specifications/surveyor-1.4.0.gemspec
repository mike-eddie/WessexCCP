# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "surveyor"
  s.version = "1.4.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Brian Chamberlain", "Mark Yoon"]
  s.date = "2013-04-25"
  s.email = "yoon@northwestern.edu"
  s.homepage = "http://github.com/NUBIC/surveyor"
  s.post_install_message = "Thanks for installing surveyor! The time has come to run the surveyor generator and migrate your database, even if you are upgrading."
  s.require_paths = ["lib"]
  s.rubygems_version = "2.0.3"
  s.summary = "A rails (gem) plugin to enable surveys in your application"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rails>, ["~> 3.0"])
      s.add_runtime_dependency(%q<haml>, ["< 5.0", ">= 3.1.3"])
      s.add_runtime_dependency(%q<sass>, [">= 0"])
      s.add_runtime_dependency(%q<fastercsv>, ["~> 1.5.4"])
      s.add_runtime_dependency(%q<formtastic>, ["~> 2.1.0"])
      s.add_runtime_dependency(%q<uuidtools>, ["~> 2.1"])
      s.add_runtime_dependency(%q<mustache>, ["= 0.99.4"])
      s.add_runtime_dependency(%q<rabl>, ["~> 0.6.13"])
      s.add_development_dependency(%q<yard>, [">= 0"])
      s.add_development_dependency(%q<rake>, [">= 0.9.2"])
      s.add_development_dependency(%q<rspec-rails>, ["~> 2.9.0"])
      s.add_development_dependency(%q<bundler>, [">= 1.0.21", "~> 1.0"])
      s.add_development_dependency(%q<factory_girl>, ["~> 2.1.2"])
      s.add_development_dependency(%q<sqlite3>, [">= 0"])
      s.add_development_dependency(%q<cucumber-rails>, ["~> 1.1.1"])
      s.add_development_dependency(%q<database_cleaner>, ["~> 0.6.7"])
      s.add_development_dependency(%q<launchy>, ["~> 2.0.5"])
      s.add_development_dependency(%q<capybara>, ["~> 1.1.1"])
      s.add_development_dependency(%q<ci_reporter>, ["= 1.6.6"])
      s.add_development_dependency(%q<json_spec>, ["~> 1.0.3"])
    else
      s.add_dependency(%q<rails>, ["~> 3.0"])
      s.add_dependency(%q<haml>, ["< 5.0", ">= 3.1.3"])
      s.add_dependency(%q<sass>, [">= 0"])
      s.add_dependency(%q<fastercsv>, ["~> 1.5.4"])
      s.add_dependency(%q<formtastic>, ["~> 2.1.0"])
      s.add_dependency(%q<uuidtools>, ["~> 2.1"])
      s.add_dependency(%q<mustache>, ["= 0.99.4"])
      s.add_dependency(%q<rabl>, ["~> 0.6.13"])
      s.add_dependency(%q<yard>, [">= 0"])
      s.add_dependency(%q<rake>, [">= 0.9.2"])
      s.add_dependency(%q<rspec-rails>, ["~> 2.9.0"])
      s.add_dependency(%q<bundler>, [">= 1.0.21", "~> 1.0"])
      s.add_dependency(%q<factory_girl>, ["~> 2.1.2"])
      s.add_dependency(%q<sqlite3>, [">= 0"])
      s.add_dependency(%q<cucumber-rails>, ["~> 1.1.1"])
      s.add_dependency(%q<database_cleaner>, ["~> 0.6.7"])
      s.add_dependency(%q<launchy>, ["~> 2.0.5"])
      s.add_dependency(%q<capybara>, ["~> 1.1.1"])
      s.add_dependency(%q<ci_reporter>, ["= 1.6.6"])
      s.add_dependency(%q<json_spec>, ["~> 1.0.3"])
    end
  else
    s.add_dependency(%q<rails>, ["~> 3.0"])
    s.add_dependency(%q<haml>, ["< 5.0", ">= 3.1.3"])
    s.add_dependency(%q<sass>, [">= 0"])
    s.add_dependency(%q<fastercsv>, ["~> 1.5.4"])
    s.add_dependency(%q<formtastic>, ["~> 2.1.0"])
    s.add_dependency(%q<uuidtools>, ["~> 2.1"])
    s.add_dependency(%q<mustache>, ["= 0.99.4"])
    s.add_dependency(%q<rabl>, ["~> 0.6.13"])
    s.add_dependency(%q<yard>, [">= 0"])
    s.add_dependency(%q<rake>, [">= 0.9.2"])
    s.add_dependency(%q<rspec-rails>, ["~> 2.9.0"])
    s.add_dependency(%q<bundler>, [">= 1.0.21", "~> 1.0"])
    s.add_dependency(%q<factory_girl>, ["~> 2.1.2"])
    s.add_dependency(%q<sqlite3>, [">= 0"])
    s.add_dependency(%q<cucumber-rails>, ["~> 1.1.1"])
    s.add_dependency(%q<database_cleaner>, ["~> 0.6.7"])
    s.add_dependency(%q<launchy>, ["~> 2.0.5"])
    s.add_dependency(%q<capybara>, ["~> 1.1.1"])
    s.add_dependency(%q<ci_reporter>, ["= 1.6.6"])
    s.add_dependency(%q<json_spec>, ["~> 1.0.3"])
  end
end
