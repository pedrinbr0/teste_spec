require 'spec_helper'
require_relative '../../lib/FractionalKnapsack'

RSpec.describe 'Algoritmo FractionalKnapsack' do
  describe '#fractional_knapsack' do
    it 'calcula o lucro máximo considerando a capacidade da mochila' do
      arr = [['Pera', 60, 10], ['Abacaxi', 100, 20], ['Melancia', 120, 30]]
      w = 50
      resultado_esperado = 240.0  # A soma do valor total considerando o peso limite

      resultado = fractional_knapsack(arr, w)

      expect(resultado).to eq(resultado_esperado)
    end
  end
end
