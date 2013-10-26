require "./customer"

gone_with_window = Movie.new("Gone with Window", Movie::REGULAR)
the_gold_rush = Movie.new("The Gold Rush", Movie::NEW_RELEASE)

rental1 = Rental.new(the_gold_rush, 5)
rental2 = Rental.new(gone_with_window, 4)

yoshiaki = Customer.new("yoshiaki")
yoshiaki.add_rental(rental1)
yoshiaki.add_rental(rental2)

puts yoshiaki.statement
puts yoshiaki.html_statement