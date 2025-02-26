require 'spec_helper'
require_relative '../../lib/PositiveNegative' # Ajuste o caminho conforme necessário

RSpec.describe 'Algoritmo PositiveNegative' do
  def valid_alternation?(arr)
    arr.each_slice(2).all? { |a, b| a >= 0 && (b.nil? || b <= 0) }
  end

  it 'alterna corretamente os números positivos e negativos' do
    arr = [1, -3, 5, 6, -3, 6, 7, -4, 9, 10]
    expected_elements = arr.sort # Garantir que os elementos são os mesmos

    positive_negative(arr, arr.size)

    expect(valid_alternation?(arr)).to be true
    expect(arr.sort).to eq(expected_elements) # Confirma que os elementos não mudaram
  end

  it 'funciona corretamente quando há mais negativos do que positivos' do
    arr = [-1, -2, -3, 4, 5]
    expected_elements = arr.sort

    positive_negative(arr, arr.size)

    expect(valid_alternation?(arr)).to be true
    expect(arr.sort).to eq(expected_elements)
  end

  it 'funciona corretamente quando já está alternado' do
    arr = [1, -2, 3, -4, 5, -6]

    positive_negative(arr, arr.size)

    expect(valid_alternation?(arr)).to be true
  end

  it 'funciona corretamente quando todos os negativos estão no início' do
    arr = [-3, -2, -1, 4, 5, 6]
    expected_elements = arr.sort

    positive_negative(arr, arr.size)

    expect(valid_alternation?(arr)).to be true
    expect(arr.sort).to eq(expected_elements)
  end

  it 'funciona corretamente quando todos os positivos estão no início' do
    arr = [3, 2, 1, -4, -5, -6]
    expected_elements = arr.sort

    positive_negative(arr, arr.size)

    expect(valid_alternation?(arr)).to be true
    expect(arr.sort).to eq(expected_elements)
  end

  it 'funciona corretamente quando há mais positivos do que negativos' do
    arr = [1, 2, 3, -4, -5]
    expected_elements = arr.sort

    positive_negative(arr, arr.size)

    expect(valid_alternation?(arr)).to be true
    expect(arr.sort).to eq(expected_elements)
  end
end
