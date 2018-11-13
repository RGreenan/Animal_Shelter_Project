require_relative('../models/animal')
require_relative('../models/owner')
require_relative('../models/adoption')

# ANIMALS
animal1 = Animal.new({
  'name' => 'Lossoth',
  'type' => 'Dog',
  'breed' => 'Labrador',
  'adoptable' => 'Yes',
  'admission_date' => '21/06/18'
  })
animal1.save
animal1.name = 'Jim'
animal1.update

animal2 = Animal.new({
  'name' => 'Hector',
  'type' => 'Cat',
  'breed' => 'Ragdoll',
  'adoptable' => 'No',
  'admission_date' => '1/11/18'
  })
animal2.save

animal3 = Animal.new({
  'name' => 'Granfalloon',
  'type' => 'Dog',
  'breed' => 'French Bulldog',
  'adoptable' => 'No',
  'admission_date' => '10/11/18'
  })
animal3.save

animal4 = Animal.new({
  'name' => 'Lucille',
  'type' => 'Cat',
  'breed' => 'British Shorthair',
  'adoptable' => 'Yes',
  'admission_date' => '6/10/18'
  })
animal4.save


# OWNERS
owner1 = Owner.new({
  'name' => 'Maria',
  'wanting' => 'Dog'
  })
owner1.save

owner2 = Owner.new({
  'name' => 'Carl',
  'wanting' => 'Cat'
  })
owner2.save

owner3 = Owner.new({
  'name' => 'Sophie',
  'wanting' => 'Dog'
  })
owner3.save


# ADOPTIONS
adoption1 = Adoption.new({
  'animal_id' => animal1.id,
  'owner_id' => owner1.id
  })
adoption1.save

adoption2 = Adoption.new({
  'animal_id' => animal4.id,
  'owner_id' => owner2.id
  })
adoption2.save
