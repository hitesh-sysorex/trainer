// import 'package:http/http.dart' as http;

// class APIService {
//   String baseUrl = "http://127.0.0.1:8000/fitness/";

//   Future<String> createPost(Map<String, dynamic> data) async {
//     try {
//       var response = await http.post(
//         Uri.parse("$baseUrl/create"),
//         body: jsonEncode(data),
//         headers: {
//           "Content-Type": "application/json; charset=UTF-8",
//         },
//       );
//       if (response.statusCode == 200) {
//         return "success";
//       } else {
//         print(response.body);
//         // server error
//         return "err";
//       }
//     } catch (SocketException) {
//       // fetching error
//       return "err";
//     }
//   }
// }
