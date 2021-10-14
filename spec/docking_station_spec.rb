require 'docking_station'

describe DockingStation do
  it { is_expected.to respond_to :release_bike }

  it 'releases working bikes' do
    station = DockingStation.new
    bike = station.release_bike
    expect(bike).to be_working
  end

  it { is_expected.to respond_to(:dock).with(1).argument }

  it { is_expected.to respond_to(:bike) }

  it 'docks a bike' do
    station = DockingStation.new
    bike = Bike.new
    expect(station.dock(bike)).to eq bike
  end
end
