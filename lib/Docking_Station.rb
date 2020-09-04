class DockingStation
  attr_reader :bike
  
  def initialize(capacity = 20)
    @capacity = capacity
    @docked_bikes = [] 
  end
  
  def release_bike
      raise 'docking station empty' if @docked_bikes.empty?
      @docked_bikes.pop
    end

    def dock(bike)
      raise 'docking station at capacity' if @docked_bikes.length == @capacity
      @docked_bikes << bike
      return "bike is docked!"
    end

end


class Bike
  def working?
     true
  end
end
