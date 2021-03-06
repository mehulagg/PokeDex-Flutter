/*
 * Copyright 2020 Harshith Shetty (justadeveloper96@gmail.com)
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 *  Unless required by applicable law or agreed to in writing, software
 *  distributed under the License is distributed on an "AS IS" BASIS,
 *  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 *  See the License for the specific language governing permissions and
 * limitations under the License.
 */

import 'package:pokedex_flutter/data/pokemon_list/model/pokemon_list_response.dart';
import 'package:pokedex_flutter/data/pokemon_list/network/pokemon_list_api.dart';
import 'package:pokedex_flutter/utils/NetworkResult.dart';
import 'package:pokedex_flutter/utils/dev_tools/ILogger.dart';

class PokemonListRepository {
  ILogger _logger;
  final PokemonListApi _network;

  PokemonListRepository(this._logger, this._network);

  Future<NetworkResult<PokemonListResponse>> loadList(
      int limit, int offset) async {
    return await _network.loadList(limit, offset);
  }
}
