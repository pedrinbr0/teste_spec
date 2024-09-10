require 'rails_helper'
require_relative '../../app/models/weapon'

RSpec.describe Weapon do
  describe '#initialize' do
    it 'creates a weapon with the given attributes' do
      weapon = Weapon.new('Sword', 'A sharp blade', 3000, 100)

      expect(weapon.name).to eq('Sword')
      expect(weapon.description).to eq('A sharp blade')
      expect(weapon.power_base).to eq(3000)
      expect(weapon.power_step).to eq(100)
      expect(weapon.level).to eq(1)
    end
  end

  describe '#current_power' do
    it 'calculates the correct power for the default level' do
      weapon = Weapon.new('Sword', 'A sharp blade', 3000, 100)

      expect(weapon.current_power).to eq(3000)
    end

    it 'calculates the correct power for a given level' do
      weapon = Weapon.new('Sword', 'A sharp blade', 3000, 100, 5)

      expect(weapon.current_power).to eq(3400)
    end
  end

  describe '#title' do
    it 'returns the correct title for the weapon' do
      weapon = Weapon.new('Excalibur', 'A legendary sword', 3000, 100, 3)

      expect(weapon.title).to eq('Excalibur#3')
    end
  end
end
