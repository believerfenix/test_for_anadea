# frozen_string_literal: true

require_relative '../source/another_algorithm'

RSpec.describe AnotherAlgorithm do
  subject(:another_algorithm) { described_class.new }

  describe 'testing given examples' do
    test_data = [[[2, 10], [3, 4], [6, 9]],
                 [[1, 3], [2, 4], [2, 5], [3, 4], [3, 6], [4, 5], [5, 6]],
                 [[1, 8], [2, 7], [3, 5], [5, 7], [6, 7], [6, 8], [7, 8]],
                 [[1, 3], [4, 7], [10, 11], [2, 4], [10, 12], [4, 6], [10, 13], [1, 4], [9, 12], [2, 5], [9, 11],
                  [4, 6], [8, 11], [5, 7]]]

    expect_result = [2, 4, 5, 6]

    test_data.each_with_index do |data, index|
      context "given array: #{data}" do
        it 'receives result:' do
          allow(another_algorithm).to receive_message_chain(:example_array).and_return([test_data])
          expect(another_algorithm.function(data)).to eq(expect_result[index])
        end
      end
    end
  end
end
