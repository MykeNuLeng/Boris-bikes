require 'boris_bikes.rb'

describe DockingStation do
  it { is_expected.to respond_to(:release_bike) }

  it 'can dock bike' do
    is_expected.to respond_to(:docking)
  end

  it 'checks if docking station is empty' do
    expect(subject.docking).to eq(0)
  end
end
