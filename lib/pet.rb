class Pet
    attr_accessor :name, :age
    attr_reader :species

    @@all = []

    def initialize(name, age, species)
        self.name = name
        self.age = age
        @species = species
    end
    #### NEW ###
    # setting properties
    # new actually means unsaved

    ### CREATE ###
    # initializing an object
    # saving the object
    # returning the object

    def self.create(name, age, species)
        pet = self.new(name, age, species)
        pet.save
        pet
    end


    # list of pets that have the same name
    def self.find_all_by_name(name)

    end

    def self.find(name, age, species)
        self.all.find { |pet| pet.name == name && pet.age == age && pet.species == species}
    end

    def self.find_or_create_by(name, age, species)
        # find and return if found
        # create if not found
        if pet = self.find(name, age, species)
            pet
        else
            self.create(name, age, species)
        end
    end

    def save
        @@all << self
    end

    def self.all
        @@all
    end
end

# Objectives
# pets will have a name age and species - x
# instantiate - creating an instance of a class 
# pets will be born with a name age and species - x
# pets will be stored in an array that the class will keep track of, (not during initialize, we will make a create method)
# we will be able to use the class to print out the details of the pets

# Stretch Goals
# Create a cli to mimic a pet shop where we can create pets using a command line interface. Maybe add another attribute to the pet where it stores whether it has been adopted or not.
# Most likely instead doing a lab walkthrough