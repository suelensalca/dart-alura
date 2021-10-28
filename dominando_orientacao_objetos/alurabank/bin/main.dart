void main() {
  ContaCorrente contaTimoteo = ContaCorrente();
  contaTimoteo.titular = "Timóteo";
  contaTimoteo.agencia = 123;
  contaTimoteo.conta = 1234;
  contaTimoteo.saldo = 20.0;
  contaTimoteo.chequeEspecial = -200;

  print("Titular: ${contaTimoteo.titular}");
  print("Agência: ${contaTimoteo.agencia}");
  print("Conta: ${contaTimoteo.conta}");
  print("Saldo: ${contaTimoteo.saldo}");

  ContaCorrente contaErnesto = ContaCorrente();
  contaErnesto.titular = "Ernesto";
  contaErnesto.agencia = 123;
  contaErnesto.conta = 1235;
  contaErnesto.saldo = 40.0;

  // saque considerando cheque especial de 100 reais
  // double saque = 180.0;
  // if (contaTimoteo.saldo - saque < -100) {
  //   print("Sem saldo suficiente.");
  // } else {
  //   print("Sacando $saque reais");
  //   contaTimoteo.saldo -= saque;
  // }
  // print("Saldo do ${contaTimoteo.titular}: ${contaTimoteo.saldo}");

  contaTimoteo.saque(80.0);
  print("Saldo do ${contaTimoteo.titular}: ${contaTimoteo.saldo}");

  contaTimoteo.deposito(100.0);
  print("Saldo do ${contaTimoteo.titular}: ${contaTimoteo.saldo}");

  // adicionando tipo de retorno aos métodos podemos ter um valor de retorno.

  double sucesso = contaTimoteo.deposito(20.0);
  print("Saldo do ${contaTimoteo.titular}: $sucesso");

  // métodos com mais de um argumento, transferencia

  print("--Início da transferência--");
  print("Saldo do ${contaTimoteo.titular}: ${contaTimoteo.saldo}");
  print("Saldo do ${contaErnesto.titular}: ${contaErnesto.saldo}");
  bool sucesso1 = contaTimoteo.transferencia(20.0, contaErnesto);
  print(sucesso1);
  print("Saldo do ${contaTimoteo.titular}: ${contaTimoteo.saldo}");
  print("Saldo do ${contaErnesto.titular}: ${contaErnesto.saldo}");
}

class ContaCorrente {
  late String titular;
  late int agencia;
  late int conta;
  late double saldo = 0.0;
  late double chequeEspecial = -100.0;

  bool saque(double valorDoSaque) {
    // ignore: unnecessary_this
    if (this.saldo - valorDoSaque < chequeEspecial) {
      print("Sem saldo suficiente.");
      return false;
    } else {
      print("Sacando $valorDoSaque reais");
      // ignore: unnecessary_this
      this.saldo -= valorDoSaque;
      return true;
    }
  }

  bool transferencia(double valorTransferencia, ContaCorrente contaDestino) {
    // ignore: unnecessary_this
    if (this.saldo - valorTransferencia < chequeEspecial) {
      print("Sem saldo suficiente");
      return false;
    } else {
      // ignore: unnecessary_this
      this.saldo -= valorTransferencia;
      contaDestino.deposito(valorTransferencia);
      return true;
    }
  }

  double deposito(double valorDeposito) {
    // ignore: unnecessary_this
    this.saldo += valorDeposito;
    print("Depósito de $valorDeposito");
    // ignore: unnecessary_this
    return this.saldo;
  }
}
