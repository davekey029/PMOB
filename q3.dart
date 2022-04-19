void main() {
  List<Livro> l = [];

  l.add(Livro("Clarice Lispector", "Editora Limiar", "15", "Laços de Família", "1960"));
  
  }

class Livro {
  String _autor;
  String _editora;
  String _isbn;
  String _titulo;
  String _anoEdicao;

  Livro(this._autor, this._editora, this._isbn, this._titulo, this._anoEdicao);

  //@override
  String toString() =>
      "Autor: ${this._autor}, Editora: ${this._editora}, ISBN: ${this._isbn}, Título: ${this._titulo}, Ano de Edição: ${this._anoEdicao}";
}

class Menu {
  
}
