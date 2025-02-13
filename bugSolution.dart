```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<Map<String, dynamic>?> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = json.decode(response.body);
      return jsonData;
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } on SocketException catch (e) {
    print('Network error: $e');
    // Consider retrying here after a delay
    return null; //or rethrow
  } on FormatException catch (e) {
    print('JSON parsing error: $e');
    return null; // or rethrow
  } catch (e) {
    print('An unexpected error occurred: $e');
    rethrow; //or return null
  }
}

void main() async {
  final data = await fetchData();
  if (data != null) {
      print('Data fetched successfully: $data');
  } else {
    print('Failed to fetch data.');
  }
}
```