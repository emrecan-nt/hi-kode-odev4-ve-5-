import 'package:flutter/material.dart';
import 'package:hikodeodev/odev5.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Homepage(),
  ));
}

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  String? secilenDeger;
  bool isAdult = false;
  bool switchState = true;
  TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Kişilik Anketi",
          style: TextStyle(
            fontSize: 24,
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 255, 152, 0),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              controller: nameController,
              decoration: InputDecoration(labelText: "Adınız ve Soyadınız"),
            ),
            SizedBox(height: 20),
            DropdownButton<String>(
              hint: Text("Cinsiyetinizi Seçiniz"),
              isExpanded: true,
              dropdownColor: Colors.grey[300],
              value: secilenDeger,
              items: [
                DropdownMenuItem(value: "Kadın", child: Text("Kadın")),
                DropdownMenuItem(value: "Erkek", child: Text("Erkek")),
                DropdownMenuItem(value: "Belirtmek İstemiyorum", child: Text("Belirtmek İstemiyorum")),
              ],
              onChanged: (String? newValue) {
                setState(() {
                  secilenDeger = newValue;
                });
              },
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12),
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Reşit misiniz?", style: TextStyle(fontSize: 16)),
                  Checkbox(
                    value: isAdult,
                    activeColor: Colors.orange,
                    onChanged: (bool? newValue) {
                      setState(() {
                        isAdult = newValue!;
                      });
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12),
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Sigara kullanıyor musunuz?", style: TextStyle(fontSize: 16)),
                  Switch(
                    value: switchState,
                    activeColor: Colors.red,
                    onChanged: (bool newValue) {
                      setState(() {
                        switchState = newValue;
                      });
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 40),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SonucSayfasi(
                        adSoyad: nameController.text,
                        cinsiyet: secilenDeger ?? "Belirtilmedi",
                        resitMi: isAdult,
                        sigaraKullanimi: switchState,
                      ),
                    ),
                  );
                },
                child: Text(
                  "Bilgileri Gönder",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}