class DockingStation
  $DEFAULT_CAPACITY = 20
  @@counter = 1

  def release_bike
    if @@counter == 0
      return 'nope'
    elsif @@counter > 0
      @@counter -= 1
      return Bike.new
    end
  end

  def docking
    if full? == true
      return 'docking station full'
    else
      @@counter += 1
      return 'thanks for the bike.'
    end
  end

  private

  def full?
    return false if @@counter < $DEFAULT_CAPACITY
    return true
  end

end

class Bike
  def working?
    return true
  end
end
