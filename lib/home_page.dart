import 'package:flutter/material.dart';
import 'pokemon.dart';
import 'pokemon_repository.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Pokemon> pokedex = List.from(PokemonRepository.pokedex);
  List<Pokemon> selectedPokemons = [];

  bool isSorted = false;

  void sort() {
    setState(() {
      pokedex.sort((Pokemon a, Pokemon b) {
        final nameA = a.nome ?? '';
        final nameB = b.nome ?? '';

        return isSorted ? nameB.compareTo(nameA) : nameA.compareTo(nameB);
      });

      isSorted = !isSorted;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Pokédex',
          style: TextStyle(
            color: Colors.white,
            fontSize: 28,
            fontWeight: FontWeight.normal,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () => sort(),
            icon: Icon(Icons.swap_vert_rounded),
            color: Colors.white,
          ),
        ],
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),

      body: ListView.builder(
        padding: EdgeInsets.all(16),
        itemCount: pokedex.length,
        itemBuilder: (BuildContext context, int index) {
          final pokemon = pokedex[index];

          // criação de uma tabela
          return ListTile(
            // o que vem a esquerda da tabela
            leading: SizedBox(
              width: 40,
              child: Image.network(pokemon.imagem ?? ''),
            ),

            // titulo da célula
            title: Text(
              pokedex[index].nome ?? '',
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                fontFamily: 'PokemonSolid',
              ),
            ),

            // subtitulo da célula
            subtitle: Text(
              'Tipo: ${pokemon.tipo}\nAltura: ${pokemon.altura} m',
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
            ),

            // o que vem a direita da tabela
            trailing: const Icon(Icons.arrow_forward_ios, size: 16),

            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(12)),
            ),

            selected: selectedPokemons.contains(pokemon),
            selectedTileColor: Colors.indigo.shade50,
            selectedColor: Colors.black,
            textColor: Colors.black,

            onLongPress: () {
              setState(() {
                (selectedPokemons.contains(pokemon))
                    ? selectedPokemons.remove(pokemon)
                    : selectedPokemons.add(pokemon);
              });
            },
          );
        },
      ),
    );
  }
}
