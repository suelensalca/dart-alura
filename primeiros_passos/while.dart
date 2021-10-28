void main() {
  int contador = 0;
  while (contador != 5) {
    print("O valor do contador é $contador");
    contador++;
  }

  do {
    print("o valor final é $contador");
    contador++;
  } while (contador > 4 && contador <= 5);

  double valor = 100;

  do {
    print("Esse é um comando muito perigoso. Não imprima isso!");
    valor = valor / 2;
  } while (valor < 100);
}
