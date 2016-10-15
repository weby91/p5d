-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Inang: 127.0.0.1
-- Waktu pembuatan: 19 Sep 2016 pada 08.01
-- Versi Server: 5.5.34
-- Versi PHP: 5.4.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Basis data: `adaevent_db`
--
CREATE DATABASE IF NOT EXISTS `adaevent_db` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `adaevent_db`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `event`
--

CREATE TABLE IF NOT EXISTS `event` (
  `eventid` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(10) NOT NULL,
  `subcategoryid` int(11) NOT NULL,
  `createddate` datetime NOT NULL,
  `createdfrom` varchar(20) NOT NULL,
  `mobiletype` varchar(20) DEFAULT NULL,
  `isdeleted` bit(1) NOT NULL,
  `deletereason` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`eventid`),
  KEY `subcategoryid` (`subcategoryid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `eventcategory`
--

CREATE TABLE IF NOT EXISTS `eventcategory` (
  `eventcategoryid` int(11) NOT NULL AUTO_INCREMENT,
  `categoryname` varchar(50) NOT NULL,
  `details` text,
  `createddate` datetime NOT NULL,
  `createdby` varchar(20) NOT NULL,
  `modifieddate` datetime DEFAULT NULL,
  `modifiedby` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`eventcategoryid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `eventsubcategory`
--

CREATE TABLE IF NOT EXISTS `eventsubcategory` (
  `subcategoryid` int(11) NOT NULL,
  `subcategoryname` varchar(50) NOT NULL,
  `eventcategoryid` int(11) NOT NULL,
  `details` int(11) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `createddate` datetime NOT NULL,
  `createdby` varchar(20) NOT NULL,
  `modifieddate` datetime DEFAULT NULL,
  `modifiedby` varchar(20) DEFAULT NULL,
  `isdeleted` bit(1) NOT NULL DEFAULT b'0',
  `deletereason` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`subcategoryid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(12) NOT NULL,
  `password` char(32) NOT NULL,
  `usertypeid` int(11) NOT NULL,
  `userroleid` int(11) NOT NULL DEFAULT '1',
  `registrationdate` datetime NOT NULL,
  `registeredfrom` varchar(20) NOT NULL,
  `mobiletype` varchar(20) DEFAULT NULL,
  `lastlogindate` datetime DEFAULT NULL,
  `isverified` bit(1) NOT NULL DEFAULT b'0',
  `verifieddate` datetime DEFAULT NULL,
  `verifiedby` varchar(20) DEFAULT NULL,
  `isconfirmed` bit(1) NOT NULL DEFAULT b'0',
  `confirmeddate` int(11) DEFAULT NULL,
  `confirmedby` varchar(20) DEFAULT NULL,
  `modifieddate` datetime DEFAULT NULL,
  `modifiedby` varchar(12) DEFAULT NULL,
  `isdeleted` bit(1) NOT NULL DEFAULT b'0',
  `deletereason` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `userdetail`
--

CREATE TABLE IF NOT EXISTS `userdetail` (
  `userid` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `dob` date NOT NULL,
  `birthplace` varchar(30) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobileno` varchar(20) NOT NULL,
  `address` varchar(255) NOT NULL,
  `zipcode` int(11) DEFAULT NULL,
  `identityid` int(11) DEFAULT NULL,
  `identitycode` varchar(100) DEFAULT NULL,
  `issubscribed` bit(1) NOT NULL DEFAULT b'1',
  `modifieddate` datetime DEFAULT NULL,
  `modifiedby` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `userrole`
--

CREATE TABLE IF NOT EXISTS `userrole` (
  `userroleid` int(11) NOT NULL,
  `rolename` varchar(20) NOT NULL,
  `details` text,
  `createddate` datetime NOT NULL,
  `createdby` varchar(20) NOT NULL,
  `modifieddate` datetime DEFAULT NULL,
  `modifiedby` varchar(20) DEFAULT NULL,
  `isdeleted` bit(1) NOT NULL DEFAULT b'0',
  `deletereason` varchar(255) NOT NULL,
  PRIMARY KEY (`userroleid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `usertype`
--

CREATE TABLE IF NOT EXISTS `usertype` (
  `usertypeid` int(11) NOT NULL,
  `typename` varchar(20) NOT NULL,
  `createddate` datetime NOT NULL,
  `createdby` varchar(20) NOT NULL,
  `modifieddate` datetime DEFAULT NULL,
  `modifiedby` varchar(20) DEFAULT NULL,
  `isdeleted` bit(1) NOT NULL DEFAULT b'0',
  `deletereason` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`usertypeid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `eventsubcategory`
--
ALTER TABLE `eventsubcategory`
  ADD CONSTRAINT `eventsubcategory_ibfk_1` FOREIGN KEY (`subcategoryid`) REFERENCES `event` (`subcategoryid`) ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
