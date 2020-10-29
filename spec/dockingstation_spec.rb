require 'boris_bikes.rb'

describe DockingStation do

  it 'responds to release_bike' do
    is_expected.to respond_to(:release_bike)
  end

  it 'can dock bike' do
    is_expected.to respond_to(:docking)
  end

  it 'checks if docking station is empty' do
    expect(subject.docking).to eq('thanks for the bike.')
  end

  it "doesn't dock when full" do
    a = DockingStation.new
    20.times { a.docking }
    expect(a.docking).to eq('docking station full')
  end

  it 'can check if its full or not' do
    result = subject.send(:full?)
    expect(result).to eq(false)
  end

  it 'when asked if its full it returns a bool' do
    result = subject.send(:full?)
    expect([true, false]).to include(result)
  end

end
