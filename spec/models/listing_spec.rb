require 'rails_helper'

describe 'Listing' do
  let(:valid_listing) do Listing.create(
    address: '83 S King Street',
    city: 'Seattle',
    state: 'WA',
    zip: '98105',
    description: 'A new listing')
  end

  let(:invalid_listing) do Listing.create(
    address: '',
    city: 'Seattle',
    state: 'WA',
    zip: '98105',
    description: 'A new listing')
  end

  describe 'validations' do
    describe 'when valid' do
      it 'validates the presence of city' do
        expect(valid_listing.address).to eq('83 S King Street')
      end

      it 'validates the presence of city' do
        expect(valid_listing.city).to eq('Seattle')
      end

      it 'validates the presence of city' do
        expect(valid_listing.state).to eq('WA')
      end

      it 'validates the presence of city' do
        expect(valid_listing.zip).to eq('98105')
      end
    end

    describe 'when not valid' do
      it 'is not valid without a city' do
        expect(invalid_listing).to_not be_valid
      end
    end
  end
end
