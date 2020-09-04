class DockingStation
  attr_reader :bike, :DEFAULT_CAPACITY
  DEFAULT_CAPACITY = 20
  
  def initialize
    @docked_bikes = [] 
  end
  
  def release_bike
      raise 'docking station empty' if empty?
      @docked_bikes.pop
    end

    def dock(bike)
      raise 'docking station at capacity' if full?
      @docked_bikes << bike
      return "bike is docked!"
    end

    private

    def full?
      @docked_bikes.length == DEFAULT_CAPACITY
    end

    def empty?
    @docked_bikes.empty?
    end

end


class Bike
  def working?
     true
  end
end
