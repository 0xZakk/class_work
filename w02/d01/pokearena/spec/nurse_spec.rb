require_relative 'spec_helper'
require_relative '../lib/nurse'
require_relative '../lib/trainer'
require_relative '../lib/pokemon'

describe Nurse do
  subject(:joy) { Nurse.new("Joy", 21, "Saffron City") }
  let(:pokemons) do
    [
      Pokemon.new("Pikachu", 25, "Electric", 100, 52, 49, 88),
      Pokemon.new("bulbasaur", 1, "Grass", 80, 54, 55, 51),
      Pokemon.new("Squirtle", 7, "Water", 10, 51, 60, 58),
      Pokemon.new("Pidgey", 16, "Flying", 10, 52, 43, 75),
      Pokemon.new("Charmander", 4, "Fire", 19, 62, 58, 54),
      Pokemon.new("Psyduck", 54, "Water", 100, 25, 17, 30)
    ]
  end
  let(:ash) { Trainer.new("Ash", 12, "Pallet Town", pokemons)}

  describe '#name' do
    it 'has a name' do
      expect(joy.name).to_not be_nil
      expect(joy.name).to eq("Joy")
    end
  end

  describe '#list_info' do
    it 'lists the nurse\'s information' do
      expect(joy.list_info).to_not be_nil
    end
    it 'lists all of the nurse\'s information' do
      nurse_info = [joy.name, joy.age, joy.town]
      results = nurse_info.map { |info| joy.list_info.include?(info.to_s) }
      expect(results.uniq.count).to eq(1)
      expect(results.uniq).to eq([true])
    end
  end

  describe '#heal_pokemon' do
    it 'heals a trainers pokemon' do
      joy.heal_pokemon(ash)
      pokemon_stats = ash.pokemons.map(&:hp).uniq
      expect(pokemon_stats.count).to eq(1)
    end
  end
end
