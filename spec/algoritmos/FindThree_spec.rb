require 'spec_helper'
require_relative '../../lib/FindThree'

RSpec.describe 'Algoritmo FindThree' do
  describe '#find_three' do
    it 'Encontra os três maiores valores únicos não repitidos' do
      arr = [12, 13, 1, 10, 34, 11, 34]

      resultado_esperado = ["34", "13", "12"]

      resultado = find_three_largest(arr)

      expect(resultado).to eq(resultado_esperado)
    end
  end
end
