import 'package:flutter/material.dart';

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Home Screen"),
//         backgroundColor: Colors.black,
//         foregroundColor: Colors.white,
//       ),
//       body: SingleChildScrollView(
//         scrollDirection: Axis.vertical,
//         physics: BouncingScrollPhysics(),
//         // decoration: BoxDecoration(color: Colors.yellowAccent),
//         // height: double.infinity,
//         padding: const EdgeInsets.all(8.0),
//         child: Column(
//           spacing: 16.0,
//           children: [
//             Text(
//               'Hello World',
//               style: TextStyle(
//                 fontSize: 20.0,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.red,
//                 decoration: TextDecoration.underline,
//               ),
//             ),
//             Text('Hello World'),
//             Text('Hello World'),
//             Icon(Icons.airplanemode_on, size: 100.0, color: Colors.blueGrey),
//             Row(
//               spacing: 16.0,
//               children: [
//                 Expanded(
//                   child: Image.asset(
//                     'assets/images/kopi.jpeg',
//                     height: 400,
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//                 Expanded(
//                   child: Image.asset(
//                     'assets/images/kopi.jpeg',
//                     height: 400,
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//               ],
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 print('Button Tapped');
//               },
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: Colors.green,
//                 foregroundColor: Colors.white,
//               ),
//               child: Row(children: [Icon(Icons.add), Text('Tambah')]),
//             ),
//             // IconButton.filledTonal(onPressed: () {}, icon: Icon(Icons.add)),
//           ],
//         ),
//       ),
//     );
//   }
// }

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFDEFEF),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(24),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 12,
                      offset: const Offset(0, 6),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: Image.asset(
                            'assets/images/ppp.jpeg',
                            width: 80,
                            height: 80,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "Danish Ubaidillah Ramadhan",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 4),
                              Text(
                                "Software Developer",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 24),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        _buildContactIcon(Icons.email_outlined, Colors.orange),
                        _buildContactIcon(Icons.phone, Colors.teal),
                        _buildContactIcon(Icons.video_call, Colors.purple),
                      ],
                    ),
                    const SizedBox(height: 24),
                    const Divider(),
                    const SizedBox(height: 16),
                    _buildSectionTitle("About"),
                    const SizedBox(height: 6),
                    const Text(
                      "Danish Ubaidillah Ramadhan is a software developer who studied at IDN Backpacker Sentul. He is passionate about building modern mobile and web applications, and has been actively learning and coding for several years.",
                      style: TextStyle(color: Colors.black87, height: 1.4),
                    ),
                    const SizedBox(height: 20),
                    _buildSectionTitle("Address"),
                    const SizedBox(height: 6),
                    const Text(
                      "Perum Griya Tama Persada Blok B12 A, Suko Anyar, Sukoanyar, Kec. Ngoro, Kabupaten Mojokerto, Jawa Timur 61385, Indonesia",
                      style: TextStyle(color: Colors.black87, height: 1.4),
                    ),
                    const SizedBox(height: 20),
                    _buildSectionTitle("Daily Study"),
                    const SizedBox(height: 6),
                    const Text(
                      "Monday - Friday",
                      style: TextStyle(color: Colors.black87),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildContactIcon(IconData icon, Color color) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color.withOpacity(0.1),
      ),
      child: Icon(icon, color: color, size: 28),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: Colors.black87,
      ),
    );
  }
}
