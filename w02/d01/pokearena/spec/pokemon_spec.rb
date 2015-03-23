require_relative 'spec_helper'
require_relative '../lib/pokemon'

describe Pokemon do
  subject(:pikachu) { Pokemon.new("Pikachu", 25, "Electric", 100, 52, 49, 88) }
  let(:bulbasaur) { Pokemon.new("bulbasaur", 1, "Grass", 2000, 54, 55, 51) }
  let(:squirtle) { Pokemon.new("Squirtle", 7, "Water", 0, 51, 60, 58) }

  describe '#name' do
    it 'has a name' do
      expect(pikachu.name).to_not be_nil
    end
    it 'has a capitalized name' do
      expect(bulbasaur.name).to eq("Bulbasaur")
    end
  end

  describe '#hp' do
    it 'has an HP stat' do
      expect(pikachu.hp).to_not be_nil
    end
    it 'has a max hp of 100' do
      expect(bulbasaur.hp).to eq(100)
    end
  end
  describe '#fainted?' do
    it 'has a status' do
      expect(pikachu.fainted?).to eq(false)
      expect(squirtle.fainted?).to eq(true)
    end
  end

  describe '#take_damage' do
    it 'can take damage' do
      start_hp = pikachu.hp
      pikachu.take_damage
      expect(pikachu.hp).to be < start_hp
    end

    it 'cannot take damage if it is fainted' do
      expect(squirtle.take_damage).to eq(false)
    end
  end

  describe '#full_restore' do
    it 'restores a pokemons hp' do
      start_hp = squirtle.hp
      squirtle.full_restore
      expect(squirtle.hp).to be > start_hp
    end
    it 'restores the pokemons hp to 100%' do
      squirtle.full_restore
      expect(squirtle.hp).to eq(100)
    end
  end

  describe '#list_stats' do
    it 'shows a pokemons stats' do
      expect(pikachu.list_stats).to_not be_nil
    end
    it 'shows all stats' do
      poke_stats = [pikachu.name, pikachu.id, pikachu.poketype, pikachu.hp, pikachu.attack, pikachu.speed, pikachu.defense]
      stat_result = poke_stats.map { |stat| pikachu.list_stats.include?(stat.to_s) }
      expect(stat_result.uniq.count).to eq(1)
    end
  end
end
