# frozen_string_literal: true

require_relative 'my_example_gem/version'
require_relative 'my_example_gem/my_example_gem'

module MyExampleGem
  class Error < StandardError; end

  # def self.foo
  #   distance([0, 0], [1, 1])
  # end

  def self.bar
    puts 'bar'
  end
end
