import 'dart:io';

class Produto{
 String nomeProduto;
 int idProduto;
 int quantidadeEstoque;
 double valor;
 String categoria;

    Produto(this.nomeProduto, this.idProduto, this.quantidadeEstoque, this.valor, this.categoria);
}

class Categoria extends Produto {
 late String categoria;

  Categoria(super.nomeProduto, super.idProduto, super.quantidadeEstoque, super.valor, super.categoria);

  String acessarCategoriaDeProduto() {
    // Acessando o atributo 'categoria' da superclasse 'Produto'
    return categoria;
  }
}


class CarrinhoDeCompras{
   List<Produto> itens = [];

  // Adicionar um produto ao carrinho
  void adicionarItem(Produto produto) {
    itens.add(produto);
  }

  // Remover um produto do carrinho
  void removerItem(Produto produto) {
    itens.remove(produto);
  }

  // Calcular o total da compra
  double calcularTotal() {
    double total = 0;
    for (var produto in itens) {
      total += produto.valor;
    }
    return total;
  }
}

void main(){
}