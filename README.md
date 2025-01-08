# Flutter Firebase Authentication App

Bu proje, Flutter ve Firebase kullanarak bir kullanıcı kayıt ve giriş uygulaması geliştirmek için hazırlanmıştır. Firebase Authentication, Firestore, Firecloud gibi Firebase servisleri kullanılarak basit ve etkili bir giriş sistemi oluşturulmuştur.

## Özellikler
- Kullanıcı kaydı (Email/Şifre ile)
- Kullanıcı girişi (Email/Şifre ile)
- Firebase Authentication ile oturum açma ve kapama
- Firestore veritabanı entegrasyonu
- Firecloud entegrasyonu (Opsiyonel)

## Kullanılan Teknolojiler
- **Flutter**: Uygulama geliştirme için.
- **Dart**: Flutter'ın dili.
- **Firebase**: Kullanıcı doğrulama, veritabanı ve bulut hizmetleri için.
  - Firebase Authentication
  - Firestore Database
  - Firebase Cloud Storage (Opsiyonel)
  - Firebase Cloud Functions (Opsiyonel)

## Kurulum

Projenin çalışması için Firebase projesinin doğru şekilde yapılandırılmış olması gerekir. Aşağıdaki adımları takip ederek projeyi kurabilirsiniz.

### 1. Firebase Projesi Oluşturma
1. [Firebase Console](https://console.firebase.google.com/) adresine gidin.
2. Yeni bir proje oluşturun.
3. Android ve/veya iOS uygulaması ekleyin ve uygulama için gerekli yapılandırma dosyasını (`google-services.json` veya `GoogleService-Info.plist`) indirin.
4. Bu dosyayı projeye uygun yere yerleştirin.

### 2. Firebase SDK ve Bağımlılıkları Yükleme
Projenizde Firebase'i kullanabilmek için aşağıdaki bağımlılıkları `pubspec.yaml` dosyasına ekleyin:

```yaml
dependencies:
  flutter:
    sdk: flutter
  firebase_core: ^1.10.0
  firebase_auth: ^3.3.0
  cloud_firestore: ^3.1.0
  firebase_storage: ^10.2.0 # Opsiyonel, sadece gerektiğinde ekleyin
  # Diğer bağımlılıklar...
