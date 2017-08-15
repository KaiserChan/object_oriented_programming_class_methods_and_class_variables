class Zombie

# Class variables below ----------
  @@horde = []
  @@plague_level = 10
  @@max_speed = 5
  @@max_strength = 8
  @@default_speed = 1
  @@default_strength = 3

# Class methods below ----------
  def self.all
    return @@horde
  end

  def self.new_day

  end

  def self.some_die_off

  end

  def self.spawn
    zombie_spawned =

  end

  def self.increase_plague_level

  end

# Instance variables below ----------


# Instance methods below ----------
  def initialize(speed, strength)
    if speed > @@max_speed
      return @@default_speed
    end
    if strength <= @@max_strength
      return @@default_strength
    end
  end

  def encounter

  end

  def outrun_zombie?

  end

  def survive_attack?

  end

end

zombie1 = Zombie.new
zombie2 = Zombie.new
zombie3 = Zombie.new
