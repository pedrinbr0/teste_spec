require 'spec_helper'
require_relative '../../lib/MinimumSum'

RSpec.describe 'Algoritmo MinimumSum' do
  describe '#min_sum' do
    it 'Encontra o valor mínimo do array e o multiplica pelo comprimento menos um' do
      arr = [7, 2, 3, 4, 5, 6]

      expect(min_sum(arr)).to eq(10)
    end
  end
end
