require 'rubygems'
require 'rake'
require 'rake/testtask'
require 'rdoc/task'
require 'rubygems/package_task'

spec = Gem::Specification.new do |s|
  s.name = 'acts_as_money'
  s.version = '0.2.6'
  s.summary = 'A fairly trivial plugin allowing easy serialisation of Money values (from the money gem) as attributes on activerecord objects'
  s.author = ['Jordan Glasner', 'Econsultancy', 'Tim Cowlishaw', 'Ylan Segal', 'Michael Bennett']
  s.email = 'michael@michaelbennett.nyc'
  s.homepage = 'https://github.com/RecruitiFi/acts_as_money'
  s.extra_rdoc_files = %w[README]
  s.rdoc_options = %w[--main README]
  s.files = %w[README] + Dir.glob('{test,tasks,lib/**/*}')
  s.require_paths = ['lib']
  s.add_dependency('money')
  s.add_dependency('activerecord')
end

Gem::PackageTask.new(spec) do |pkg|
  pkg.gem_spec = spec
  file = File.dirname(__FILE__) + "/#{spec.name}.gemspec"
  File.open(file, 'w') { |f| f << spec.to_ruby }
end

desc 'Default: run unit tests.'
task default: :test

desc 'Test the money plugin.'
Rake::TestTask.new(:test) do |t|
  t.libs << 'lib'
  t.pattern = 'test/**/*_test.rb'
  t.verbose = true
end
