import 'package:netflix/core/strings.dart';
import 'package:netflix/infrastructure/api_key.dart';

class ApiEndpoints {
  static const downloads = "$kbaseUrl/trending/all/day?api_key=$apiKey";
}
