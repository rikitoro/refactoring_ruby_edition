require_relative 'ledger'

class Product
  def self.add_price_by_updating(ledger, price)
    ledger.add(price)
    puts "ledger in add_price_by_updating: #{ledger.balance}"
  end

  def self.add_price_by_replacing(ledger, price)
    ledger = Ledger.new(ledger.balance + price)
    puts "ledger in add_price_by_replacing: #{ledger.balance}"
  end
end

l1 = Ledger.new(100)
Product.add_price_by_updating(l1, 50)
puts "l1 after add_price_by_updating: #{l1.balance}"

l2 = Ledger.new(100)
Product.add_price_by_replacing(l2, 50)
puts "l2 after add_price_by_replacing: #{l2.balance}"
