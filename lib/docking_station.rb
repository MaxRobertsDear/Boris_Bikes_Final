require_relative 'bike'

class DockingStation

  def initialize
    @bikes = []
  end

  def release_bike
    fail "No bike at docking station" if @bikes.empty?
    @bikes.shift
  end

  def dock(bike)
    fail "Docking station full" unless @bikes.length < 20
    @bikes << bike
  end

end
