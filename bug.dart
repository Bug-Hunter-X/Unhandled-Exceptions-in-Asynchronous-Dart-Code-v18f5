```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://example.com/data'));
    if (response.statusCode == 200) {
      // Process the data
      final jsonData = json.decode(response.body);
      // Use jsonData
    } else {
      // Handle error
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exceptions, including network issues
    print('Error: $e');
    // Rethrow the exception to be handled higher up if needed
    rethrow; 
  }
}
```