require 'spec_helper'
require_relative '../../lib/FibonacciSearch'

RSpec.describe 'Algoritmo FibonacciSearch' do
  describe '#FibonacciSearch' do
    it 'encontra o elemento requisitado no array' do
      # DADO
      arr = [10, 22, 35, 40, 45, 50, 80, 82, 85, 90, 100, 235]
      x = 235
      resultado_esperado = 11  # Índice de 235

      # QUANDO
      resultado = FibonacciSearch(arr, x, arr.length)

      # ENTÃO
      expect(resultado).to eq(resultado_esperado)
    end

    it 'encontra o primeiro elemento do array' do
      # DADO
      arr = [10, 22, 35, 40, 45, 50, 80, 82, 85, 90, 100, 235]
      x = 10  # Primeiro valor do array
      resultado_esperado = 0  # Índice de 10

      # QUANDO
      resultado = FibonacciSearch(arr, x, arr.length)

      # ENTÃO
      expect(resultado).to eq(resultado_esperado)
    end

    it 'encontra o último elemento do array' do
      # DADO
      arr = [10, 22, 35, 40, 45, 50, 80, 82, 85, 90, 100, 235]
      x = 235  # Último valor do array
      resultado_esperado = 11  # Índice de 235

      # QUANDO
      resultado = FibonacciSearch(arr, x, arr.length)

      # ENTÃO
      expect(resultado).to eq(resultado_esperado)
    end
  end
end
