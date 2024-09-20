require 'spec_helper'
require_relative '../../lib/MinimumProduct'

RSpec.describe 'Algoritmo MinimumProduct' do
  describe '#min_product_subset' do
    it 'Retorna o produto mínimo de um array' do
      arr = [-1, -1, -2, 4, 3]

      expect(min_product_subset(arr)).to eq(-24)
    end
  end
end
