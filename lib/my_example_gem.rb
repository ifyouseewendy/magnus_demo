# frozen_string_literal: true

require_relative 'my_example_gem/version'

module MyExampleGem
  class Error < StandardError; end
end

begin
  RUBY_VERSION =~ /(\d+\.\d+)/
  require "my_example_gem_ext/#{Regexp.last_match(1)}/shopify_vm"
rescue LoadError
  begin
    require 'my_example_gem.bundle'
  rescue LoadError
    require 'my_example_gem_ext/my_example_gem'
  end
end
