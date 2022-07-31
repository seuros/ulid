require 'bundler/gem_tasks'
require 'rake/testtask'
require 'benchmark'
require 'ulid'

Rake::TestTask.new do |t|
  t.libs += %w[test lib]
  t.test_files = FileList['test/**/*_test.rb']
end

desc 'Benchmark base32 ULID generation (default 100,000 iterations)'
task :benchmark, [:iterations] do |_t, args|
  iterations = (args[:iterations] || 100_000).to_i
  Benchmark.bm do |b|
    b.report("#{iterations} iterations") { iterations.times { ULID.generate } }
  end
end

task :default => :test