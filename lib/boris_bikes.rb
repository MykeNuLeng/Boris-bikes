class DockingStation
  def initialize(y = 20)
    @DEFAULT_CAPACITY = y
    @storage = []
  end

attr_reader :DEFAULT_CAPACITY
attr_reader :storage

  def release_bike
    if @storage.empty?
      return 'nope'
    else
      @storage.pop
      Bike.new
    end 
  end

  def docking
    if full? == true
      return 'docking station full'
    else
      @storage << Bike.new
      return 'thanks for the bike.'
    end
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
