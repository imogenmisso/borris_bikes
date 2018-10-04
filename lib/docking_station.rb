# creating file for docking station class
require_relative 'bike'

class DockingStation
  attr_reader :bikes, :capacity
  DEFAULT_CAPACITY = 20

  def initialize(capacity = DEFAULT_CAPACITY)
    @capacity = capacity
    @bikes = []
  end

  def release_bike
    fail "no bikes" if empty?
    @bikes.each do |bike|
      fail "bike broken" if bike.broken?
    end
    @bikes.pop
  end

  def dock(bike)
    fail 'Full capacity' if full?
    @bikes << bike
  end

  private
  def full?
    @bikes.length >= @capacity
  end

  def empty?
    @bikes.empty?
  end
end
