class Deck
  def self.build
    'some logic'
  end
end

class CardGames
  attr_reader :cards

  def start
    @cards = Deck.build
  end
end

RSpec.describe CardGames do
  it 'can only implement class methods that are defined on a class' do
    deck_klass = class_double(Deck, build: ['Ace', 'Queen']).as_stubbed_const

    expect(deck_klass).to receive(:build)
    subject.start
    expect(subject.cards).to eq(['Ace', 'Queen'])
  end
end