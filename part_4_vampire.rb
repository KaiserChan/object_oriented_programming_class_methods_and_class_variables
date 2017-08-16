class Vampire

# Class variables below ----------
  @@coven = []
  @@sunrise = true
  @@sunet = false
  @@in_coffin = false
  @@drank_blood_today = false

# Class methods below ----------
  def self.create(name, age)
    who_vampire = Vampire.new(name, age)
    @@cover << num_vampire
    return who_vampire
  end


  def self.leave_coffin
    if @@sunrise == false
      @@sunset = true
      @@in_coffin = true
      @@drank_blood_today = true
    end
  end

# Instance variables below ----------


# Instance methods below ----------
  def initialize(name, age)
    @name = name
    @age = age


end
