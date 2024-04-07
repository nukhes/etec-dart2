// EXERCICIO 04
aplicarDesconto(num valorProduto, num codigo) {
  num descontoAbsoluto = 0;

  calcularDesconto(num fator) {
    descontoAbsoluto = valorProduto * fator;
    valorProduto += descontoAbsoluto;
  }

  if (valorProduto > 30 && valorProduto < 100) {
    calcularDesconto(0.1);
  } else if (valorProduto > 100) {
    calcularDesconto(0.15);
  }

  return [
    valorProduto.toStringAsFixed(2),
    codigo.toStringAsFixed(0),
    descontoAbsoluto.toStringAsFixed(2)
  ];
}

// EXERCICIO 05
verificarSenha(String senha) {
  switch (senha) {
    case '9999':
      return true;
    default:
      return false;
  }
}

verificarSaque(double saque) {
  sacar() {
    var saqueImposto = saque * 0.038;
    var saldoRestante = 50000 - (saque + saqueImposto);

    return [
      saldoRestante.toStringAsFixed(2), 
      saque.toStringAsFixed(2), 
      saqueImposto.toStringAsFixed(2)
    ];
  }

  if (saque < 50000) {
    return sacar();
  } else {
    return false;
  }
}
