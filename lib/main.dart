import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp( //ponto inicial do aplicativo
    debugShowCheckedModeBanner: false, //remove a tarja de depuração
    title: 'App Flutter',
    home: Exemplo1Home(), //classe que representa a tela inicial
  ));
}

// classe que representa o widget da tela inicial
class Exemplo1Home extends StatelessWidget {
  //utiliza o mesmo construtor da classe super
  const Exemplo1Home({super.key});

  // Widget raiz da aplicação
  @override
  //Widget que constroi a interface com o usuário (context)
  Widget build(BuildContext context) {
    //definição do layout padrão do aplicativo
    return Scaffold(
      appBar: AppBar(
        leading: const IconButton(
          icon: Icon(Icons.menu),
          tooltip: 'Menu de Navegação',
          onPressed: null,
        ),
        title:  Text('Exemplo de Título'),
        actions: <Widget>[
          IconButton(onPressed: null,
              icon: Icon(Icons.search),
          tooltip: 'Buscar',),
        ],
      ),

      body: Center(
        child: Text('Meu primeiro App'),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Adicionar',
        child: Icon(Icons.add),
        onPressed: null,
      ),
    );
  }
}
