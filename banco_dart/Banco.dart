import 'conta.dart';
import 'titular.dart';

void main() {
  Titular titular1 = Titular("João", "123456789", "Rua A");
  Conta conta1 = Conta.comSaldoInicial("1", titular1, 1000.0);

  Titular titular2 = Titular("Maria", "987654321", "Rua B");
  Conta conta2 = Conta.comSaldoInicial("2", titular2, 500.0);

  conta1.mostrarSaldo();
  conta2.mostrarSaldo();

  conta1.depositar(200.0);
  conta1.mostrarSaldo();

  conta1.transferir(conta2, 300.0);
  conta1.mostrarSaldo();
  conta2.mostrarSaldo();

  conta2.sacar(100.0);
  conta2.mostrarSaldo();
}
