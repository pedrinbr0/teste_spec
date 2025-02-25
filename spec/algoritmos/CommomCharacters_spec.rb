require 'spec_helper'
require_relative '../../lib/CommomCharacters'

RSpec.describe 'Algoritmo CommonCharacters' do
  describe '#common_characters' do
    it 'encontra os caracteres comuns em todas as strings' do
      # DADO
      strings = ["geeksforgeeks", "gemkstones", "acknowledges", "aguelikes"]
      n = strings.size
      resultado_esperado = "egks"  # Caracteres comuns que aparecem em todas as strings: g, e, k, s

      # QUANDO
      resultado = common_characters(strings, n)

      # ENTÃO
      expect(resultado).to eq(resultado_esperado)
    end
  end
end
