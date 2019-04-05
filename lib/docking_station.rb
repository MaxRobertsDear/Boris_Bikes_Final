require_relative 'bike'

class DockingStation

attr_reader :bike

  def release_bike
    fail "No bike at docking station" unless @bike
    @bike
  end

  def dock(bike)
    fail "Docking station full" unless @bike == nil
    @bike = bike
  end

end
