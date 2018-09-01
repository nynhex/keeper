require_relative '../../config/spec_helper.rb'
require_relative '../../models/product'
require_relative '../../models/sale'
require_relative '../../models/customer'
require_relative '../../models/line_item'

RSpec.describe LineItem do
  let(:customer) do
    Customer.create!(
      name: 'John Smith',
      email: 'john.smith@example.com'
    )
  end

  let(:line_item) do
    LineItem.create!(
      product: Product.create!(name: 'Guitar', price_cents: 50000),
      sale: Sale.create!(customer: customer),
      quantity: 2
    )
  end

  it 'returns the product price multiplied by quantity' do
    expect(line_item.total_price_cents).to eq(100000)
  end
end
