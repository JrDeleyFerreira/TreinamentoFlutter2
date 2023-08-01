import 'package:flutter/material.dart';
import '../models/campo.dart';
import '../models/tabuleiro.dart';
import 'campo_widget.dart';

class TabuleiroWidget extends StatelessWidget {
  final Tabuleiro tabuleiro;
  final void Function(Campo) onAbrir;
  final void Function(Campo) onAlternarMarcacao;

  const TabuleiroWidget({
    required this.tabuleiro,
    required this.onAbrir,
    required this.onAlternarMarcacao,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: tabuleiro.colunas,
      children: tabuleiro.campos.map((c) {
        return CampoWidget(
          campo: c,
          onAbrir: onAbrir,
          onAlternarMarcacao: onAlternarMarcacao,
        );
      }).toList(),
    );
  }
}
