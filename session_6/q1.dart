import 'dart:math';

abstract class Loan {
  String borrowerName;
  double loanAmount;
  double interestRate;
  Loan({
    required this.borrowerName,
    required this.loanAmount,
    required this.interestRate,
  });

  double calculateMonthlyInstallment(int months);
}

class CarLoan extends Loan {
  String carModel;

  CarLoan({
    required String borrowerName,
    required double loanAmount,
    required double interestRate,
    required this.carModel,
  }) : super(
         borrowerName: borrowerName,
         loanAmount: loanAmount,
         interestRate: interestRate,
       );

  @override
  double calculateMonthlyInstallment(int months) {
    double monthlyInterestRate = interestRate / 12 / 100;
    double numerator =
        loanAmount *
        monthlyInterestRate *
        pow((1 + monthlyInterestRate), months);
    double denominator = pow((1 + monthlyInterestRate), months) - 1;
    if (denominator == 0) {
      return loanAmount / months;
    }
    return numerator / denominator;
  }
}

void main() {
  var myCarLoan = CarLoan(
    borrowerName: "Alice Smith",
    loanAmount: 20000,
    interestRate: 6.5,
    carModel: "Sedan X",
  );

  int loanTermMonths = 60;
  double monthlyPayment = myCarLoan.calculateMonthlyInstallment(loanTermMonths);

  print("Borrower: ${myCarLoan.borrowerName}");
  print("Loan Amount: \$${myCarLoan.loanAmount}");
  print("Interest Rate: ${myCarLoan.interestRate}%");
  print("Car Model: ${myCarLoan.carModel}");
  print("Loan Term: $loanTermMonths months");
  print("Monthly Installment: \$${monthlyPayment.toStringAsFixed(2)}");
}
