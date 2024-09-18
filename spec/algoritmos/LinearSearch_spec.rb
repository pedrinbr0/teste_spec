require 'spec_helper'
require_relative '../../lib/LinearSearch'

RSpec.describe 'Algoritmo LinearSearch' do
  describe '#linear_search' do
    it 'Encontra o elemento no array' do
      arr = [2, 3, 4, 10, 40]
      x = 10

      expect(linear_search(arr, x)).to eq(3)
    end
  end
end
