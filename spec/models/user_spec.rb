require 'rails_helper'

describe 'User' do
  let(:valid_user) do User.create(
    name: 'Brian',
    email: 'brian@yahoo.com',
    password: 'password')
  end

  let(:invalid_user) do User.create(
    name: '',
    email: '',
    password: '')
  end

  describe 'validations' do
    describe 'when valid' do
      it 'validates the presence of name' do
        expect(valid_user.name).to eq('Brian')
      end

      it 'validates the presence of email' do
        expect(valid_user.email).to eq('brian@yahoo.com')
      end

      it 'validates the presence of password' do
        expect(valid_user.password).to eq('password')
      end
    end

    describe 'when not valid' do
      it 'is not valid without a name, email and password' do
        expect(invalid_user).to_not be_valid
      end
    end
  end
end
