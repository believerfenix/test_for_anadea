# frozen_string_literal: true

require_relative '../source/function'

RSpec.describe Function do
  subject(:function) { described_class.new }

  describe 'testing given examples' do
    test_data = [[[2, 10], [3, 4], [6, 9]],
                 [[1, 3], [2, 4], [2, 5], [3, 4], [3, 6], [4, 5], [5, 6]],
                 [[1, 8], [2, 7], [3, 5], [5, 7], [6, 7], [6, 8], [7, 8]]]

    expect_result = [2, 4, 5]

    test_data.each_with_index do |data, index|
      context "given array: #{data}" do
        it 'receives result:' do
          expect(function.function(data)).to eq(expect_result[index])
        end
      end
    end
  end
end
