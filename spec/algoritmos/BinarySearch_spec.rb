require 'spec_helper'
require_relative '../../lib/BinarySearch'

RSpec.describe 'Algoritmo BinarySearch' do
  describe '#binary_search' do
    it 'encontra o elemento requisitado no array' do
      arr = [2, 3, 5, 10, 40]
      x = 10
      resultado_esperado = 3

      resultado = binary_search(arr, x)

      expect(resultado).to eq(resultado_esperado)
    end
  end
end
