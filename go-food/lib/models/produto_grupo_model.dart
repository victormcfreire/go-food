import 'package:json_annotation/json_annotation.dart';
import 'package:go_food/models/produto_model.dart';

part 'produto_grupo_model.g.dart';

@JsonSerializable()
class ProdutoGrupo {
  final String nome;
  final List<Produto> produtos;

  ProdutoGrupo({
    required this.nome,
    required this.produtos,
  });

  factory ProdutoGrupo.fromJson(Map<String, dynamic> json) =>
      _$ProdutoGrupoFromJson(json);

  Map<String, dynamic> toJson() => _$ProdutoGrupoToJson(this);
}

// final List<ProdutoGrupo> listaGruposProduto = List.generate(
//   ,
//   (index) => ProdutoGrupo(
//     nome: categorias[index]['nome'],
//     produtos: List.generate(
//       productItems.length,
//       (index) => Produto(
//         id: (productItems[index]['id'] + index),
//         nome: productItems[index]['name'],
//         descricao: productItems[index]['description'],
//         preco: productItems[index]['price'],
//         imagem: productItems[index]['image'] ?? '',
//         desconto: productItems[index]['discount'],
//       ),
//     ),
//   ),
// );
