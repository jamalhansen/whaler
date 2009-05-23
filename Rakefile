require 'rubygems'
require 'rake'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "whaler"
    gem.summary = %Q{an example of generating letters with Prawn}
    gem.email = "jamal.hansen@gmail.com"
    gem.homepage = "http://github.com/rubyyot/whaler"
    gem.authors = ["Jamal Hansen"]
    gem.add_dependency('faker', '>= 0.3.1')
    gem.add_dependency('prawn', '>= 0.4.1')
    gem.add_dependency('prawn-layout', '>= 0.1.0')

    # gem is a Gem::Specification... see http://www.rubygems.org/read/chapter/20 for additional settings
  end
rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: sudo gem install jeweler"
end

require 'rake/testtask'
Rake::TestTask.new(:test) do |test|
  test.libs << 'lib' << 'test'
  test.pattern = 'test/**/*_test.rb'
  test.verbose = true
end

begin
  require 'rcov/rcovtask'
  Rcov::RcovTask.new do |test|
    test.libs << 'test'
    test.pattern = 'test/**/*_test.rb'
    test.verbose = true
  end
rescue LoadError
  task :rcov do
    abort "RCov is not available. In order to run rcov, you must: sudo gem install spicycode-rcov"
  end
end

begin
  require 'cucumber/rake/task'
  Cucumber::Rake::Task.new(:features)
rescue LoadError
  task :features do
    abort "Cucumber is not available. In order to run features, you must: sudo gem install cucumber"
  end
end

task :default => :test

require 'rake/rdoctask'
Rake::RDocTask.new do |rdoc|
  if File.exist?('VERSION.yml')
    config = YAML.load(File.read('VERSION.yml'))
    version = "#{config[:major]}.#{config[:minor]}.#{config[:patch]}"
  else
    version = ""
  end

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "whaler #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end

namespace :letter do
  desc 'generate sample letters to ~/WhalerOutput, use count:<count> to specify the number of letters'
  task :generate do
    $LOAD_PATH.unshift(File.join(File.dirname(__FILE__), 'lib'))
    require 'whaler'
    count = ENV['count'].to_i || 3
    customers = Whaler::CustomerBuilder.with_limit(count).get
    storage_service = Whaler::StorageService.new
    Whaler::LetterGenerator.generate(customers, storage_service)
  end
end



