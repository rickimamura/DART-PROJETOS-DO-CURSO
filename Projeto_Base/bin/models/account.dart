class Account {
  String name;
  double balance;
  bool isAuthenticated;

  Account(
      {required this.name,
      required this.balance,
      required this.isAuthenticated}):
      assert(name.isNotEmpty, "O nome nao pode ser uma String vazia"),
      assert(balance >= 0, "O Saldo não pode ser negativo!");
      // asserts só serve para tratar erros em tempo de desenvolvimento!

  editBalance({required value}) {
    balance = balance + value;
  }
}
