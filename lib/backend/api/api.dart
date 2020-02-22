import 'dart:convert';

import 'package:flutter_sizeguide/backend/api/request.dart';
import 'package:http/http.dart' as http;
import 'package:html_unescape/html_unescape.dart';

class ResultAPI {

  Future<String> get(Request request) async {
    var unescape = new HtmlUnescape();
    var url = 'https://www.mitdybdahl.dk/sizeguide/backend.api/' +
        request.buildParameters();
    var response = await http.get(url);
    var html_decoded = unescape.convert(response.body);
    return json.decode(html_decoded).cast<Map<Future<String>, dynamic>>();
  }

}
