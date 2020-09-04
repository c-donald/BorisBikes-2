class DockingStation
  attr_reader :bike
  
  def initialize
    @bike = [] 
  end
  
  def release_bike
      raise 'docking station empty' if @bike.empty?
      @bike
    end

    def dock(bike)
      @bike = bike
    end

end


class Bike
  def working?
     true
  end
end
