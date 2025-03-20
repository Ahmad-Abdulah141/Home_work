//2. Arithmetic Operators, Conditional Statements & Functions
//Write a function `calculateBonus(int salary, int yearsWorked)` that calculates a
//bonus based on the following rules:
//- If the employee has worked for 5 or more years, they get a 10% bonus.
//- Otherwise, they get a 5% bonus.
//The function should return the bonus amount.
//Then, call the function inside `main()` and print the result.

double calculateBonus(int salary, int yearsWorked) {
  double bonusPercentage;
  if (yearsWorked >= 5) {
    bonusPercentage = 0.10;
  } else {
    bonusPercentage = 0.05;
  }
  return salary * bonusPercentage;
}

void main() {
  int salary = 15000;
  int yearsWorked = 7;
  double bonus = calculateBonus(salary, yearsWorked);
  print("Bonus: \$${bonus.toStringAsFixed(2)}");
  yearsWorked = 3;
  bonus = calculateBonus(salary, yearsWorked);
  print("Bonus: \$${bonus.toStringAsFixed(2)}");
}
