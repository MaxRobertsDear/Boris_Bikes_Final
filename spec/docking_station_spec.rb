require 'docking_station'

describe DockingStation do
  it {is_expected.to respond_to(:release_bike)}

  it "release a working Bike" do
    bike = subject.release_bike
    expect(bike).to be_working
  end

  it { is_expected.to respond_to(:dock_bike).with(1).argument }

  it "stores docked bike" do
    bike = subject.release_bike
    expect(subject.dock_bike(bike)).not_to be_nil
  end

  it { is_expected.to respond_to(:show_bike) }

  it "shows stored bike" do
    bike = subject.dock_bike(bike)
    expect(subject.show_bike).to eq bike
  end

end
