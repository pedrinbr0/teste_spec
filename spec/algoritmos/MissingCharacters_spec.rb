require 'spec_helper'
require_relative '../../lib/MissingCharacters'

RSpec.describe 'Algoritmo MissingCharacters' do
  describe '#missing_chars' do
    it 'Encontra letras que não estão na string fornecida' do
      str = "The quick brown fox jumps over the dog"

      expect(missing_chars(str)).to eq('alyz')
    end
  end
end
