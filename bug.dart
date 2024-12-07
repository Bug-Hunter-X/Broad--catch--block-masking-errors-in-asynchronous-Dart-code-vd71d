```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Assuming JSON response
      final jsonResponse = jsonDecode(response.body);
      // Access data from jsonResponse
      print(jsonResponse['key']); 
    } else {
      throw Exception('Failed to load data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    // Handle error. Note that this might catch unrelated exceptions
    print('Error: $e');
  }
}
```