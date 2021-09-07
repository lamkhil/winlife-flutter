import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LanguageService extends Translations {
  static final locale = Locale('id', 'ID');

  // fallbackLocale saves the day when the locale gets in trouble
  static final fallbackLocale = Locale('en', 'US');

  static final locales = [Locale('id', 'ID'), Locale('en', 'US')];

  static final langs = ['id', 'en'];

  Map<String, Map<String, String>> get keys => {'id_ID': idID, 'en_US': enUS};

  // Gets locale from language, and updates the locale
  static void changeLocale(String lang) {
    final locale = _getLocaleFromLanguage(lang);
    Get.updateLocale(locale!);
  }

  // Finds language in `langs` list and returns it as Locale
  static Locale? _getLocaleFromLanguage(String lang) {
    for (int i = 0; i < langs.length; i++) {
      if (lang == langs[i]) return locales[i];
    }
    return Get.locale;
  }
}

const Map<String, String> idID = {
  'welcome': 'Selamat Datang di Winlife',
  'welcome sub':
      'Kami membantu Anda menemukan solusi untuk masalah Anda, karena Anda berharga & lebih dari pemenang!',
  'login': 'Masuk',
  'register': 'Daftar',
  'or continue with': 'atau lanjutkan dengan',
  'facebook': 'Lanjutkan dengan Facebook',
  'google': 'Lanjutkan dengan Google',
  'byLogin': 'Dengan Masuk atau Mendaftar, Anda setuju kepada',
  'terms': 'Persyaratan Layanan ',
  'and': 'dan ',
  'privacy': 'Kebijakan pribadi',
  'pilih bahasa': 'Pilih bahasa Anda',
  'PASSWORD': 'KATA SANDI',
  'CONTINUE': 'LANJUTKAN',
  'no akun': "Tidak punya akun?",
  'here': 'disini',
  'forgot': 'Lupa Password',
  'NAME': 'NAMA',
  'MOBILE NUMBER': 'NOMOR TELEPON',
  //lupa password
  'already': 'Sudah punya akun? ',
  'input code': 'Masukan kode untuk ke tahap selanjutnya ',
  'enter email and send reset':
      'Silahkan masukkan alamat email anda \nKami akan mengirimkan kode reset untuk mengubah kata sandi anda',
  'CODE': 'KODE ',
  'enter text': 'Silahkan isi dengan beberapa text',
  'find password': 'Temukan kata sandi anda? ',
  'Login Here': 'Login disini',
  'Forgot your password': 'Lupa \nKata sandi anda?',
  'EMAIL ADDRESS': 'Alamat Email',
  'Input Password': 'Masukan kata sandi',
  //history
  'History': 'Histori',
  'Empty': 'Kosong',
  'Reload': 'Muat ulang',
  'Problem': 'Masalah: ',
  //home
  'Find News': 'Temukan Berita, Service...',
  'Account': 'Akun',
  'News': 'Berita',
  'Reward': 'Hadian',
  'MyPoint': 'Poin ku',
  'Point': ' Poin',
  'Our Service': 'Layanan Kami',
  'Consulting Your Life': 'Konsultasi kehidupan anda',
  'All': 'Semua',
  'See All': 'Lihat Semua',
  'Married': 'Pernikahan',
  'Parenting': 'Mendidik Anak',
  'Family': 'Keluarga',
  'Self': 'Diri Sendiri',
  'Business': 'Bisnis',
  'Addictive': 'Ketergantungan',
  'How using WinLife': 'Bagaimana cara menggunakan WinLife',
  'consultation': 'Konsultasi',
  'Service': 'Layananan',
  'Your Favorites': 'Favoritmu ',

  //profile
  'Profile': 'Profil',
  'Menu Profile': 'Menu Profil',
  'Change Password': 'Rubah kata sandi',
  'My Voucher': 'Voucher saya',
  'Help Center': 'Pusat Bantuan',
  'Privacy Policy': 'Kebijakan Privasi',
  'Logout': 'Keluar',

  //promo
  'I Want': 'Ya, Saya ingin',

  //quick
  'enter data': 'Silahkan masukan data dibawah ini : ',
  'select consult': 'Pilih tipe konsultasi : ',
  'Payment terms': 'Termin Pembayaran',
  'Select Services': 'Pilih Layanan : ',
  'Input Problem': 'Silahkan masukan masalah anda : ',
  'Find a Counselor': 'Cari konselor',
  'Choose Service below': 'Pilih layanan dibawah ini : ',
  'Minute': 'Menit',

  //detail conselor
  'Detail Counselor': 'Detail konselor',
  'Specialist': 'Spesialis : ',
  'Location': 'Lokasi : ',
  'About': 'Tentang : ',
  'Start With': 'Dimulai dari : ',

//dasboard
  'Home': 'Beranda',
};

const Map<String, String> enUS = {
  'welcome': 'Welcome To WinLife',
  'welcome sub':
      'We help you to find solution for your problem,\nbecause you are valueable & more than winner!',
  'login': 'Login',
  'register': 'Register',
  'or continue with': 'or continue with',
  'facebook': 'Continue With Facebook',
  'google': 'Continue With Google',
  'byLogin': 'By Logging in or Registering, you agree to',
  'terms': 'Terms of Service',
  'and': 'And ',
  'privacy': 'Privacy Policy',
  'pilih bahasa': 'Choose your language',
  'PASSWORD': 'PASSWORD',
  'CONTINUE': 'CONTINUE',
  'no akun': "Don't have an account?",
  'here': 'here',
  'forgot': 'Forgot Password',
  'NAME': 'NAME',
  'MOBILE NUMBER': 'MOBILE NUMBER',
  'already': 'Already have an account? ',
  //lupa password
  'input code': 'Input your code to continue ',
  'enter email and send reset':
      "Please enter your email Address \nwe'all send your reset code to change your password",
  'CODE': 'CODE ',
  'enter text': 'Please enter some text',
  'find password': 'Find your password? ',
  'Login Here': 'Login Here',
  'Forgot your password': 'Forgot \nYour Password?',
  'EMAIL ADDRESS': 'EMAIL ADDRESS',
  'Input Password': 'Input Password',
  //history
  'History': 'History',
  'Empty': 'Empty',
  'Reload': 'Reload',
  'Problem': 'Problem: ',
  //home
  'Find News': 'Find News, Service...',
  'Account': 'Account',
  'News': 'News',
  'Reward': 'Reward',
  'MyPoint': 'My Points',
  'Point': ' Points',
  'Our Service': 'Our Service',
  'Consulting Your Life': 'Consulting Your Life',
  'All': 'All',
  'See All': 'See All',
  'Married': 'Married',
  'Parenting': 'Parenting',
  'Family': 'Family',
  'Self': 'Self',
  'Business': 'Business',
  'Addictive': 'Addictive',
  'How using WinLife': 'How using WinLife',
  'consultation': 'Consultation',
  'Service': 'Service',
  'Your Favorites': 'Your Favorites ',

  //profile
  'Profile': 'Profile',
  'Menu Profile': 'Menu Profile',
  'Change Password': 'Change Password',
  'My Voucher': 'My Voucher',
  'Withdraw': 'Withdraw',
  'Help Center': 'Help Center',
  'Privacy Policy': 'Privacy Policy',
  'Logout': 'Logout',

  //promo
  'I Want': 'Yes, I Want',

  //quick
  'enter data': 'Please enter the data below : ',
  'select consult': 'Select Consultation Type : ',
  'Payment terms': 'Payment terms',
  'Select Service': 'Select Service : ',
  'Input Problem': 'Please Input Your Problem : ',
  'Find a Counselor': 'Find a Counselor',
  'Choose Service below': 'Choose a service below : ',
  'Minute': 'Minute',

  //detail conselor
  'Detail Counselor': 'Counselor details',
  'Specialist': 'Specialist : ',
  'Location': 'Location : ',
  'About': 'About : ',
  'Start With': 'Start With : ',

  //dasboard
  'Home': 'Home',
};
