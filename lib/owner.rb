class Owner

  attr_accessor :dogs, :cats
  attr_reader :species, :name

  @@all = []

  def initialize(name, species = "human")
    @name = name
    @species = "human"
    @@all << self
    @cats = []
    @dogs = []
  end

  def say_species
     "I am a #{@species}."
  end

  def buy_cat(cat_name)
    cat_name = Cat.new(cat_name)
    @cats << cat_name unless @cats.include?(cat_name)
    cat_name.owner = self if cat_name.owner == nil
  end

  def buy_dog(dog_name)
    dog_name = Dog.new(dog_name)
    @dogs << dog_name unless @dogs.include?(dog_name)
    dog_name.owner = self if dog_name.owner == nil
  end

  def walk_dogs
    @dogs.map{|dog| dog.mood = "happy"}
    @dogs
  end

  def feed_cats
    self.cats.map{|cat| cat.mood = "happy"}
  end

  def self.all
    @@all
  end

  def self.count
    @@all.count
  end

  def self.reset_all
    @@all.clear
  end

end
