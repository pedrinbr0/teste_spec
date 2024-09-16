require 'spec_helper'
require_relative '../../lib/CountingSort'

RSpec.describe 'Algoritmo CountingSort' do
  describe '#count_sort' do
    it 'Ordena o array de forma eficiente com números inteiros e não negativos' do
      arr = [4, 3, 12, 1, 5, 5, 3, 9]
      arr_esperado = [1, 3, 3, 4, 5, 5, 9, 12]

      resultado = count_sort(arr)

      expect(resultado).to eq(arr_esperado)
    end
  end
end
