require 'boris_bikes'

describe DockingStation do
  let(:bike) { double :bike }
  
  it 'responds to report' do
    is_expected.to respond_to(:report)
  end

  it 'adds a bike to busted_bikes' do
    a = DockingStation.new
    a.docking(bike)
    a.report
    b = a.busted_bikes
    expect(b[-1]).to eq bike
  end
end
