# frozen_string_literal: true

require_relative 'source/function'
require_relative 'source/another_algorithm'

puts 'Simple algorithm with sorting'
first_algorithm = Function.new
first_algorithm.output

puts 'Algorithm with adding gaps to the hash and finding maximum'
second_algorithm = AnotherAlgorithm.new
second_algorithm.output
