// lib/main.dart

import 'package:flutter/material.dart';
import 'package:provider/provider.dart'; // Durum yönetimi için provider paketi

// Uygulamanın ana giriş noktası. Her şey buradan başlar.
void main() {
  // runApp fonksiyonu, Flutter uygulamasını başlatır ve verilen widget'ı ana widget olarak ekrana yerleştirir.
  // MyApp widget'ı, uygulamanın kök widget'ıdır.
  runApp(
    // Provider'ı burada kullanmamızın nedeni, uygulamanın genelinde erişilebilecek durumları (state) sağlamaktır.
    // Örneğin, hava durumu verileri veya tema ayarları gibi.
    MultiProvider(
      providers: [
        // İleride buraya WeatherProvider, LocationProvider gibi durum yöneticilerini ekleyeceğiz.
        // Şimdilik boş bırakıyoruz, ama yapıyı kuruyoruz.
      ],
      child: const MyApp(), // Uygulamamızın ana widget'ı
    ),
  );
}

// MyApp sınıfı, uygulamanın kök widget'ıdır.
// Uygulamanın genel temasını, navigasyonunu ve başlangıç ekranını tanımlar.
class MyApp extends StatelessWidget {
  const MyApp({super.key}); // Constructor (yapıcı metot)

  @override
  Widget build(BuildContext context) {
    // MaterialApp, Flutter uygulamasının temel Material Design yapısını sağlar.
    // Uygulama başlığı, teması, navigasyon ve başlangıç ekranı gibi ayarları içerir.
    return MaterialApp(
      title: 'Hava Durumu Uygulaması', // Uygulamanın başlığı
      debugShowCheckedModeBanner: false, // Debug bandını gizler (sağ üstteki "DEBUG" yazısı)
      theme: ThemeData(
        // Uygulamanın genel temasını tanımlarız.
        // Hava durumu uygulaması için daha koyu ve modern bir tema düşünebiliriz.
        primarySwatch: Colors.blue, // Ana renk paleti (şimdilik mavi)
        brightness: Brightness.dark, // Koyu tema (dark mode) varsayılan olarak
        scaffoldBackgroundColor: Colors.grey[900], // Arka plan rengi
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.grey[850], // AppBar arka plan rengi
          foregroundColor: Colors.white, // AppBar üzerindeki yazı ve ikon rengi
          centerTitle: true, // AppBar başlığını ortala
        ),
        textTheme: const TextTheme(
          // Metin stillerini tanımlarız
          headlineLarge: TextStyle(color: Colors.white, fontSize: 32.0, fontWeight: FontWeight.bold),
          headlineMedium: TextStyle(color: Colors.white70, fontSize: 24.0, fontWeight: FontWeight.bold),
          bodyLarge: TextStyle(color: Colors.white, fontSize: 18.0),
          bodyMedium: TextStyle(color: Colors.white70, fontSize: 16.0),
          bodySmall: TextStyle(color: Colors.white54, fontSize: 14.0),
        ),
        // Diğer tema ayarları buraya eklenebilir (buttonTheme, cardTheme vb.)
      ),
      // Uygulamanın başlangıç ekranı. İleride Home Screen'i buraya atayacağız.
      // Şimdilik basit bir "Merhaba" ekranı ile başlıyoruz.
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Hava Durumu'),
        ),
        body: const Center(
          child: Text(
            'Uygulama Başlıyor...',
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
        ),
      ),
    );
  }
}