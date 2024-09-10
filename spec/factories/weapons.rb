class Weapon
  attr_accessor :name, :description, :power_base, :power_step, :level

  def initialize(name, description, power_base, power_step, level = 1)
    @name = name
    @description = description
    @power_base = power_base
    @power_step = power_step
    @level = level
  end

  def current_power
    @power_base + (@power_step * (@level - 1))
  end

  def title
    "#{@name}##{@level}"
  end
end
