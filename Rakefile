# frozen_string_literal: true

require 'bundler/gem_tasks'
require 'rake/testtask'

Rake::TestTask.new(:test) do |t|
  t.libs << 'test'
  t.libs << 'lib'
  t.test_files = FileList['test/**/test_*.rb']
end

require 'rubocop/rake_task'

RuboCop::RakeTask.new

task default: %i[compile test rubocop]

require 'rake/extensiontask'

# CROSS_PLATFORMS = %w[x86_64-linux arm64-darwin x86_64-darwin].freeze
spec = Bundler.load_gemspec('my_example_gem.gemspec')

Rake::ExtensionTask.new('my_example_gem', spec) do |ext|
  ext.source_pattern = '*.{rs,toml}'
  ext.lib_dir = 'lib/my_example_gem_ext'
  ext.ext_dir = 'ext/my_example_gem'

  # ext.cross_compile = true
  # ext.cross_platform = CROSS_PLATFORMS
end
