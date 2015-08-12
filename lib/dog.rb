class Dog
  attr_reader :name, :breed, :owner
  attr_accessor :leash, :plastic_bag, :walking, :vet

  def initialize(name, breed, owner_name)
    @name = name
    @breed = breed
    @owner = Owner.new(name: owner_name, dog: self)
    @leash = false
    @plastic_bag = false
    @walking = false
    @vet_checkup = false
  end

  def name
    @name
  end

  def bark
    "Woof!"
  end

  def breed
    @breed
  end

  def owner
    @owner
  end

  def get_ready
    self.leash = true
    self.plastic_bag = true
    self.walking = true
  end

  # moved to owner

  # def walking?(owner)
  #   owner.dog.walking
  # end

  def vet_checkup?(owner)
    owner.vet_checkup
  end

  # Refactor the following methods as methods in the Owner class!

  # def walk(owner)
  #   # REFACTOR!
  #   owner.dog.leash = true
  #   owner.dog.plastic_bag = true
  #   owner.dog.walking = true
  # end

  def vet_checkup(owner)
    # REFACTOR!
    owner.dog.leash = true
    owner.dog.plastic_bag = true
    owner.dog.vet_checkup = true
  end
end
