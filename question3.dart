Question 3

class BankAccount {
  String accountNumber;
  String accountHolder;
  double balance;
  String accountType;

  BankAccount(this.accountNumber, this.accountHolder, this.accountType)
      : balance = 0.0;

  void deposit(double amount) {
    balance += amount;
  }

  void withdraw(double amount) {
    if (amount <= balance) {
      balance -= amount;
    } else {
      print("Insufficient funds for withdrawal of $amount from account $accountNumber");
    }
  }

  double getBalance() {
    return balance;
  }

  void displayAccountInfo() {
    print("Account: $accountNumber, Holder: $accountHolder, Type: $accountType, Balance: $balance");
  }
}

void main() {
  BankAccount acc1 = BankAccount("12345", "Alice", "Savings");
  BankAccount acc2 = BankAccount("67890", "Bob", "Checking");
  BankAccount acc3 = BankAccount("54321", "Charlie", "Savings");

  acc1.deposit(1500.0);
  acc2.deposit(1000.0);
  acc3.deposit(500.0);

  acc2.withdraw(200.0);
  acc2.withdraw(1000.0); 

  acc1.displayAccountInfo();
  acc2.displayAccountInfo();
  acc3.displayAccountInfo();
}

