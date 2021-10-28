// ignore_for_file: unnecessary_this

import 'cliente.dart';

class ContaCorrente {
  late Cliente titular;
  late int agencia;
  late int conta;
  late double _saldo = 0.0;
  late double chequeEspecial = -100.0;

  void definirSaldo(double novoSaldo) {
    if (novoSaldo >= chequeEspecial) {
      this._saldo = novoSaldo;
    } else {
      print("Erro! Saldo menor que o cheque especial.");
    }
  }

  double obterSaldo() {
    return this._saldo;
  }

  bool verificaSaldo(double valor) {
    if (this._saldo - valor < chequeEspecial) {
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
      this._saldo -= valorDoSaque;
      return true;
    }
  }

  bool transferencia(double valorTransferencia, ContaCorrente contaDestino) {
    if (this._saldo - valorTransferencia < chequeEspecial) {
      print("Sem saldo suficiente");
      return false;
    } else {
      this._saldo -= valorTransferencia;
      contaDestino.deposito(valorTransferencia);
      return true;
    }
  }

  double deposito(double valorDeposito) {
    this._saldo += valorDeposito;
    print("Depósito de $valorDeposito");
    return this._saldo;
  }
}
