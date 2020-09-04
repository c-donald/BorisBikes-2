require 'Docking_Station'

describe DockingStation do
    it { is_expected.to respond_to :release_bike }

  it 'releases working bikes' do
     bike = Bike.new
     expect(bike.working?).to eq true 
   end

   it 'raise an error if docking station empty' do 
  expect { subject.release_bike }.to raise_error
  end


   it 'docks bikes without error when under 20 bikes ' do
     docking_station = DockingStation.new
     19.times { docking_station.dock(Bike.new) } 
     expect(docking_station.dock(Bike.new)).to eq ("bike is docked!")
   end

   it 'raises an error if docked bike reaches capacity' do
    docking_station = DockingStation.new 
    expect { 21.times { docking_station.dock(Bike.new) } }.to raise_error('docking station at capacity') 
  end 


  it { is_expected.to respond_to (:bike) }
  end


   # it 'returns docked bikes' do
 # bike = Bike.new
 # subject.dock(bike)
  #expect(subject.bike).to eq bike
#end