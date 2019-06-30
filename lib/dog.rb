class Dog

  attr_accessor :mood
  attr_reader :name, :owner

  @@all = []

  def initialize(name, mood = "nervous")
    @name = name
    @mood = "nervous"
    @@all << self
  end

  def owner=(owner) # Belongs to owner
    owner.buy_dog(self) unless owner.dogs.include?(self)
  end

  def self.all
    @@all
  end

  def self.clear
    @@all.clear
  end
end
