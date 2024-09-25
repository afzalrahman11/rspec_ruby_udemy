RSpec.describe 'a random double' do
  it 'only allows defined methods to be invoked - syntax1' do
    stuntman = double("Mammootty", stand_and_fight: "Oh! Yeah", jumb_and_run: false)
    expect(stuntman.stand_and_fight).to eq("Oh! Yeah")
    expect(stuntman.jumb_and_run).to be_falsey
  end

  it 'allow, receive and return' do
    stuntman = double("Mohanlal")
    allow(stuntman).to receive(:jumb_and_run).and_return("Oh! Yeah")
    expect(stuntman.jumb_and_run).to eq("Oh! Yeah")
  end

  it 'allow and receive_messages' do
    stuntman = double("Dileep")
    allow(stuntman).to receive_messages(stand_and_fight: "Oh! No", jumb_and_run: true)
    expect(stuntman.stand_and_fight).to eq("Oh! No")
    expect(stuntman.jumb_and_run).to be_truthy
  end
end