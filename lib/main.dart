import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // Data daftar nama dan NIM
  final List<Map<String, String>> students = [
    {"name": "DEVAREL ALBANY PUTRA ALAMSYAH", "nim": "STI202102472"},
    {"name": "DIDIT SYAWALUDIN", "nim": "STI202102476"},
    {"name": "ARSYAD MAULANA", "nim": "STI202102477"},
    {"name": "REZA YULISANTOSA", "nim": "STI202102480"},
    {"name": "VIRDA ROMADANI", "nim": "STI202102493"},
    {"name": "MIFTAHUR ROZAQ", "nim": "STI202102500"},
    {"name": "SEPTI APRILIA WULANDARI", "nim": "STI202102504"},
    {"name": "FATIN NURMALANINGRUM", "nim": "STI202102505"},
    {"name": "JUWITA KRISTIANI HIYA", "nim": "STI202102506"},
    {"name": "MICHELLE WIJAYA", "nim": "STI202102511"},
    {"name": "IMACULATA HAGAR KEMALA", "nim": "STI202102516"},
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Daftar Mahasiswa'),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              // Menampilkan daftar mahasiswa dalam card
              ListView.builder(
                physics: NeverScrollableScrollPhysics(), // Nonaktifkan scroll di dalam ListView
                shrinkWrap: true,
                itemCount: students.length,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 3,
                    margin: EdgeInsets.symmetric(vertical: 8.0),
                    child: ListTile(
                      contentPadding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                      title: Text(
                        students[index]['name']!,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text('NIM: ${students[index]['nim']}'),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
