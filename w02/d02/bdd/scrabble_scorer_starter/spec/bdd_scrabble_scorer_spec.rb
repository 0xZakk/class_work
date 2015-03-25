# run the specs via
#  $ rspec
# or
#  $ rspec scrabble_scorer_spec.rb

require_relative '../bdd_scrabble_scorer'

RSpec.describe 'scrabble_scorer' do
  it "scores zero for empty word" do
    expect(scrabble_scorer("")).to eql(0)
  end

  # it "scores zero for nil" do
  #   expect(scrabble_scorer(nil)).to eql(0)
  # end
  #
  # it "scores the letter 'a' as 1" do
  #   expect(scrabble_scorer('a')).to eql(1)
  # end
  #
  # it "scores the letter 'f' as 4" do
  #   expect(scrabble_scorer('f')).to eql(4)
  # end
  #
  # it "scores a very short word" do
  #   expect(scrabble_scorer('as')).to eql(1+1)
  # end
  #
  # it "scores a simple word 'street'" do
  #   expect(scrabble_scorer('street')).to eql(6) # 1+1+1+1+1+1
  # end
  #
  # it "scores a complicated word 'quirky'" do
  #   expect(scrabble_scorer('quirky')).to eql(22)
  # end
end

# describe "bonus" do
#   it "scores zero for whitespace" do
#     expect(scrabble_scorer(" \t\n")).to eql(0)
#   end
#
#   it "is not case-sensitive" do
#     expect(scrabble_scorer("STReeT")).to eql(6)
#   end
# end
