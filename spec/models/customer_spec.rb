require_relative '../../config/spec_helper.rb'
require_relative '../../models/customer'

RSpec.describe Customer do
  describe 'when name is missing' do
    it 'is not valid' do
      customer = Customer.new(email: 'john.smith@example.com')
      expect(customer).not_to be_valid
    end
  end

  describe 'when email is missing' do
    it 'is not valid' do
      customer = Customer.new(name: 'John Smith')
      expect(customer).not_to be_valid
    end
  end

  describe 'when email is not unique' do
    it 'is not valid' do
      Customer.create!(name: 'John Smith', email: 'john.smith@example.com')
      customer = Customer.new(name: 'JS', email: 'john.smith@example.com')
      expect(customer).not_to be_valid
    end
  end
end
