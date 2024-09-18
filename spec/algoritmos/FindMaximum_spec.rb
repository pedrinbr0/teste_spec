require 'spec_helper'
require_relative '../../lib/FindMaximum'

RSpec.describe 'Algoritmo FindMaximum' do
  describe '#find_maximum' do
    it 'Remove o número do topo de cada stack até que a soma de todas seja a mesma' do
      stack1 = [3, 2, 1, 1, 1]
      stack2 = [4, 3, 2]
      stack3 = [1, 1, 4, 1]
      n1 = stack1.length
      n2 = stack2.length
      n3 = stack3.length

      resultado_esperado = 5

      resultado = max_sum(stack1, stack2, stack3, n1, n2, n3)

      expect(resultado).to eq(resultado_esperado)
    end
  end
end
