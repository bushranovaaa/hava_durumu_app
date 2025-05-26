# ☁️ Flutter Hava Durumu Uygulaması ☀️

Merhaba! 👋 Bu proje, Flutter ile geliştirilen basit ama etkili bir hava durumu mobil uygulamasıdır. Kullanıcıların belirledikleri şehirlerin anlık hava durumu bilgilerini (sıcaklık, nem, rüzgar vb.) ve ileriki günlerin tahminlerini kolayca görüntülemesini amaçlamaktadır. Uygulama, sadece anlık veri çekmekle kalmayıp, **yerel bir SQL veritabanı ile de etkileşim kurarak** kullanıcı deneyimini zenginleştirmektedir.

---

## ✨ Proje Hakkında

Bu uygulama, mobil geliştirmede aşağıdaki temel konuları pekiştirmek amacıyla geliştirilmektedir:

* **API Entegrasyonu:** Dış bir hava durumu API'sından (örneğin OpenWeatherMap) veri çekme ve bu veriyi işleme.
* **Kullanıcı Arayüzü (UI) Tasarımı:** Flutter'ın widget'ları (`Column`, `Row`, `Text`, `Image`, `Card` vb.) ile modern ve kullanıcı dostu bir arayüz oluşturma.
* **Asenkron Programlama:** API çağrıları gibi uzun süren işlemleri uygulamanın akıcılığını bozmadan yönetme (`Future`, `async/await`).
* **Yerel Veritabanı Entegrasyonu (SQLite/SQL):**
    * Uygulama içinde **SQLite veritabanı** kullanarak kullanıcıların favori şehirlerini kaydetme.
    * Çekilen hava durumu verilerini önbelleğe alarak (caching) çevrimdışı erişim sağlama veya API limitlerini düşürme.
    * Veri ekleme, okuma, güncelleme ve silme (CRUD) işlemlerini uygulama içinde gerçekleştirme.
* **Durum Yönetimi:** Uygulamanın verilerini (hava durumu bilgileri, yüklenme durumu, veritabanı kayıtları vb.) etkili bir şekilde yönetme.
* **Konum Servisleri:** Kullanıcının mevcut konumuna göre hava durumu verilerini alma (isteğe bağlı).

---

## 📸 Uygulama Ekran Görüntüsü (Geliştirme Aşamasında)

Uygulama tamamlandığında buraya bir ekran görüntüsü eklenecektir! Şimdilik hayal gücümüzü kullanalım. 😉

---

## 🛠 Kurulum ve Kullanım

Bu projeyi yerel ortamında çalıştırmak için aşağıdaki adımları takip edebilirsin:

1.  **Projeyi Klonla:**
    ```bash
    git clone [https://github.com/bushranovaaa/hava_durumu_app.git](https://github.com/bushranovaaa/hava_durumu_app.git) # Senin repo adresin
    cd hava_durumu_app
    ```
2.  **Flutter SDK'yı Kur (Codespaces'te ilk defa açılıyorsa):**
    ```bash
    git clone [https://github.com/flutter/flutter.git](https://github.com/flutter/flutter.git) -b stable
    export PATH="$PATH:$(pwd)/flutter/bin"
    flutter precache
    ```
    (Not: Bu adım, eğer Codespace'i ilk defa açtıysan ve Flutter yüklü değilse gereklidir.)

3.  **Bağımlılıkları Yükle:**
    ```bash
    flutter pub get
    ```
4.  **Uygulamayı Çalıştır:**
    Bir emülatör veya fiziksel bir cihaz bağlı olduğundan emin ol (veya Codespaces içinden web'e servis et).
    ```bash
    flutter run
    ```
    (Codespaces kullanıyorsan, otomatik olarak bir önizleme açacaktır.)

---

## 🤝 Katkıda Bulunma

Bu proje henüz geliştirme aşamasındadır ve her türlü katkıya açıktır! Fikirlerin, hata raporların veya iyileştirme önerilerin varsa lütfen benimle iletişime geçmekten çekinme veya bir Pull Request gönder.

---

## 📜 Lisans

Bu proje, **MIT Lisansı** ile lisanslanmıştır. Detaylar için [LICENSE](./LICENSE) dosyasına göz atabilirsin.

---

## 📬 İletişim

Soruların veya proje hakkında konuşmak istersen benimle iletişime geçebilirsin:

[![GitHub](https://img.shields.io/badge/GitHub-000?style=for-the-badge&logo=github&logoColor=white)](https://github.com/bushranovaaa) &nbsp;
[![LinkedIn](https://img.shields.io/badge/LinkedIn-0A66C2?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/bushranovaaa/) &nbsp;
[![Mail](https://img.shields.io/badge/E-posta-D14836?style=for-the-badge&logo=gmail&logoColor=white)](mailto:kurtbusra956@gmail.com) &nbsp;

---

⭐ **Projeyi beğendiysen, GitHub'da bir yıldız vermeyi unutma! Desteğin motivasyon kaynağım!** ✨