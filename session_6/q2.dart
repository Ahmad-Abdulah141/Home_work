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

class PersonalLoan extends Loan {
  PersonalLoan({required String borrowerName, required double loanAmount})
    : super(
        borrowerName: borrowerName,
        loanAmount: loanAmount,
        interestRate: 0.10,
      );

  @override
  double calculateMonthlyInstallment(int months) {
    double monthlyInterestRate = interestRate / 12;
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

class HomeLoan extends Loan {
  HomeLoan({required String borrowerName, required double loanAmount})
    : super(
        borrowerName: borrowerName,
        loanAmount: loanAmount,
        interestRate: loanAmount > 500000 ? 0.095 : 0.08,
      );

  @override
  double calculateMonthlyInstallment(int months) {
    double monthlyInterestRate = interestRate / 12;
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

class CarLoan extends Loan {
  CarLoan({required String borrowerName, required double loanAmount})
    : super(
        borrowerName: borrowerName,
        loanAmount: loanAmount,
        interestRate: 0.07,
      );

  @override
  double calculateMonthlyInstallment(int months) {
    double actualLoanAmount = loanAmount;
    if (loanAmount > 50000) {
      actualLoanAmount += loanAmount * 0.02;
    }
    double monthlyInterestRate = interestRate / 12;
    double numerator =
        actualLoanAmount *
        monthlyInterestRate *
        pow((1 + monthlyInterestRate), months);
    double denominator = pow((1 + monthlyInterestRate), months) - 1;
    if (denominator == 0) {
      return actualLoanAmount / months;
    }
    return numerator / denominator;
  }
}

void main() {
  var personalLoan = PersonalLoan(borrowerName: "John Doe", loanAmount: 20000);
  print(
    "Personal Loan Monthly Installment (60 months): \$${personalLoan.calculateMonthlyInstallment(60).toStringAsFixed(2)}",
  );

  var smallHomeLoan = HomeLoan(borrowerName: "Jane Smith", loanAmount: 400000);
  print(
    "Small Home Loan Monthly Installment (30 years): \$${smallHomeLoan.calculateMonthlyInstallment(360).toStringAsFixed(2)}",
  );

  var largeHomeLoan = HomeLoan(borrowerName: "Peter Jones", loanAmount: 600000);
  print(
    "Large Home Loan Monthly Installment (30 years): \$${largeHomeLoan.calculateMonthlyInstallment(360).toStringAsFixed(2)}",
  );

  var smallCarLoan = CarLoan(borrowerName: "Alice Brown", loanAmount: 40000);
  print(
    "Small Car Loan Monthly Installment (48 months): \$${smallCarLoan.calculateMonthlyInstallment(48).toStringAsFixed(2)}",
  );

  var largeCarLoan = CarLoan(borrowerName: "Bob Green", loanAmount: 60000);
  print(
    "Large Car Loan Monthly Installment (48 months): \$${largeCarLoan.calculateMonthlyInstallment(48).toStringAsFixed(2)}",
  );
}
