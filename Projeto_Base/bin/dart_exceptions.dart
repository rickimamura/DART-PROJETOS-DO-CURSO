import 'controllers/bank_controller.dart';
import 'exceptions/bank_controller_exceptions.dart';
import 'models/account.dart';

void main() {
  // Criando o banco
  BankController bankController = BankController();

  // Adicionando contas
  bankController.addAccount(
      id: "Ricarth",
      account:
          Account(name: "Ricarth Lima", balance: 400, isAuthenticated: true));

  bankController.addAccount(
      id: "Kako",
      account:
          Account(name: "Caio Couto", balance: 600, isAuthenticated: true));

  // Fazendo transferência
  try {
    bool result = bankController.makeTransfer(
        idSender: "Kako", idReceiver: "Ricarth", amount: 700);
    if (result) {
      print("Transação concluida com sucesso!");
    }
    // Observando resultado
  } on SenderIdInvalidException catch (e) {
    print(e);
    print("O ID ${e.idSender} não é um ID válido.");
  } on ReceiverIdInvalidException catch (e) {
    print(e);
    print("O ID ${e.idReceiver} do destinatário não é um ID válido.");
  } on SenderNotAuthenticatedException catch (e) {
    print(e);
    print("O usuário remetente do ID ${e.idSender} não esta autenticado!.");
  } on SenderBalanceLowerThanAmountException catch (e) {
    print(e);
    print(
        "O usuário de ID ${e.idSender} tentou enviar ${e.amount} sendo que na sua conta tem apenas ${e.senderBalance}! .");
  } on Exception {
    print("Algo deu errado!");
  }
}
