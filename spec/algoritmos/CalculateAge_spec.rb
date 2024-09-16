require 'spec_helper'
require_relative '../../lib/CalculateAge'

RSpec.describe 'Algoritmo CalculateAge' do
  describe '#calculate_age' do
   it 'calcula a idade do usuario' do
     data_atual = 7
     mês_atual = 12
     ano_atual = 2017
     data_de_nascimento = 16
     mês_nascimento = 12
     ano_nascimento = 2009

     resultado_esperado = { anos: 7, meses: 11, dias: 22 }

     resultado = find_age(data_atual, mês_atual, ano_atual, data_de_nascimento, mês_nascimento, ano_nascimento)

     expect(resultado).to eq(resultado_esperado)
   end
  end
end
