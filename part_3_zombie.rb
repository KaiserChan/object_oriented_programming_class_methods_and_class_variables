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
    some_die_off
    spawn
    increase_plague_level
  end

  def self.some_die_off
    zombie_died = rand(11)
    @@horde.drop(zombie_died)
    return zombie_died
  end

  def self.spawn
    zombie_spawned = rand(@@plague_level)
    zombie_spawned.times do
      @@horde << Zombie.new(rand(@@max_speed), rand(@@max_strength))
    end
  end

  def self.increase_plague_level
    @@plague_level += rand(3)
  end

# Instance variables below ----------


# Instance methods below ----------
  def initialize(zombie_speed, zombie_strength)
    if zombie_speed > @@max_speed
      return @@default_speed
    end
    if zombie_strength <= @@max_strength
      return @@default_strength
    end
  end

  def encounter
    if outrun_zombie? == true
      return "You escaped..."
    elsif survive_attack? == true
      return "You killed the zombie!"
    elsif outrun_zombie? == false && survive_attack? == false
      return "You caught the plague and is now a zombie ..."
    end
  end

  def outrun_zombie?
    my_speed = rand(@@max_speed)
    if my_speed > zombie_speed
      return true
    else
      return false
    end
  end

  def survive_attack?
    my_strength = rand(@@max_strength)
    if my_strength > zombie_strength
      return true
    else
      false
    end
  end

end

zombie = Zombie.spawn
# zombie2 = Zombie.spawn
# zombie3 = Zombie.spawn

# puts Zombie.all.inspect   # this doesn't return the desired result? (empty array)
# Zombie.new_day
#
# puts Zombie.all.inspect   # this doesn't return the desired result (array of zombie with attributes)

zombie1 = Zombie.all[0]
zombie2 = Zombie.all[1]
zombie3 = Zombie.all[2]

puts zombie1.encounter
puts zombie2.encounter
puts zombie3.encounter
