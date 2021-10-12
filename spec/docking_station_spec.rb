require 'docking_station'

describe DockingStation do
  it { is_expected.to respond_to :release_bike }

  it 'should respond to working bike' do
    station = DockingStation.new
    bike = station.release_bike
    expect(bike).to be_working
  end
end
