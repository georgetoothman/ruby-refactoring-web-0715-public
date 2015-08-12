class Owner
  attr_reader :name, :dog

#  def initialize(name:nil, dog:nil)
  def initialize(name:, dog:)
    @name = name
    @dog = dog
  end

  def walk
    prepare_items
  end

  def prepare_items
    dog.get_ready
    dog.leash = true
    dog.plastic_bag = true
    dog.walking = true
  end

  def walking?
    dog.walking
  end

  def vet_checkup
    prepare_items
  end

end
