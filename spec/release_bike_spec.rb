require 'boris_bikes'

describe DockingStation do
  it 'should create an instance of Bike when release_bike is called' do
    a = DockingStation.new
    a.docking 
    expect(a.release_bike).to be_instance_of Bike
  end

end

describe Bike do
  it 'tells you if the bike is working' do
    expect(subject.working?).to eq (true)
  end
end
