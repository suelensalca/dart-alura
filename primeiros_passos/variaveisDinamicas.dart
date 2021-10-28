void main() {
  // com dynamic o tipo pode mudar
  dynamic idade = 28;
  idade = 28.8;
  // com var o dart interpreta o tipo da variavel sozinho
  var salario = 1250.60;
  var texto = "Minha idade é $idade e meu salário $salario";
  print(texto);
}
