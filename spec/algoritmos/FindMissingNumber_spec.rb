require 'spec_helper'
require_relative '../../lib/FindMissingNumber'

RSpec.describe 'Algoritmo FindMissingNumber' do
  describe '#find_missing_number' do
    it 'encontra o número faltante no array' do
      arr = [1, 2, 3, 4, 6, 7, 8]
      resultado_esperado = 5

      resultado = find_missing_number(arr)

      expect(resultado).to eq(resultado_esperado)
    end
  end
end
