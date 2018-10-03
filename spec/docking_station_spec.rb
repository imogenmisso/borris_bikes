# testing the docking station
require 'docking_station'

describe DockingStation do
  it { is_expected.to respond_to :release_bike }

  it 'runs method to release bike' do
    subject.dock(Bike.new)
    bike = subject.release_bike
    expect(bike).to be_working
  end

  it 'returns docked bike' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq bike

  end

  it {is_expected.to respond_to(:dock).with(1).argument }

  it 'doesnt release bike if no bikes' do
  expect {subject.release_bike}.to raise_error "no bikes"
  end

end
