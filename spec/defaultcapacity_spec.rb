require 'boris_bikes'

describe DockingStation do

  it 'you can set the default_capacity' do
    expect(DockingStation.new(5).DEFAULT_CAPACITY).not_to eq(20)
  end

  it 'when you dont set it, its still 20' do
    expect(DockingStation.new.DEFAULT_CAPACITY).to eq(20)
  end

end
