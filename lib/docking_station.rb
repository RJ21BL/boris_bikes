# require 'bike'

class DockingStation
  def initilize
    @bikes = []
  end

  def release_bike
    fail 'No bikes available' if @bikes.empty?
    @bikes.pop
  end

  def dock(bike) #docking a working bike
    fail 'No space available' if @bikes.count >= 20
    @bikes << bike
  end
end