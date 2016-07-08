require_relative 'bike'

class DockingStation

def initialize
  @capacity = []
end


def release_bike
  fail 'No bikes available' if empty?
  @capacity.pop
end


def dock(bike)
  raise "Station full - come back later" if full?
  @capacity << bike
end


private

def empty?
  @capacity.empty?
end

def full?
  @capacity.count >= 20
end

end
