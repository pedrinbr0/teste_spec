require 'spec_helper'
require_relative '../../lib/MaximumSum'

RSpec.describe 'Algoritmo MaximumSum' do
  describe '#maximum_sum' do
    it 'Maximiza a soma do array após realizar k negações nos menores valores' do
      arr = [-2, 0, 5, -1, 2]
      k = 4

      expect(maximum_sum(arr, k)).to eq(10)
    end
  end
end
