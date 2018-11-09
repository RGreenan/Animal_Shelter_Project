require_relative('../models/animal')
require_relative('../models/owner')
require_relative('../models/adoption')

# ANIMALS
animal1 = Animal.new({
  'name' => 'Lossoth',
  'type' => 'Labrador',
  'admission_date' => '21/06/18'
  })

animal2 = Animal.new({
  'name' => 'Hector',
  'type' => 'Ragdoll',
  'admission_date' => '1/11/18'
  })

# OWNERS
owner1 = Owner.new({
  'name' => 'Maria',
  'pet_id' => animal1.id
  })

owner2 = Owner.new({
  'name' => 'Carl'
  })

# ADOPTIONS
adoption1 = Adoption.new({
  'animal_id' => animal1.id,
  'owner_id' => owner1.id
  })
