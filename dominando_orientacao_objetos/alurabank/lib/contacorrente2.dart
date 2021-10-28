// ignore_for_file: unnecessary_this

import 'cliente.dart';

class ContaCorrente {
  // construtor exige que esses valores estejam no objeto
  ContaCorrente(int novaAgencia, this.conta) {
    if (novaAgencia > 0) _agencia = novaAgencia;
    totalContasCorrentes++;
  }

  static int totalContasCorrentes = 0;

  late Cliente titular;
  late int _agencia = 145;
  int get agencia => _agencia;
  set agencia(int novaAgencia) {
    if (novaAgencia > 0) _agencia = novaAgencia;
  }

  late int conta;
  late double _saldo = 0.0;
  late double chequeEspecial = -100.0;

  double get saldo {
    return _saldo;
  }

  set saldo(double novoSaldo) {
    if (novoSaldo >= chequeEspecial) {
      _saldo = novoSaldo;
    } else {
      print("Erro! Valor de saldo menor do que o cheque especial.");
    }
  }

  bool verificaSaldo(double valor) {
    if (this.saldo - valor < chequeEspecial) {
      print("Sem saldo suficiente");
      return false;
    } else {
      print("Movimentando $valor reais.");
      return true;
    }
  }

  bool saque(double valorDoSaque) {
    if (!verificaSaldo(valorDoSaque)) {
      return false;
    } else {
      this.saldo -= valorDoSaque;
      return true;
    }
  }

  bool transferencia(double valorTransferencia, ContaCorrente contaDestino) {
    if (this.saldo - valorTransferencia < chequeEspecial) {
      print("Sem saldo suficiente");
      return false;
    } else {
      this.saldo -= valorTransferencia;
      contaDestino.deposito(valorTransferencia);
      return true;
    }
  }

  double deposito(double valorDeposito) {
    this.saldo += valorDeposito;
    print("Depósito de $valorDeposito");
    return this.saldo;
  }
}
