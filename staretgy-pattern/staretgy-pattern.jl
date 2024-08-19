abstract type PaymentMethod end

function process_payment(payment_method::PaymentMethod, amount::Float64)
    error("Payment method should be concretly implemented for each payment method")
end

struct CreditCard <: PaymentMethod
    card_number::String
    expiration_date::String
    cvv::String
end

struct PayPal <: PaymentMethod
    email::String
    password::String
end

struct CryptoCurrency <: PaymentMethod
    address::String
end



function process_payment(credit_card::CreditCard, amount::Float64)
    println("Processing credit card payment of $amount from card number $(credit_card.card_number)")
end

function process_payment(paypal_account::PayPal,amount::Float64)
    println("Processing PayPal payment of $amount from account $(paypal_account.email)")
end

function process_payment(crypto_currency::CryptoCurrency,amount::Float64)
    println("Processing cryptocurrency payment of $amount from address $(crypto_currency.address)")
end


credit_card = CreditCard("4242 4242 4242 4242", "12/23", "123")
paypal = PayPal("Saurav", "password")
crypto = CryptoCurrency("0x1234567890")

process_payment(credit_card, 100.0)

process_payment(paypal, 100.0)

process_payment(crypto, 100.0)



