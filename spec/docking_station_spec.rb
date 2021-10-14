require 'docking_station'

describe DockingStation do
  it { is_expected.to respond_to :release_bike }
  it 'releases working bikes' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.release_bike).to eq bike
  end
  
  it { is_expected.to respond_to(:dock).with(1).argument }
  it { is_expected.to respond_to(:bike) }

  it 'docks a bike' do
    station = DockingStation.new
    bike = Bike.new
    expect(station.dock(bike)).to eq bike
  end

  describe 'release_bike' do
    it 'raises an error when there are no bikes available' do
      expect { subject.release_bike }.to raise_error 'No bikes available'
    end
  end

  describe 'dock' do
    it 'raises an error when no spaces are available' do
      subject.dock(Bike.new)
      expect { subject.dock Bike.new }.to raise_error 'No space available'
    end
  end
end
