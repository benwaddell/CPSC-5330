import UIKit

func payment (_ loanAmount: Int,_ numOfPayments: Int, _ interestRate: Float) -> Float {
    
    // Casting to Double avoid Float rounding errors
    let loanAmount: Double = Double(loanAmount)
    let numOfPayments: Double = Double(numOfPayments)
    let interestRate: Double = Double(interestRate) / 100
    
    // Calculate payment
    let payment: Float = Float((loanAmount * interestRate) / (1 - pow(1 + interestRate, -numOfPayments)))
    
    // Return payment as Float, rounded to two decimal places
    return round(payment * 100) / 100
}

// Print Scenarios
// 2-month loan of $20,000, 4.4% APR, compounded monthly
let scenario1 = payment(20000, 2, 4.4 / 12)
print("A 2-month loan of $20,000 at 4.4% APR compounded monthly would have a monthly payment of: $\(scenario1)\n")

// 30-year loan of $150,000, 5% APR, one annual payment each year for 30 years, compounded annually
let scenario2 = payment(150000, 30, 5)
print("A 30-year loan of $150,000 at 5% APR compounded and paid annually would have an annual payment of $\(scenario2)\n")
