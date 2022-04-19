import 'dart:math';

void main() {
  Circulo c = Circulo(5);
  c.raio = 2;
  c.cCircunf();
  print("Circunferencia: ${c.cCircunf()}");
  print("Area: ${c.cArea()}");
}

class Circulo {
  double _raio;

  Circulo(this._raio);

  //double get raio => _raio;

  set raio(double raio) => this._raio = raio;

  double cCircunf() => (this._raio * 2 * pi);

  double cArea() => ((this._raio * this._raio) * pi);
}
