require 'rspec'
require 'questions'
require 'byebug'

describe Array do
  describe '#my_uniq' do
    it 'returns an array with unique elements in the original order' do
      input_array = [1, 2, 1, 3, 3]
      expected_result = [1, 2, 3]

      result = input_array.my_uniq

      expect(result).to eq(expected_result)
    end

    it 'returns an empty array when called on an empty array' do
      input_array = []
      expected_result = []

      result = input_array.my_uniq

      expect(result).to eq(expected_result)
    end

    it 'returns the same array if there are no duplicates' do
      input_array = [1, 2, 3]
      expected_result = [1, 2, 3]

      result = input_array.my_uniq

      expect(result).to eq(expected_result)
    end
  end
end

describe Array do
    describe '#two_sum' do
      it 'returns an empty array when no pairs sum to zero' do
        input_array = [1, 2, 3, 4, 5]
        expect(input_array.two_sum).to eq([])
      end
  
      it 'returns an array of pairs with indices that sum to zero' do
        input_array = [-1, 0, 2, -2, 1]
        expect(input_array.two_sum).to eq([[0, 4], [2, 3]])
      end
  
      it 'handles multiple pairs with the same second element' do
        input_array = [-2, 2, -1, 1, 0]
        expect(input_array.two_sum).to eq([[0, 1], [2, 3]])
      end

    end
  end
  
describe Array do
describe '#my_transpose' do
  it 'transposes a 3x3 matrix' do
    original_matrix = [
      [0, 1, 2],
      [3, 4, 5],
      [6, 7, 8]
    ]
    expected_transpose = [
      [0, 3, 6],
      [1, 4, 7],
      [2, 5, 8]
    ]

    result = original_matrix.my_transpose

    expect(result).to eq(expected_transpose)
  end

  it 'transposes a 4x4 matrix' do
    original_matrix = [
      [0, 1, 2, 3],
      [4, 5, 6, 7],
      [8, 9, 10, 11],
      [12, 13, 14, 15]
    ]
    expected_transpose = [
      [0, 4, 8, 12],
      [1, 5, 9, 13],
      [2, 6, 10, 14],
      [3, 7, 11, 15]
    ]

    result = original_matrix.my_transpose

    expect(result).to eq(expected_transpose)
  end

  it 'transposes a 2x2 matrix' do
    original_matrix = [
      [0, 1],
      [2, 3]
    ]
    expected_transpose = [
      [0, 2],
      [1, 3]
    ]

    result = original_matrix.my_transpose

    expect(result).to eq(expected_transpose)
  end

end
end

describe Array do

describe '#max_profit' do
  it 'returns an empty array when there are no profitable opportunities' do
    prices = [5, 4, 3, 2, 1]
    expect(max_profit(prices)).to eq([])
  end

  it 'returns the correct pair of days for a single profitable opportunity' do
    prices = [7, 1, 5, 3, 6, 4]
    expect(max_profit(prices)).to eq([1, 4])
  end

  it 'returns the correct pair of days for multiple profitable opportunities' do
    prices = [7, 1, 5, 3, 6, 4, 9, 8]
    expect(max_profit(prices)).to eq([1, 4])
  end

  it 'returns the earliest profitable pair of days when there are multiple opportunities' do
    prices = [7, 1, 5, 3, 6, 4, 5, 8]
    expect(max_profit(prices)).to eq([1, 7])
  end

  it 'returns the correct pair of days for a single-day price change' do
    prices = [1, 2]
    expect(max_profit(prices)).to eq([0, 1])
  end


end
end