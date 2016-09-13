require 'rails_helper'

describe 'Listing' do
  let(:valid_listing) { Listing.create(city: 'Seattle') }

  describe 'validations' do

    let(:invalid_listing) { Listing.create(city: "") }

    describe 'when valid' do
      it 'validates the presence of city' do
        expect(valid_listing.city).to eq('Seattle')
      end
    end

    describe 'when not valid' do
      it 'is not valid without a city' do
        expect(invalid_listing).to_not be_valid
      end
    end
  end
end
