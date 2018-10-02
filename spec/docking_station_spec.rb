# testing the docking station
require 'docking_station'

describe DockingStation do
  it { is_expected.to respond_to :release_bike }

  it 'runs method to release bike' do
    bike = subject.release_bike
    expect(bike).to be_working
  end
  it 'returns docked bike' do
    bike = Bike.new
    subject.return_bike(bike)
    expect(subject.bike).to eq bike 
  end

  it {is_expected.to respond_to(:return_bike).with(1).argument }
end
