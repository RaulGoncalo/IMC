class ValorInvalidoException implements Exception {
  final String _mensagem;

  ValorInvalidoException(this._mensagem);

  String error() => _mensagem;

  @override
  String toString() {
    return "ValorInvalidoException: ${error()}";
  }
}
