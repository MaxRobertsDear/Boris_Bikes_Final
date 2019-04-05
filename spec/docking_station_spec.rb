require 'docking_station'

describe DockingStation do
  it {is_expected.to respond_to(:release_bike)}

  describe "#release_bike" do
    it "releases a bike" do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end

    it "returns an error when no bikes available" do
      expect { subject.release_bike }.to raise_error("No bike at docking station")
    end

  end
  
  describe '#dock' do
    it 'return error when docking more than one bike' do
      bike = Bike.new
      subject.dock(bike)
      bike2 = Bike.new
      expect { subject.dock(bike2) }.to raise_error("Docking station full")
    end
  end


  it { is_expected.to respond_to(:dock).with(1).argument }

  # it "stores docked bike" do
  #   bike = subject.release_bike
  #   expect(subject.dock(bike)).not_to be_nil
  # end

  it "shows stored bike" do
    expect(subject.bike).to eq @bike
  end

end
