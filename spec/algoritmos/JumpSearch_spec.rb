require 'spec_helper'
require_relative '../../lib/JumpSearch'

RSpec.describe 'Algoritmo JumpSearch' do
  describe '#jump_search' do
    let(:arr) { [0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610] }

    it 'encontra um elemento existente no array' do
      expect(jump_search(arr, 55)).to eq(10)
    end

    it 'retorna -1 para um elemento que não está no array' do
      expect(jump_search(arr, 999)).to eq(-1)
    end

    it 'encontra o primeiro elemento do array' do
      expect(jump_search(arr, 0)).to eq(0)
    end

    it 'encontra o último elemento do array' do
      expect(jump_search(arr, 610)).to eq(15)
    end
  end
end
