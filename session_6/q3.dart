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

class LoanProcessingSystem {
  List<Loan> _loans = [];

  void applyLoan(Loan loan) {
    _loans.add(loan);
    print("Loan application received for ${loan.borrowerName}.");
  }

  void calculateInstallments(int months) {
    if (_loans.isEmpty) {
      print("No loans in the system to calculate installments for.");
      return;
    }
    print("\n--- Monthly Installment Calculations (for $months months) ---");
    for (var loan in _loans) {
      double installment = loan.calculateMonthlyInstallment(months);
      print(
        "${loan.borrowerName}'s ${loan.runtimeType} - Monthly Installment: \$${installment.toStringAsFixed(2)}",
      );
    }
  }
}

void main() {
  var processingSystem = LoanProcessingSystem();

  var personalLoan1 = PersonalLoan(borrowerName: "John Doe", loanAmount: 20000);
  processingSystem.applyLoan(personalLoan1);

  var homeLoan1 = HomeLoan(borrowerName: "Jane Smith", loanAmount: 450000);
  processingSystem.applyLoan(homeLoan1);

  var carLoan1 = CarLoan(borrowerName: "Peter Jones", loanAmount: 60000);
  processingSystem.applyLoan(carLoan1);

  processingSystem.calculateInstallments(60);
  processingSystem.calculateInstallments(360);
}
