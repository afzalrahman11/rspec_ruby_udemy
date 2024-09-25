class Actor
  attr_reader :actor

  def initialize(actor)
    @actor = actor
  end

  def ready?
    for i in (1..3)
      puts i
      sleep(1)
    end
    true
  end

  def act
    "I love you, baby"
  end

  def fall_off_ladder
    'Talk to my agent'
  end

  def light_on_fire
    false
  end
end

class Movie
  attr_reader :actor

  def initialize(actor)
    @actor = actor
  end

  def start_shooting
    if actor.ready?
      puts actor.act
      puts actor.fall_off_ladder
      puts actor.light_on_fire
    end
  end
end

# actor = Actor.new('Mammootty')
# movie = Movie.new(actor)
# movie.start_shooting

RSpec.describe Movie do
  let(:stuntman) { double("Mammootty", ready?: true, act: 'HaHahaha',
                   fall_off_ladder: 'Enthelum kanikk', light_on_fire: true) }
  subject { described_class.new(stuntman) }

  describe '#start_shooting method' do
    it 'expects an actor to do 3 actions'do
      expect(stuntman).to receive(:ready?)
      expect(stuntman).to receive(:act)
      expect(stuntman).to receive(:fall_off_ladder)
      expect(stuntman).to receive(:light_on_fire)
      subject.start_shooting
    end
  end
end