require 'boris_bikes.rb'

describe DockingStation do

  it 'responds to release_bike' { is_expected.to respond_to(:release_bike) }

  it 'can dock bike' do
    is_expected.to respond_to(:docking)
  end

  it 'checks if docking station is empty' do
    expect(subject.docking).to eq('docking station full')
  end
end
