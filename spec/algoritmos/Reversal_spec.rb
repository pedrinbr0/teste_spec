require 'spec_helper'
require_relative '../../lib/Reversal'

RSpec.describe 'Algoritmo Reversal' do
  describe '#right_rotate' do
    it 'Rotaciona o array para direita de acordo com k' do
      arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
      n = arr.length
      k = 3

      right_rotate(arr, k, n)
      expect(arr).to eq([8, 9, 10, 1, 2, 3, 4, 5, 6, 7])
    end
  end
end
