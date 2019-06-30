class Cat

  attr_accessor :mood
  attr_reader :name, :owner

  @@all = []

  def initialize(name, mood = "nervous")
    @name = name
    @mood = "nervous"
    @@all << self
  end

  def owner=(owner) #belongs to owner
    @owner = owner
  end

  def self.all
    @@all
  end

  def self.clear
  end

end
