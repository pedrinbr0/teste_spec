require 'spec_helper'
require_relative '../../lib/GroupWords'

RSpec.describe 'Algoritmo GroupWords' do
  describe '#group_words' do
    it 'agrupa as palavras com as mesmas letras' do
      input = ['may', 'student', 'students', 'dog', 'studentssess', 'god', 'cat', 'act', 'tab', 'bat', 'flow', 'wolf', 'lambs', 'amy', 'yam', 'balms', 'looped', 'poodle']

      resultado_esperado = [
        ['may', 'amy', 'yam'],
        ['student', 'students', 'studentssess'],
        ['dog', 'god'],
        ['cat', 'act'],
        ['tab', 'bat'],
        ['flow', 'wolf'],
        ['lambs', 'balms'],
        ['looped', 'poodle']
      ]

      # Ajuste na comparação da saída, agora usando dict.values para pegar os grupos
      expect { group_words(input) }.to output(
        resultado_esperado.map { |grupo| grupo.join(',') }.join("\n") + "\n"
      ).to_stdout
    end
  end
end
