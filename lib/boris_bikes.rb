class DockingStation
  def initialize(y = 20)
    @DEFAULT_CAPACITY = y
    @storage = []
    @busted_bikes = []
  end

attr_reader :storage, :busted_bikes, :DEFAULT_CAPACITY

  def release_bike
    if @storage.empty?
      return 'nope'
    else
      @storage.pop
    end
  end

  def docking(var)
    if full? == true
      return 'docking station full'
    else
      @storage << var
      return 'thanks for the bike.'
    end
  end

  def report
    @busted_bikes << @storage.pop
    @DEFAULT_CAPACITY += -1
  end

  private

  def full?
    return false if @storage.length < @DEFAULT_CAPACITY
    return true
  end

end

class Bike
  def working?
    return true
  end
end
