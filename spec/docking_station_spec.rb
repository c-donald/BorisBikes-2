require 'Docking_Station'

describe DockingStation do
    it { is_expected.to respond_to :release_bike }

  it 'releases working bikes' do
     bike = subject.release_bike
     expect(bike).to respond_to :working?
   end

   it 'raise an error if docking station empty' do 
  expect{ subject.release_bike }.to raise_error(RuntimeError)
  end


   it 'docks bikes' do
     bike = Bike.new
     expect(subject.dock(bike)).to eq bike
   end

   it 'returns docked bikes' do
  bike = Bike.new
  subject.dock(bike)
  expect(subject.bike).to eq bike
end

  it { is_expected.to respond_to (:bike) }
  end
