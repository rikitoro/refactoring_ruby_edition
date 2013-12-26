require 'rspec'
require_relative 'order'
require_relative 'customer'

describe Customer do
  it do
    book = Order.new
    bob = Customer.new
    bob.add_order(book)
    expect(book.customer).to eq bob
  end
end