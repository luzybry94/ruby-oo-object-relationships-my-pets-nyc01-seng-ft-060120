require "pry"


class Owner

  attr_reader :name, :species

  @@all = []
    
    def initialize(name, species = "human")
      @name = name
      @species = species
      @@all << self
    end


    def say_species
      "I am a #{@species}."
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

    def cats
      Cat.all.select do |cat| 
        cat.owner == self
      end
    end

    def dogs
      Dog.all.select do |dog| 
        dog.owner == self
      end
    end

  end

