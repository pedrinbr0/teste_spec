require 'spec_helper'
require_relative '../../lib/PaperCut'

RSpec.describe 'Algoritmo PaperCut' do
  describe '#min_squares' do
    it 'calcula corretamente para um retângulo pequeno' do
      expect(min_squares(2, 3)).to eq(3)
    end

    it 'calcula corretamente para um quadrado perfeito' do
      expect(min_squares(4, 4)).to eq(1)
    end

    it 'calcula corretamente para um retângulo maior' do
      expect(min_squares(13, 11)).to eq(6)
    end

    it 'calcula corretamente para um caso limite de 1xN' do
      expect(min_squares(1, 5)).to eq(5)
    end

    it 'calcula corretamente para um caso limite de N x 1' do
      expect(min_squares(7, 1)).to eq(7)
    end
  end
end
