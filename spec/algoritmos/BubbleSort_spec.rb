require 'spec_helper'
require_relative '../../lib/BubbleSort'

RSpec.describe 'Algoritmo de Ordenação' do
  describe '#bubble_sort' do
    it 'ordena um array de forma crescente' do
      arr = [64, 34, 25, 12, 22, 11, 90]
      arr_esperado = [11, 12, 22, 25, 34, 64, 90]

      bubble_sort(arr)

      expect(arr).to eq(arr_esperado)
    end
  end
end
