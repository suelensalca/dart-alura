// ignore_for_file: avoid_relative_lib_imports

import '../lib/cliente.dart';
import '../lib/contacorrente.dart';

void main() {
  ContaCorrente contaTimoteo = ContaCorrente();
  ContaCorrente contaErnesto = ContaCorrente();

  Cliente timoteo = Cliente();
  timoteo.nome = "Timoteo";
  timoteo.cpf = "123.456.789-00";
  timoteo.profissao = "Programador";

  contaTimoteo.titular = timoteo;

  print("Titular: ${contaTimoteo.titular.nome}");

  contaTimoteo.definirSaldo(-100);

  print(contaTimoteo.obterSaldo());

  Cliente ernesto = Cliente()
    ..nome = "Ernesto"
    ..cpf = "123.555.666-77"
    ..profissao = "Programador";

  contaErnesto.titular = ernesto;

  print("Titular: ${contaErnesto.titular.nome}");
}
