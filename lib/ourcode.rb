class Customer
    def orders
    end

    def pays_with_card
    end
end

class Associate
    def process_payment(price, card_minimum)
        if price >= card_minimum
            return [true, 'card processed']
        end
        if price < card_minimum
            return [false, 'below card minimum']
        end
    end
end