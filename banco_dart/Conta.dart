import 'titular.dart';

class Conta {
  String id;
  Titular titular;
  double saldo;

  Conta(this.id, this.titular, this.saldo);

  Conta.comSaldoInicial(this.id, this.titular, double saldo)
      : saldo = saldo < 0 ? 0 : saldo;

  double getSaldo() {
    return saldo;
  }

  void depositar(double valor) {
    if (valor > 0) {
      saldo += valor;
      print("Depósito de $valor realizado com sucesso.");
    } else {
      print("Valor de depósito inválido.");
    }
  }

  bool sacar(double valor) {
    if (valor > 0 && saldo >= valor) {
      saldo -= valor;
      print("Saque de $valor realizado com sucesso.");
      return true;
    } else {
      print("Saque não realizado. Saldo insuficiente ou valor inválido.");
      return false;
    }
  }

  bool transferir(Conta destino, double valor) {
    if (valor > 0 && saldo >= valor) {
      saldo -= valor;
      destino.depositar(valor);
      print(
          "Transferência de $valor para ${destino.titular.nome} realizada com sucesso.");
      return true;
    } else {
      print(
          "Transferência não realizada. Saldo insuficiente ou valor inválido.");
      return false;
    }
  }

  void mostrarSaldo() {
    print("Saldo atual da conta de ${titular.nome}: $saldo");
  }
}
import 'titular.dart';

class Conta {
  String id;
  Titular titular;
  double saldo;

  Conta(this.id, this.titular, this.saldo);

  Conta.comSaldoInicial(this.id, this.titular, double saldo)
      : saldo = saldo < 0 ? 0 : saldo;

  double getSaldo() {
    return saldo;
  }

  void depositar(double valor) {
    if (valor > 0) {
      saldo += valor;
      print("Depósito de $valor realizado com sucesso.");
    } else {
      print("Valor de depósito inválido.");
    }
  }

  bool sacar(double valor) {
    if (valor > 0 && saldo >= valor) {
      saldo -= valor;
      print("Saque de $valor realizado com sucesso.");
      return true;
    } else {
      print("Saque não realizado. Saldo insuficiente ou valor inválido.");
      return false;
    }
  }

  bool transferir(Conta destino, double valor) {
    if (valor > 0 && saldo >= valor) {
      saldo -= valor;
      destino.depositar(valor);
      print(
          "Transferência de $valor para ${destino.titular.nome} realizada com sucesso.");
      return true;
    } else {
      print(
          "Transferência não realizada. Saldo insuficiente ou valor inválido.");
      return false;
    }
  }

  void mostrarSaldo() {
    print("Saldo atual da conta de ${titular.nome}: $saldo");
  }
}
