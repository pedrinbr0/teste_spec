require 'spec_helper'
require_relative '../../lib/Count'

RSpec.describe 'Algoritmo Count' do
  describe '#count_characters' do
    it 'conta a quantidade de caracteres maiúsculos, minúsculos, numéricos e especiais' do
      str = "#GeeKs01fOr@gEEks07"

      resultado_esperado = { letras_maiusculas: 5, letras_minusculas: 8, numeros: 4, caracteres_especiais: 2 }

      resultado = count_characters(str)

      expect(resultado).to eq(resultado_esperado)
    end
  end
end
