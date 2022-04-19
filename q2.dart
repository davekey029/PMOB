void main() {
  Retangulo r = Retangulo(3, 8);
  r.menu();
}

class Retangulo {
  double _base, _altura;

  Retangulo(this._base, this._altura);

  set base(double base) => this._base = base;

  set altura(double altura) => this._altura = altura;

  double cArea() => (this._altura * this._base);
  double cPerimetro() => (2 * this._altura + 2 * this._base);

  void menu() {
    int opc;

    print(
        "0. Criar retângulo. Digite os valores (base e altura, respectivamente)");
    print("1. Calcular Area.");
    print("2. Calcular Perímetro.");
    print("3. Sair\n");
    //ALTERAR ESSA VARIÁVEL PARA MUDAR A ESCOLHA NO MENU.
    opc = 0;

    switch (opc) {
      case 0:
        print("Criar retângulo selecionado!\n");
        print("Base: $_base; Altura: $_altura");

        break;
      case 1:
        print("Calcular Area selecionado!\n");
        print("Area: ${cArea()}");
        break;
      case 2:
        print("Calcular Perimetro selecionado!\n");
        print("Perimetro: ${cPerimetro()}");
        break;
      case 3:
        print("Saindo...");
        break;
    }
  }
}
