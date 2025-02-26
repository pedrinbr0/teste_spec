require 'spec_helper'
require_relative '../../lib/QuickSort'

RSpec.describe 'Algoritmo QuickSort' do
  describe '#quick_sort' do
    it 'ordena um array de números inteiros' do
      arr = [10, 7, 8, 9, 1, 5]
      expect(quick_sort(arr)).to eq([1, 5, 7, 8, 9, 10])
    end

    it 'retorna um array vazio quando o input é vazio' do
      arr = []
      expect(quick_sort(arr)).to eq([])
    end

    it 'retorna o mesmo array se tiver apenas um elemento' do
      arr = [3]
      expect(quick_sort(arr)).to eq([3])
    end

    it 'ordena corretamente arrays com números negativos e positivos' do
      arr = [3, -1, 5, -2, 8, -4]
      expect(quick_sort(arr)).to eq([-4, -2, -1, 3, 5, 8])
    end

    it 'não altera um array que já está ordenado' do
      arr = [1, 2, 3, 4, 5]
      expect(quick_sort(arr)).to eq([1, 2, 3, 4, 5])
    end

    it 'ordena corretamente um array com números duplicados' do
      arr = [4, 2, 2, 3, 4, 5, 5, 1]
      expect(quick_sort(arr)).to eq([1, 2, 2, 3, 4, 4, 5, 5])
    end
  end
end
