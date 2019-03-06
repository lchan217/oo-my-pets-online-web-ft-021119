require "pry"
class Owner
  attr_accessor :pets, :name
  attr_reader :species 
  @@all = [] 
  
  def initialize(species)
    @species = species 
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self 
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
  
  def say_species
    return "I am a #{species}."
  end 
  def name=(name)
    @name = name 
  end 
  
  def buy_fish(name)
    new_fish = Fish.new(name)
    @pets[:fishes] << new_fish
  end 
  def 
    buy_cat(name)
    new_cat = Cat.new(name)
    @pets[:cats] <<  new_cat  
  end 
  def buy_dog(name)
    new  = Dog.new(name)
    @pets[:dogs] << new
  end 
  
  def walk_dogs 
    @pets[:dogs].each do |dog|
      dog.mood = "happy"
    end 
  end 
  def play_with_cats 
    @pets[:cats].each do |cat|
	    cat.mood = "happy"
    end
  end
  def feed_fish
    @pets[:fishes].each do |fish|
      fish.mood = "happy"
    end 
  end 
  def sell_pets
    @pets.each do |animals, animal|
      animal.each do |a,b|
        binding.pry
      end 
    end 
  end 
  def list_pets 
    return "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end 
end 