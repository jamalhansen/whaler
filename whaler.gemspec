# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{whaler}
  s.version = "0.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Jamal Hansen"]
  s.date = %q{2009-05-09}
  s.email = %q{jamal.hansen@gmail.com}
  s.extra_rdoc_files = [
    "LICENSE",
    "README.rdoc"
  ]
  s.files = [
    "LICENSE",
    "README.rdoc",
    "Rakefile",
    "VERSION.yml",
    "lib/whaler.rb",
    "test/data_source_test.rb",
    "test/test_helper.rb"
  ]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/rubyyot/whaler}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{an example of generating letters with Prawn}
  s.test_files = [
    "test/data_source_test.rb",
    "test/test_helper.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<faker>, [">= 0.3.1"])
      s.add_runtime_dependency(%q<prawn>, [">= 0.4.1"])
      s.add_runtime_dependency(%q<prawn-layout>, [">= 0.1.0"])
    else
      s.add_dependency(%q<faker>, [">= 0.3.1"])
      s.add_dependency(%q<prawn>, [">= 0.4.1"])
      s.add_dependency(%q<prawn-layout>, [">= 0.1.0"])
    end
  else
    s.add_dependency(%q<faker>, [">= 0.3.1"])
    s.add_dependency(%q<prawn>, [">= 0.4.1"])
    s.add_dependency(%q<prawn-layout>, [">= 0.1.0"])
  end
end
