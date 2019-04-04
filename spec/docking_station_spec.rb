require 'docking_station'

describe DockingStation do
  it {is_expected.to respond_to(:release_bike)}

  it "release a working Bike" do
    bike = subject.release_bike
    expect(bike).to be_working
  end

  it { is_expected.to respond_to(:dock).with(1).argument }

  it "stores docked bike" do
    bike = subject.release_bike
    expect(subject.dock(bike)).not_to be_nil
  end

  it "shows stored bike" do
    expect(subject.bike).to eq @bike
  end

end
