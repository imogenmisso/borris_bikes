# testing the docking station
require 'docking_station'
require 'bike'

describe DockingStation do
  it { is_expected.to respond_to :release_bike }

  it 'release bikes working bikes' do
    subject.dock(Bike.new)
    bike = subject.release_bike
    expect(bike).to be_working
  end

  it 'docking bike' do
    bikes = Bike.new
    subject.dock(bikes)
    expect(subject.bikes).to eq [bikes]
  end

  it {is_expected.to respond_to(:dock).with(1).argument }

  it 'doesnt release bike if no bikes' do
    expect {subject.release_bike}.to raise_error "no bikes"
  end

  it 'accepts more than one bike' do
    bike_a = Bike.new
    bike_b = Bike.new
    subject.dock(bike_a)
    expect(subject.dock(bike_b)).to eq [bike_a, bike_b]
  end

  it 'doesnt accept more than 20 bikes' do
#    subject.capacity.times {subject.dock(Bike.new)}
    subject.capacity.times {subject.dock double(:bike)}
#    expect {subject.dock(Bike.new)}.to raise_error 'Full capacity'
    expect {subject.dock double(:bike)}.to raise_error "Full capacity"
  end

  it 'has a default capacity, if no params to DockingStation' do
    expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
  end

  it 'does not release broken bikes' do
    station = DockingStation.new
    bike = Bike.new
    bike.report_broken
    station.dock(bike)
    expect {station.release_bike}.to raise_error "bike broken"
  end

  it 'accepts broken and working bikes' do
    station = DockingStation.new
    bike = Bike.new
    bike.broken?
    expect(station.dock(bike)).to eq [bike]
  end
end
