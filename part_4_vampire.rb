class Vampire

# Class variables below ----------
  @@coven = []
  @@sunrise = true
  @@sunet = false
  @@in_coffin = false

# Class methods below ----------
  def self.create(name, age)
    who_vampire = Vampire.new(name, age)
    @@coven << who_vampire
    return who_vampire
  end

  def self.sunrise
    unlucky_vamp = @@coven.sample
    if @@in_coffin == true || unlucky_vamp.drink_blood == false
      @@coven.delete[unlucky_vamp]
    end
  end

  def self.sunset
    @@in_coffin = false
    lucky_vamp = @@coven.sample
    lucky_vamp.sunset
    lucky_vamp
  end

  def self.go_home
    @@in_coffin = true
  end

# Instance variables below ----------
  def initialize(name, age)
    @name = name
    @age = age
    @drank_blood_today = false
  end

# Instance methods below ----------
  def drink_blood
    @drank_blood_today = true
    "#{@name} drank blood today yumyumyum"
  end

  def sunset
    @drank_blood_today = false
  end

end

vampire1 = Vampire.create("deadly_dodo", 300)

puts vampire1.drink_blood
# a = Vampire.sunset1
# puts a.inspect

puts vampire1.sunset
puts Vampire.sunset.inspect
puts Vampire.go_home.inspect
