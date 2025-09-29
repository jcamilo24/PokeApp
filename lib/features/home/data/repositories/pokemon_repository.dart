part of co.com.poke.home;

class PokemonRepository {
  final Dio _dio = Dio();

  Future<List<PokemonModel>> fetchPokemons() async {
    try {
      final response =
          await _dio.get("https://pokeapi.co/api/v2/pokemon?limit=20");

      final data = response.data;
      final List results = data['results'];

      return results.map((json) => PokemonModel.fromJson(json)).toList();
    } on DioException catch (e) {
      throw Exception("Error en la petición: ${e.message}");
    } catch (e) {
      throw Exception("Error inesperado: $e");
    }
  }

  Future<PokemonDetailModel> fetchPokemonDetail(String url) async {
    try {
      final response = await _dio.get(url);
      return PokemonDetailModel.fromJson(response.data);
    } catch (e) {
      throw Exception("Error al cargar detalle: $e");
    }
  }
}
