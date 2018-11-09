require_relative('../models/animal')
require_relative('../models/owner')
require_relative('../models/adoption')

# ANIMALS
animal1 = Animal.new({
  'name' => 'Lossoth',
  'type' => 'Labrador',
  'admission_date' => '21/06/18'
  })
animal1.save

animal2 = Animal.new({
  'name' => 'Hector',
  'type' => 'Ragdoll',
  'admission_date' => '1/11/18'
  })
animal2.save

# OWNERS
owner1 = Owner.new({
  'name' => 'Maria',
  'pet_id' => animal1.id
  })
owner1.save

owner2 = Owner.new({
  'name' => 'Carl'
  })
owner2.save

# ADOPTIONS
adoption1 = Adoption.new({
  'animal_id' => animal1.id,
  'owner_id' => owner1.id
  })
adoption1.save

adoption2 = Adoption.new({
  'animal_id' => animal2.id,
  'owner_id' => owner2.id
  })
adoption2.save
