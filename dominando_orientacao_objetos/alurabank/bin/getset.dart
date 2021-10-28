// ignore_for_file: avoid_relative_lib_imports, unused_import

import '../lib/cliente.dart';
import '../lib/contacorrente2.dart';

void main() {
  ContaCorrente contaTimoteo = ContaCorrente(111, 1114);
  ContaCorrente contaErnesto = ContaCorrente(-123, 1234);

  contaTimoteo.saldo = -100;

  print(contaTimoteo.saldo);
  print(contaErnesto.saldo);

  contaErnesto.agencia = -12345;

  print(contaErnesto.agencia);

  print(ContaCorrente.totalContasCorrentes);
}
