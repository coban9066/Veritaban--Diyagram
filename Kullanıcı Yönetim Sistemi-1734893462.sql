CREATE TABLE IF NOT EXISTS `kullanıcılar` (
	`id` int NOT NULL,
	`email` varchar(255) DEFAULT '255',
	`ad` varchar(255) DEFAULT '100',
	`soyad` varchar(255) DEFAULT '100',
	`dogum_tarihi` date,
	`sifre` varchar(255) DEFAULT '255',
	`reg_date` datetime NOT NULL,
	`yetki` enum NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE IF NOT EXISTS `kitaplar` (
	`id` int NOT NULL,
	`kitap_adi` varchar(255) DEFAULT '255',
	`yazar_adi` varchar(255) DEFAULT '100',
	`kiralayan_ad` varchar(255) DEFAULT '100',
	`durum` varchar(255) DEFAULT '50',
	PRIMARY KEY (`id`)
);

CREATE TABLE IF NOT EXISTS `rezervasyon` (
	`id` int NOT NULL,
	`ad` varchar(255) DEFAULT '100',
	`rezervasyon_tarihi` datetime,
	`soyad` varchar(255) DEFAULT '100',
	`email` varchar(255) DEFAULT '255',
	PRIMARY KEY (`id`)
);

CREATE TABLE IF NOT EXISTS `yorumlar` (
	`id` int NOT NULL,
	`kitap_adi` varchar(255) DEFAULT '255',
	`yorum` text,
	`ad` varchar(255) DEFAULT '100',
	`soyad` varchar(255) DEFAULT '100',
	PRIMARY KEY (`id`)
);


ALTER TABLE `kitaplar` ADD CONSTRAINT `kitaplar_fk3` FOREIGN KEY (`kiralayan_ad`) REFERENCES `kullanıcılar`(`ad`);
ALTER TABLE `rezervasyon` ADD CONSTRAINT `rezervasyon_fk1` FOREIGN KEY (`ad`) REFERENCES `kullanıcılar`(`ad`);
ALTER TABLE `yorumlar` ADD CONSTRAINT `yorumlar_fk4` FOREIGN KEY (`soyad`) REFERENCES `kullanıcılar`(`soyad`);