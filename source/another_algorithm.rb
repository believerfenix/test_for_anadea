# frozen_string_literal: true

class AnotherAlgorithm
  def initialize
    @example_array = [[[2, 10], [3, 4], [6, 9]],
                      [[1, 3], [2, 4], [2, 5], [3, 4], [3, 6], [4, 5], [5, 6]],
                      [[1, 8], [2, 7], [3, 5], [5, 7], [6, 7], [6, 8], [7, 8]],
                      [[1, 3], [4, 7], [10, 11], [2, 4], [10, 12], [4, 6], [10, 13], [1, 4], [9, 12], [2, 5], [9, 11],
                       [4, 6], [8, 11], [5, 7]]]
  end

  def function(array)
    new_array = {}

    (0..array.size - 1).each do |index|
      while array[index][0] < array[index][1]
        new_array[array[index][0]].nil? ? new_array[array[index][0]] = 1 : new_array[array[index][0]] += 1
        array[index][0] += 1
      end
    end
    new_array.values.max
  end

  def output
    @example_array.each do |array|
      puts function(array).to_s
    end
  end
end
