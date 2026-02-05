import 'package:flutter/material.dart';
import 'pokemon.dart';

class PokemonRepository {
  bool isSorted = false;

  static List<Pokemon> pokedex = [
      Pokemon(
        nome: 'Pikachu',
        tipo: 'Elétrico',
        imagem:
            'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/25.png',
        altura: 0.4,
      ),
      Pokemon(
        nome: 'Raichu',
        tipo: 'Elétrico',
        imagem:
            'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/26.png',
        altura: 0.8,
      ),
      Pokemon(
        nome: 'Bulbasaur',
        tipo: 'Planta / Veneno',
        imagem:
            'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/1.png',
        altura: 0.7,
      ),
      Pokemon(
        nome: 'Charmander',
        tipo: 'Fogo',
        imagem:
            'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/4.png',
        altura: 0.6,
      ),
      Pokemon(
        nome: 'Charmeleon',
        tipo: 'Fogo',
        imagem:
            'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/5.png',
        altura: 1.1,
      ),
      Pokemon(
        nome: 'Charizard',
        tipo: 'Fogo / Voador',
        imagem:
            'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/6.png',
        altura: 1.7,
      ),
      Pokemon(
        nome: 'Squirtle',
        tipo: 'Água',
        imagem:
            'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/7.png',
        altura: 0.5,
      ),
      Pokemon(
        nome: 'Wartortle',
        tipo: 'Água',
        imagem:
            'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/8.png',
        altura: 1.0,
      ),
      Pokemon(
        nome: 'Blastoise',
        tipo: 'Água',
        imagem:
            'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/9.png',
        altura: 1.6,
      ),
      Pokemon(
        nome: 'Caterpie',
        tipo: 'Inseto',
        imagem:
            'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/10.png',
        altura: 0.3,
      ),
      Pokemon(
        nome: 'Butterfree',
        tipo: 'Inseto / Voador',
        imagem:
            'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/12.png',
        altura: 1.1,
      ),
      Pokemon(
        nome: 'Pidgey',
        tipo: 'Normal / Voador',
        imagem:
            'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/16.png',
        altura: 0.3,
      ),
      Pokemon(
        nome: 'Gengar',
        tipo: 'Fantasma / Veneno',
        imagem:
            'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/94.png',
        altura: 1.5,
      ),
      Pokemon(
        nome: 'Snorlax',
        tipo: 'Normal',
        imagem:
            'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/143.png',
        altura: 2.1,
      ),
      Pokemon(
        nome: 'Eevee',
        tipo: 'Normal',
        imagem:
            'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/133.png',
        altura: 0.3,
      ),
    ];
  
}
