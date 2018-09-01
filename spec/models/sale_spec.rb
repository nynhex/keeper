require_relative '../../config/spec_helper.rb'
require_relative '../../models/sale'

RSpec.describe Sale do
  describe 'when customer is missing' do
    it 'is not valid' do
      sale = Sale.new
      expect(sale).not_to be_valid
    end
  end
end
