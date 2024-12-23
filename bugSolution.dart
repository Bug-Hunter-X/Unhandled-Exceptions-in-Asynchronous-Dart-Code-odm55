```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      // Process jsonData here
      // Example: Return the processed data
      return jsonData; 
    } else {
      // Handle non-200 status codes more gracefully
      throw Exception('API request failed with status: ${response.statusCode}');
    }
  } on FormatException catch (e) {
    // Handle JSON decoding errors separately
    print('Error decoding JSON: $e');
    // Optionally return a default value or throw a custom exception
    return null; 
  } catch (e) {
    // Handle other exceptions (e.g., network errors)
    print('Error fetching data: $e');
    // Return null or a default value, or rethrow depending on context
    return null;
  }
}
```