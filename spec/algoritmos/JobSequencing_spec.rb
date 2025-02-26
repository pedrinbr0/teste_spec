require 'spec_helper'
require_relative '../../lib/JobSequencing'

RSpec.describe 'Algoritmo JobSequencing' do
  describe '#job_sequencing' do
    it 'retorna a sequência de trabalhos com lucro máximo' do
      arr = [
        ['a', 2, 100],
        ['b', 1, 19],
        ['c', 2, 27],
        ['d', 1, 25],
        ['e', 3, 15]
      ]

      t = 3
      resultado_esperado = ['c', 'a', 'e']

      expect { job_sequencing(arr, t) }.to output("#{resultado_esperado.join("\n")}\n").to_stdout
    end
  end
end
