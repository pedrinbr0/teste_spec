require 'spec_helper'
require_relative '../../lib/ReorderIndex'

def reorder_index(arr, index)
  temp = Array.new(arr.size)

  index.each_with_index do |new_index, i|
    temp[new_index] = arr[i]
  end

  arr.each_with_index do |_, i|
    arr[i] = temp[i]
    index[i] = i
  end

  [arr, index]
end

RSpec.describe 'ReorderIndex' do
  it 'reorganiza corretamente o array e atualiza o índice' do
    arr = [10, 11, 12]
    index = [1, 0, 2]

    arr, index = reorder_index(arr, index)

    expect(arr).to eq([11, 10, 12])
    expect(index).to eq([0, 1, 2])
  end
end
