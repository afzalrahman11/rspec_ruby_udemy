RSpec.describe 'assignment 47' do
  it 'check if even and responds to times method' do
    expect(20).to be_even.and respond_to(:times)
  end

  it 'checks include and start_with methods to an array' do
    expect( [4, 8, 15, 16, 23, 42] ).to include(42).and start_with( 4, 8, 15 )
  end
end

RSpec.describe 'assignment 50 - doubles' do
  it "tests the student's knowledge of the course's content" do
    db = double("Database Connection", connect: true, disconnect: 'GoodBye')
    expect(db.connect).to eq(true)
    expect(db.disconnect).to eq('GoodBye')

    fs = double("File System")
    allow(fs).to receive(:read).and_return('Romeo and Juliet')
    allow(fs).to receive(:write).and_return(false)
    expect(fs.read).to eq('Romeo and Juliet')
    expect(fs.write).to be_falsey
  end
end
