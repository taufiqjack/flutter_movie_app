// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'package:flutter_dotenv/flutter_dotenv.dart';

const String ENV_PATH = '.env';
String domain = '${dotenv.env['BASE_URL']}';
String apiKey = '${dotenv.env['API_KEY']}';
String IMAGE = '${dotenv.env['IMAGE_PATH']}';
String cctv = '${dotenv.env['URI_CCTV']}';
