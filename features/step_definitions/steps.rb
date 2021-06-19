require 'ourcode'
 
Given("Maria orders ${int} coffee from Li") do |int|
 @maria = Customer.new
 @li = Associate.new
 price = int
 @maria.orders
end
 
When("Maria pays with a credit card") do
 @maria.pays_with_card
end
 
Then("Li should process the payment") do
 expect(@li.process_payment).to include(true)
end
