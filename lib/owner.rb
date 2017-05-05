require 'pry'
class Owner
  attr_accessor :name, :pets
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @pets = {fishes:[], dogs:[], cats:[]}
  end

  def self.all
    @@all
  end

  def self.count
    @@all.count
  end

  def self.reset_all
    @@all = []
  end

  def species
    @name
  end

  def say_species
   "I am a #{@name}."
  end

  def pets
    @pets
  end

  def buy_fish(fname)
    @pets[:fishes] << Fish.new(fname)
  end

  def buy_cat(cname)
    @pets[:cats] << Cat.new(cname)
  end

  def buy_dog(dname)
    @pets[:dogs] << Dog.new(dname)
  end

  def walk_dogs
    @pets[:dogs].map {|dog| dog.mood = "happy"}
  end

  def play_with_cats
    @pets[:cats].map {|cat| cat.mood = "happy"}
  end

  def feed_fish
    @pets[:fishes].map {|fish| fish.mood = "happy"}
  end

  def sell_pets
    self.pets.each do |var, animal|
      animal.each do |e|
        e.mood = "nervous"
      end
    end
    self.pets.clear
  end

  def list_pets
    "I have #{self.pets[:fishes].count} fish, #{self.pets[:dogs].count} dog(s), and #{self.pets[:cats].count} cat(s)."
    end

end
