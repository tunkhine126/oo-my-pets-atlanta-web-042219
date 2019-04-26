class Owner

  attr_accessor :name, :pets
  attr_reader :species

  Owners = []

  def self.all
    Owners
  end

  def self.count
    Owners.size
  end

  def self.reset_all
    Owners.clear
  end

  def initialize(species)
    @species = species
    Owners << self
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def say_species
    "I am a #{species}."
  end

  def pets
    @pets # is initialized with a pets attribute as a hash with 3 keys
  end

  def buy_fish(name)
    pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name)
    pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
    pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end

  def sell_pets
  pets.select do |species, animals|
    animals.each do |animal|
      animal.mood = "nervous"
    end
  end
  pets.clear
end

  def list_pets
  "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
  end

end
