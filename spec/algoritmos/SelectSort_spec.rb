require 'spec_helper'
require_relative '../../lib/SelectSort'

RSpec.describe 'SelectSort' do
  it 'ordena corretamente o array' do
    arr = [64, 25, 12, 22, 11]

    result = select_sort(arr)

    expect(result).to eq([11, 12, 22, 25, 64])
  end
end
