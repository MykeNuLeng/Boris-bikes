require 'boris_bikes.rb'

describe Bike do
  it { is_expected.to respond_to(:working?) }
end
