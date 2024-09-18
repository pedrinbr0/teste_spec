require 'spec_helper'
require_relative '../../lib/FindFuture'

RSpec.describe 'Algoritmo FindFuture' do
  describe '#find_future' do
    it 'Encontra a data futura mais próxima' do
      arr = ["22/4/1233", "1/3/633", "23/5/56645", "4/12/233"]
      q = ["23/3/4345", "4/4/34234234", "12/3/2"]

      resultado_esperado = ["23/5/56645", "-1", "4/12/233"]

      resultado = q.map { |query| next_closest_date(arr, query) }

      expect(resultado).to eq(resultado_esperado)
    end
  end
end
