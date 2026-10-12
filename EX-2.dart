class BankAccount {
  // TODO
  final int account_num;
  final String account_name;
  double _balance;
  BankAccount({
    required this.account_num,
    required this.account_name,
    this._balance = 0,
  });
  double get balance {
    return _balance;
  }
  void withdraw(double amount) {
    if (amount > _balance) {
      throw Exception("ot mean luy te brader");
    }
    _balance -= amount;
  }

  void credit(double amount) {
    _balance += amount;
  }
}

class Bank {
  // TODO
  final String name;
  final List<BankAccount> _accounts = [];
  Bank({required this.name});
  BankAccount createAccount(int accountId, String account_name) {
    for (final account in _accounts) {
      if (account.account_num == accountId) {
        throw Exception("already taken");
      }
    }
    final newAccount = BankAccount(
      account_num: accountId,
      account_name: account_name,
    );
    _accounts.add(newAccount);
    return newAccount;
  }
}

void main() {
  Bank myBank = Bank(name: "CADT Bank");
  BankAccount ronanAccount = myBank.createAccount(100, 'Ronan');

  print(ronanAccount.balance); // Balance: $0
  ronanAccount.credit(100);
  print(ronanAccount.balance); // Balance: $100
  ronanAccount.withdraw(50);
  print(ronanAccount.balance); // Balance: $50

  try {
    ronanAccount.withdraw(75); // This will throw an exception
  } catch (e) {
    print(e); // Output: Insufficient balance for withdrawal!
  }

  try {
    myBank.createAccount(100, 'Honlgy'); // This will throw an exception
  } catch (e) {
    print(e); // Output: Account with ID 100 already exists!
  }
}
