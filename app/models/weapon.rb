class Weapon
  attr_reader :name, :level

  def initialize(name, description, power_base, power_step, level = 1)
    @name = name
    @description = description
    @power_base = power_base
    @power_step = power_step
    @level = level
  end

  def title
    "#{@name}##{@level}"
  end
end
