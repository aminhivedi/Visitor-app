# Visito MVP (Flutter + Firebase)

این پروژه یک اسکلت MVP برای اپ ویزیتورهاست — شامل navigation، صفحات پایه، مدل داده و نمونهٔ اتصال به Firebase.

## موارد مهم قبل از اجرا
1. **نصب Flutter** و ابزارهای Android/iOS.
2. **ایجاد پروژه Firebase** و اضافه کردن Android + (اختیاری) iOS apps.
3. دانلود `google-services.json` (برای اندروید) و قرار دادن آن در `android/app/`.
4. دانلود `GoogleService-Info.plist` (برای iOS) و قرار دادن آن در `ios/Runner/`.
5. نصب FlutterFire CLI و اجرای:
   ```bash
   dart pub global activate flutterfire_cli
   flutterfire configure
   ```
   این کار فایل `lib/firebase_options.dart` را برای شما تولید می‌کند؛ **در این اسکلت یک placeholder** گذاشته شده — حتماً تولید و جایگزین کنید.
6. سپس:
   ```bash
   flutter pub get
   flutter run
   ```

## چه چیزی داخل است
- `lib/main.dart` : اپ شل با BottomNavigationBar
- صفحات: dashboard, map, orders, settings
- نمونه مدل‌ها: Product, Store, Order
- راهنمای کوتاه برای ادامه توسعه (Firestore rules, FCM, Offline)

## توجه
- برای استفاده از Google Maps API key و عملکرد کامل نقشه باید API key را در AndroidManifest و Info.plist اضافه کنید.
- نمونه کدها برای شروع نوشته شده‌اند، برای تولید نسخهٔ نهایی باید مقادیر configs و rules را تکمیل کنید.
