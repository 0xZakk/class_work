require_relative 'spec_helper'
require_relative '../lib/trainer'
require_relative '../lib/pokemon'

describe Trainer do
  let(:pokemons) do
    [
      Pokemon.new("Pikachu", 25, "Electric", 100, 52, 49, 88),
      Pokemon.new("bulbasaur", 1, "Grass", 2000, 54, 55, 51),
      Pokemon.new("Squirtle", 7, "Water", 0, 51, 60, 58),
      Pokemon.new("Pidgey", 16, "Flying", 100, 52, 43, 75),
      Pokemon.new("Charmander", 4, "Fire", 100, 62, 58, 54)
    ]
  end
  let(:psyduck) { Pokemon.new("Psyduck", 54, "Water", 100, 25, 17, 30) }
  let(:mew) { Pokemon.new("Mew", 151, "Psychic", 100, 84, 82, 9001) }
  subject(:ash) { Trainer.new("Ash", 12, "Pallet Town", pokemons)}

  describe '#name' do
    it 'has a name' do
      expect(ash.name).to_not be_nil
      expect(ash.name).to eq("Ash")
    end
  end

  describe '#list_pokemons' do
    it 'lists the trainers pokemon' do
      expect(ash.list_pokemons).to_not be_nil
    end
    it 'lists all of the pokemon' do
      listed_pokemon = ash.list_pokemons.split("\n")
      expect(listed_pokemon.count).to eq(ash.pokemons.count)
    end
  end

  describe '#list_info' do
    it 'lists the trainers info' do
      info_array = [ash.name, ash.age, ash.hometown, ash.pokemons.count]
      results = info_array.map { |stat| ash.list_info.include?(stat.to_s) }
      expect(results.uniq.count).to eq(1)
    end
  end

  describe '#add_pokemon' do
    it 'adds a pokemon to the trainers pokemons' do
      count_before = ash.pokemons.count
      expect(ash.add_pokemon(psyduck)).to eq(true)
      expect(ash.pokemons.count).to be > count_before
      expect(ash.pokemons).to include psyduck
    end

    it 'will not add if there are 6 pokemons already' do
      ash.add_pokemon(psyduck)
      expect(ash.add_pokemon(mew)).to eq(false)
      expect(ash.pokemons).to_not include mew
    end
  end
end
