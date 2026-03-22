# Aspen Travel App UI 🏔️

Bu proje, Flutter temel bileşenlerini ve UI (Kullanıcı Arayüzü) geliştirme mantığını kavramak amacıyla yapılmış bir öğrenme projesidir. Tasarım şablonu için [Aspen Figma Tasarım Dosyası](https://www.figma.com/community/file/1091615514005406765)'ndan referans alınmış olup, UI bütünüyle bu tasarıma bakılarak Flutter koduna dönüştürülmüştür.

## 🎯 Projenin Amacı

Projeyi geliştirirken asıl odak noktamız:
- Tasarım dosyalarına bakarak modern bir arayüzü koda çevirme pratiği yapmak,
- Sayfa yapıları, modüler parçalar (custom widgets) ve liste gösterimi mantıklarını kavramak,
- Klasör hiyerarşisini düzgün bir biçimde (`screens`, `constants`, `entities`) kurgulamaktır.

## 🌟 Kullanılan Yapılar & Özellikler

- **Özel Renk ve Font Yönetimi:** Uygulamanın renk paleti merkezi olarak `app_colors.dart` üzerinden kullanılmakta ve tipografi olarak **Montserrat** (`google_fonts` paketi) tercih edilmektedir.
- **Dinamik Liste Gösterimi:** Arayüzdeki "Popüler" ve "Önerilen" gibi listeler, `mock_data.dart` dosyasındaki örnek veriler üzerinden `ListView.builder` kullanılarak ekrana yansıtılmıştır.
- **Vektörel Medyalar:** Tasarımdaki ikon ve logolar kalite kaybı yaşamamak adına `flutter_svg` paketiyle entegre edilmiştir.
- **Temel Yönlendirme:** Uygulama içi geçişler karmaşık yapılardan ziyade, basit ekran yönlendirmeleri ile kurgulanmıştır (Örn: Karşılama ekranından ana sayfaya geçiş). 

## 📁 Proje Yapısı Odak Noktası

```text
lib/
 ├── constants/       # Renkler, boyutlar veya genel proje sabitleri
 ├── entities/        # Dart veri modelleri (User vb.)
 ├── screens/         # Modüler ekran dizinleri (home, detail, onboarding)
 └── main.dart        # Kök widget ve tema konfigürasyonları
```

## 🚀 Başlarken

Projeyi bilgisayarınıza indirip test etmek için:

1. Depoyu bilgisayarınıza klonlayın:
   ```bash
   git clone https://github.com/kullanici_adiniz/aspen.git
   ```

2. Proje klasörüne girip paketleri yükleyin:
   ```bash
   cd aspen
   flutter pub get
   ```

3. Emülatör veya cihazınızda çalıştırın:
   ```bash
   flutter run
   ```
