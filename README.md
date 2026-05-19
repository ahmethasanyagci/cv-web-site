# cv-web-site
A dynamic CV website project developed using PHP and MySQL, fetching resume data directly from database queries.

# PHP & MySQL ile Dinamik CV Web Sitesi

Bu proje, ilişkisel bir veri tabanından dinamik olarak veri çeken ve tarayıcı üzerinde listeleyen bir CV web sitesi uygulamasıdır. Projedeki tüm içerik alanları veri tabanı sorguları kullanılarak ekrana basılmaktadır.

## Kullanılan Teknolojiler
- **Backend:** PHP (MySQLi sürücüsü ile)
- **Database:** MySQL (Veri tabanı motoru: InnoDB)
- **Frontend:** HTML

## Proje İçeriği ve Dosya Yapısı
- `cv.php`: Veri tabanı bağlantısını kuran, SQL sorgularını çalıştıran ve verileri HTML formatında ekrana basan ana uygulama kodu.
- `fotoğrafım.jpg`: CV sayfasında kullanılan profil resmi.
- `veritabanı.sql`: Projenin çalışması için gerekli olan tüm tabloları (`basic_info`, `jobs`, `schools`, `skills`, `hobbies`, `certificates`) ve örnek verileri içeren dump (dışa aktarılmış) dosyası.
- `veritabanı_diyagramı.png`: Veri tabanındaki tabloların yapısını, satır sayılarını ve genel şemasını gösteren ekran görüntüsü.

## Veri Tabanı Sorgu Şartı
Projede iş tecrübeleri alanı, hoca tarafından talep edilen özel kriter doğrultusunda en son eklenen iş kaydının en üstte görünmesi amacıyla aşağıdaki spesifik sorgu ile çekilmiştir:
`SELECT * FROM jobs ORDER BY id DESC`

## Kurulum ve Çalıştırma Adımları
1. Bilgisayarınızdaki yerel sunucu servisini (XAMPP, WampServer vb.) başlatın.
2. `cv.php` ve `fotoğrafım.jpg` dosyalarını sunucunuzun kök dizinine (`htdocs` veya `www` klasörü) kopyalayın.
3. Tarayıcınız üzerinden `phpMyAdmin` veya bir veri tabanı yönetim aracı (HeidiSQL vb.) açarak `cv` adında boş bir veri tabanı oluşturun.
4. Repo içerisinde bulunan `veritabanı.sql` dosyasını oluşturduğunuz `cv` veri tabanına içe aktarın (Import).
5. Tarayıcınızın adres çubuğuna `http://localhost/cv.php` yazarak projeyi yerel olarak çalıştırın.
