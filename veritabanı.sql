-- --------------------------------------------------------
-- Sunucu:                       127.0.0.1
-- Sunucu sürümü:                8.0.45 - MySQL Community Server - GPL
-- Sunucu İşletim Sistemi:       Win64
-- HeidiSQL Sürüm:               12.16.0.7229
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- cv.basic_info: ~1 rows (yaklaşık) tablosu için veriler indiriliyor
INSERT INTO `basic_info` (`id`, `name`, `phone`, `city`, `email`, `description`) VALUES
	(1, 'Ahmet Hasan Yağcı', '0 544 164 42 34', 'İstanbul', 'yagcia23@itu.edu.tr', 'Siber Güvenlik Müdürü');

-- cv.certificates: ~3 rows (yaklaşık) tablosu için veriler indiriliyor
INSERT INTO `certificates` (`id`, `certificate_name`, `institution`, `issue_date`) VALUES
	(1, 'Introduction to Cybersecurity', 'Cisco Networking Academy', '2025-12-15'),
	(2, 'Packet Tracer', 'Cisco Networking Academy', '2026-01-10'),
	(3, 'Linux & Networking ', 'Hackviser', '2026-02-20');

-- cv.hobbies: ~0 rows (yaklaşık) tablosu için veriler indiriliyor
INSERT INTO `hobbies` (`id`, `hobby_name`) VALUES
	(1, 'Bodybuilding'),
	(2, 'Bisiklet Sürmek'),
	(3, 'Trekking'),
	(4, 'Kitap Okumak'),
	(5, 'Oyun Oynamak');

-- cv.jobs: ~0 rows (yaklaşık) tablosu için veriler indiriliyor
INSERT INTO `jobs` (`id`, `name`, `title`, `start_date`, `end_date`, `description`) VALUES
	(1, 'İTÜ BİDB', 'Asistan Öğrenci', '2026-04-02', '2027-05-14', 'Bilgi İşlem Tecrübesi');

-- cv.schools: ~0 rows (yaklaşık) tablosu için veriler indiriliyor
INSERT INTO `schools` (`id`, `school_name`, `department`, `graduation_year`) VALUES
	(1, 'İTÜ', 'SGMYO', '2027');

-- cv.skills: ~0 rows (yaklaşık) tablosu için veriler indiriliyor
INSERT INTO `skills` (`id`, `skill_name`, `level`) VALUES
	(1, 'Ağ Analizi ve Sızma Testi', 'İleri Seviye'),
	(2, 'Sanallaştırma Teknolojileri', 'İleri Seviye'),
	(3, 'İngilizce', 'B2'),
	(4, 'html', 'Orta Seviye'),
	(5, 'Güvenlik Duvarı & IDS/IPS', 'Orta Seviye'),
	(6, 'Python', 'Orta Seviye'),
	(7, 'Veri Tabanı Yönetimi', 'Orta Seviye'),
	(8, 'Docker', 'Orta Seviye');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
