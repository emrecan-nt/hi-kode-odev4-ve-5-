import 'package:flutter/material.dart';

class SonucSayfasi extends StatelessWidget {
  final String adSoyad;
  final String cinsiyet;
  final bool resitMi;
  final bool sigaraKullanimi;

  const SonucSayfasi({
    super.key,
    required this.adSoyad,
    required this.cinsiyet,
    required this.resitMi,
    required this.sigaraKullanimi,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Sonuçlar",
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
            Text("Adınız ve Soyadınız:", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            Text(adSoyad, style: TextStyle(fontSize: 16)),
            SizedBox(height: 20),
            Text("Cinsiyet:", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            Text(cinsiyet, style: TextStyle(fontSize: 16)),
            SizedBox(height: 20),
            Text("Reşit misiniz?", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            Text(resitMi ? "Evet" : "Hayır", style: TextStyle(fontSize: 16)),
            SizedBox(height: 20),
            Text("Sigara kullanıyor musunuz?", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            Text(sigaraKullanimi ? "Evet" : "Hayır", style: TextStyle(fontSize: 16)),
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
                  Navigator.pop(context);
                },
                child: Text(
                  "Geri Dön",
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