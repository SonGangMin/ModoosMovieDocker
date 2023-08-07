-- MySQL dump 10.13  Distrib 8.0.33, for Linux (x86_64)
--
-- Host: localhost    Database: ModoosMovie
-- ------------------------------------------------------
-- Server version	8.0.33-0ubuntu0.22.04.2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cinemas`
--
CREATE DATABASE ModoosMovie;
USE ModoosMovie;

DROP TABLE IF EXISTS `cinemas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cinemas` (
  `cinema_num` int NOT NULL AUTO_INCREMENT,
  `addr` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `addr_detail` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `cinema` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `grade` int NOT NULL,
  PRIMARY KEY (`cinema_num`),
  KEY `cinemas_FK` (`grade`),
  CONSTRAINT `cinemas_FK` FOREIGN KEY (`grade`) REFERENCES `regions` (`grade`)
) ENGINE=InnoDB AUTO_INCREMENT=150 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cinemas`
--

LOCK TABLES `cinemas` WRITE;
/*!40000 ALTER TABLE `cinemas` DISABLE KEYS */;
INSERT INTO `cinemas` VALUES (1,'광주시','광주광역시 광산구 우산동 1597-1 번지','광주광산',4),(2,'대구시','대구광역시 동구 율하동 1117 번지','대구율하',5),(3,'서울시','서울특별시 광진구 자양동 227-7 번지','건대입구',1),(4,'제주도','제주특별자치도 제주시 아라일동 2574 번지','제주아라',8),(5,'제주도','제주특별자치도 제주시 연동 1454 번지 롯데시네마 제주연동(나인몰) B1F','제주연동',8),(6,'경상남도','경상남도 양산시 물금읍 1269-13 번지 큐엠시네마타워 4층','양산물금',6),(7,'경상남도','경상남도 김해시 신문동 1414 번지 롯데아울렛 신관 4층','김해아울렛',6),(8,'경상남도','경상남도 사천시 사천읍 331 번지','사천',6),(9,'경상남도','경상남도 통영시 무전동 986 번지','통영',6),(10,'경상남도','경상남도 진주시 가좌동 700-1 번지 롯데시네마 진주엠비씨네','엠비씨네(진주)',6),(11,'경상남도','경상남도 창원시 성산구 상남동 79 번지','창원',6),(12,'경상북도','경상북도 상주시 서문동 140-2 번지','상주',5),(13,'경상북도','경상북도 영천시 완산동 1402 번지 고은스퀘어 2층 롯데시네마 영천','영천',5),(14,'경상북도','경상북도 구미시 공단동 253-2 번지 4층일부,5~7층전체','구미공단',5),(15,'경상북도','경상북도 구미시 원평동 147-9 번지 5층 롯데시네마 사무실','프리미엄구미센트럴',5),(16,'경상북도','경상북도 안동시 옥동 734 번지 A동 401/501호 (옥동 테마프라자)','프리미엄 안동',5),(17,'경상북도','경상북도 경주시 노동동 73-2 번지 2층','경주',5),(18,'경상북도','경상북도 포항시 북구 대흥동 563-3 번지 3층~9층','포항',5),(19,'전라북도','전라북도 군산시 나운동 114-34 번지 롯데시네마','군산나운',4),(20,'전라북도','전라북도 전주시 완산구 서신동 971 번지 롯데백화점 7층','전주(백화점)',4),(21,'충청남도','충청남도 당진시 수청동 1041 번지 7,8,9층','당진',3),(22,'충청남도','충청남도 서산시 동문동 193-1 번지','서산',3),(23,'충청북도','충청북도 청주시 상당구 용암동 1703 번지','청주용암',3),(24,'서울시','서울특별시 영등포구 영등포동 618-496 번지 A동 7~9층','영등포',1),(25,'강원도','강원도 동해시 천곡동 864 번지','동해',7),(26,'강원도','강원도 원주시 단구동 1511-2 번지 스타월드 5,6층','남원주',7),(27,'강원도','강원도 춘천시 죽림동 189 번지','춘천',7),(28,'경기도','경기도 화성시 향남읍 하길리 1410-1 번지 701호','향남',2),(29,'경기도','경기도 화성시 오산동 967-157 번지 롯데백화점 7층 롯데시네마 동탄','동탄',2),(30,'경기도','경기도 안성시 공도읍 306 번지','안성',2),(31,'경기도','경기도 파주시 목동동 927 번지 17 홈플러스 3층','파주운정',2),(32,'경기도','경기도 용인시 처인구 역북동 802 번지 더와이스퀘어 5층(역북동)','용인역북',2),(33,'경기도','경기도 용인시 수지구 성복동 789 번지 롯데몰 수지점 5층','수지',2),(34,'경기도','경기도 하남시 덕풍동 831-1 번지 지하 1층','하남미사',2),(35,'경기도','경기도 시흥시 능곡동 235-1 번지 6F 롯데시네마 시흥장현','시흥장현',2),(36,'경기도','경기도 시흥시 정왕동 2327-2 번지','시화',2),(37,'경기도','경기도 남양주시 화도읍 255-24 번지 롯데마트 마석점','마석',2),(38,'경기도','경기도 남양주시 별내동 1005 번지 지하 1~2층','별내',2),(39,'경기도','경기도 구리시 인창동 419-7 번지 6~8층 롯데시네마','구리아울렛',2),(40,'경기도','경기도 고양시 일산서구 주엽동 22 번지 그랜드백화점일산점 10층','주엽',2),(41,'경기도','경기도 고양시 일산동구 장항동 764 번지 라페스타 C 3층','라페스타(일산)',2),(43,'경기도','경기도 안산시 상록구 성포동 590 번지 롯데마트 안산점 4층 (성포동 590)','안산',2),(44,'경기도','경기도 안산시 단원구 고잔동 717-2 번지','안산고잔',2),(45,'경기도','경기도 안산시 단원구 고잔동 539-2 번지 7~10층','센트럴락(안산)',2),(46,'경기도','경기도 평택시 서정동 818-36 번지','송탄',2),(47,'경기도','경기도 광명시 광명동 150-19 번지 크로앙스 7,8층','광명',2),(48,'경기도','경기도 부천시 원미구 심곡동 175-6 번지','부천역',2),(49,'경기도','경기도 안양시 만안구 안양동 88-1 번지','안양(안양역)',2),(50,'경기도','경기도 안양시 동안구 관양동 1502-6 번지 아이퍼스트타워 7층','인덕원',2),(52,'경기도','경기도 안양시 동안구 호계동 1039 번지','평촌(범계역)',2),(53,'경기도','경기도 성남시 수정구 시흥동 296-3 번지 파미어스몰 지하 1층 롯데시네마 판교관','판교',2),(54,'경기도','경기도 성남시 수정구 신흥동 4124 번지 신흥역 시네마타워 8~11층','성남중앙',2),(55,'경기도','경기도 수원시 장안구 천천동 516 번지 3층 롯데시네마','북수원',2),(56,'경기도','경기도 수원시 영통구 이의동 1338 번지 롯데아울렛 광교점 4,5층','광교아울렛',2),(57,'경기도','경기도 수원시 권선구 서둔동 296-77 번지','수원',2),(58,'경기도','경기도 수원시 권선구 금곡동 1114-1 번지 리더스빌딩 10층','서수원',2),(59,'울산시','울산광역시 남구 삼산동 1480-1 번지','울산(백화점)',6),(60,'울산시','울산광역시 중구 성남동 256-24 번지','울산성남',6),(61,'대전시','대전광역시 서구 관저동 1735 번지 디펠리체 5층 롯데시네마','대전관저',3),(62,'대전시','대전광역시 서구 괴정동 423-1 번지','대전(백화점)',3),(63,'광주시','광주광역시 광산구 장덕동 1678 번지','수완',4),(64,'광주시','광주광역시 동구 황금동 12-2 번지','충장로',4),(65,'서울시','서울특별시 강서구 등촌동 73-1 번지 롯데시네마 가양','가양',1),(66,'인천시','인천광역시 부평구 갈산동 94 번지 U1 테크로밸리 3~5F 롯데시네마 부평갈산','부평갈산',2),(67,'인천시','인천광역시 부평구 부평동 738-21 번지 7,8층','부평역사',2),(68,'인천시','인천광역시 남구 관교동 15 번지 지하1층 롯데시네마','인천터미널',2),(69,'대구시','대구광역시 달성군 현풍면 중리 490 번지 4층 롯데시네마','대구현풍',5),(70,'부산시','부산광역시 금정구 부곡동 298-2 번지','오투(부산대)',6),(71,'부산시','부산광역시 해운대구 좌동 1479-1 번지 웅신시네아트7층','프리미엄 해운대(장산역)',6),(72,'부산시','부산광역시 동래구 온천동 502-3 번지','동래',6),(73,'부산시','부산광역시 부산진구 전포동 668-1 번지 6층','서면(전포동)',6),(74,'부산시','부산광역시 부산진구 부전동 503-15 번지 롯데백화점 10층','부산본점',6),(75,'부산시','부산광역시 중구 중앙동7가 20-1 번지 시네마동 9층','광복',6),(76,'부산시','부산광역시 중구 남포동5가 12-1 번지','대영',6),(77,'서울시','서울특별시 강동구 성내동 44-1 번지','강동',1),(78,'서울시','서울특별시 송파구 신천동 29 번지 신천동,엔터동롯데시네마(5~11F)','월드타워_샤롯데',1),(79,'서울시','서울특별시 송파구 신천동 29 번지 신천동, 엔터동롯데시네마(5~11F)','월드타워',1),(80,'서울시','서울특별시 관악구 신림동 1641-2 번지 타임스트림 10층~15층','신림',1),(81,'서울시','서울특별시 관악구 봉천동 862-1 번지 에그옐로우 10층','서울대입구',1),(82,'서울시','서울특별시 금천구 가산동 60-8 번지','가산디지털',1),(83,'서울시','서울특별시 강서구 방화동 886 번지 외6필지','김포공항',1),(84,'서울시','서울특별시 마포구 서교동 490 번지 메세나폴리스 2층 롯데시네마','합정',1),(85,'서울시','서울특별시 은평구 진관동 79-31, 롯데몰 5층','은평(롯데몰)',1),(86,'서울시','서울특별시 노원구 상계동 713 번지 롯데백화점 10층','노원',1),(87,'서울시','서울특별시 강북구 번동 449-1 번지 10~14층','수유',1),(89,'서울시','서울특별시 용산구 한강로3가 16-9 번지 용산전자랜드4~5F','용산',1),(91,'서울시','서울특별시 중구 남대문로2가 130 번지','에비뉴엘(명동)',1),(92,'서울시','서울특별시 마포구 동교동 166-14 번지 와이즈파크 8층','홍대입구',1),(93,'충청남도','충청남도 천안시 동남구 청당동 547 번지 롯데시네마','천안청당',3),(94,'제주도','제주특별자치도 제주시 삼양이동 1477-8 번지','제주삼화지구',8),(95,'부산시','부산광역시 해운대구 우동 1496 번지 롯데백화점 8층','센텀시티(백화점)',6),(96,'경기도','경기도 평택시 비전동 830-1 번지 뉴코아 아울렛 백화점 10층','평택비전(뉴코아)',2),(97,'서울시','서울특별시 노원구 상계동 1132-35 번지 3층','수락산',1),(98,'경상북도','경상북도 경주시 황성동 800-22 번지','경주황성',5),(99,'전라북도','전라북도 전주시 덕진구 송천동2가 1422 번지 파인트리몰 5~6층','전주송천',4),(100,'경기도','경기도 오산시 원동 300-8 번지 씨네마아울렛 5층','오산(원동)',2),(101,'서울시','서울특별시 구로구 신도림동 692 번지 디큐브시티 제타워동 7,8층 일부','신도림',1),(103,'경기도','경기도 성남시 수정구 창곡동 505 번지','위례',2),(104,'경상남도','경상남도 김해시 부원동 1046 번지 아이스퀘어몰 4~5층','김해부원',6),(105,'충청북도','충청북도 청주시 흥덕구 비하동 811 번지 롯데아울렛 4층','서청주(아울렛)',3),(107,'경기도','경기도 광명시 일직동 500 번지 롯데프리미엄아울렛 광명점 5층','광명아울렛',2),(108,'인천시','인천광역시 부평구 부평동 152-1 번지','부평',2),(109,'경기도','경기도 군포시 산본동 1145-6 번지 10층 (산본동)','산본피트인',2),(111,'부산시','부산광역시 강서구 명지동 3432-3 번지 부산대방디엠시티 센텀오션2차 2층','부산명지',6),(112,'강원도','강원도 속초시 금호동 473-235 번지 속초센텀마크 3층 롯데시네마','속초',7),(113,'서울시','서울특별시 중랑구 묵동 234-1 번지 롯데시네마 중랑','중랑',1),(114,'강원도','강원도 원주시 무실동 1857-2 번지','원주무실',7),(115,'대구시','대구광역시 달서구 상인동 241 번지','상인',5),(116,'대전시','대전광역시 서구 둔산동 1279 번지','대전센트럴',3),(117,'서울시','서울특별시 강남구 도곡동 174-3 번지 롯데시네마 도곡','도곡',1),(118,'경상남도','경상남도 창원시 마산합포구 월남동5가 4-1 번지 롯데시네마 프리미엄 경남대','프리미엄 경남대',6),(119,'경기도','경기도 화성시 병점동 844-1 번지','병점',2),(120,'경기도','경기도 부천시 원미구 중동 1141-2 번지','부천(신중동역)',2),(121,'대전시','대전광역시 서구 월평동 243 번지','대전둔산(월평동)',3),(123,'광주시','광주광역시 동구 대인동 7-1 번지','광주(백화점)',4),(124,'인천시','인천광역시 중구 중산동 1883-12 번지 3층 롯데시네마 영종하늘도시','영종하늘도시',2),(125,'대구시','대구광역시 북구 구암동 769-1 번지 5층 일부, 6~9층','프리미엄칠곡',5),(126,'대구시','대구광역시 서구 내당동 463-62 번지 M프라자4층','대구광장',5),(128,'부산시','부산광역시 기장군 기장읍 당사리 64 번지 동부산 롯데몰 3층 롯데시네마 동부산','동부산(아울렛)',6),(129,'서울시','서울특별시 강남구 논현동 3-5 번지','브로드웨이(신사)',1),(130,'서울시','서울특별시 금천구 독산동 291-5 번지','독산',1),(131,'경상남도','경상남도 거창군 거창읍 90-2 번지 (고센시티8층)','거창',6),(132,'경상남도','경상남도 창원시 마산회원구 합성2동 267 번지','마산(합성동)',6),(133,'전라북도','전라북도 익산시 모현동1가 876 번지 4층 롯데시네마 익산모현','익산모현',4),(134,'서울시','서울특별시 동대문구 전농동 591-53 번지','청량리',1),(135,'경상남도','경상남도 창원시 진해구 석동 543-3 번지','진해',6),(136,'경상남도','경상남도 진주시 충무공동 35 번지 진주롯데몰','진주혁신',6),(137,'경기도','경기도 남양주시 진접읍 1081-2 번지','진접',2),(138,'전라북도','전라북도 전주시 완산구 평화동1가 604-1 번지','전주평화',4),(139,'인천시','인천광역시 서구 연희동 378 번지','인천아시아드',2),(140,'경기도','경기도 의정부시 민락동 804-6 번지 해동타워 8,9층','의정부민락',2),(141,'경기도','경기도 안양시 만안구 안양동 676-1 번지 9~13층','안양일번가',2),(142,'충청남도','충청남도 아산시 모종동 555-5 번지 아산터미널영화관 9~10층','아산터미널',3),(143,'대구시','대구광역시 달서구 이곡동 1244-1 번지','성서',5),(144,'대구시','대구광역시 중구 동성로2가 66-1 번지 더락 4층','동성로',5),(145,'경기도','경기도 용인시 기흥구 구갈동 234 번지','용인기흥',2),(146,'전라북도','전라북도 군산시 조촌동 450-21 번지','군산몰',4),(147,'경기도','경기도 광주시 경안동 25-3 번지 광주버스터미널2층','광주터미널',2),(149,'제주도','제주특별자치도 서귀포시 법환동 914 번지 월드컵경기장내','서귀포',8);
/*!40000 ALTER TABLE `cinemas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `events` (
  `eventNum` int NOT NULL AUTO_INCREMENT,
  `userId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `eventTitle` varchar(255) NOT NULL,
  `eventContent` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `eventImg` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `categoryId` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `view` int NOT NULL DEFAULT '0',
  `startEventDate` date NOT NULL,
  `endEventDate` date NOT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`eventNum`),
  KEY `events_FK` (`userId`),
  CONSTRAINT `events_FK` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events`
--

LOCK TABLES `events` WRITE;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
INSERT INTO `events` VALUES (1,'admin','<여름날 우리> 관람인증 이벤트','https://caching.lottecinema.co.kr//Media/Event/0bbf3dc8d2084bf189758eb4ea188e09.jpg','https://caching.lottecinema.co.kr//Media/Event/b8c9a968b3c34daab693a8634a0d7239.jpg','영화',2,'2023-06-28','2023-07-11',NULL,NULL),(2,'admin','<범죄도시3> 5주차 현장 증정 이벤트','https://caching.lottecinema.co.kr//Media/Event/b2707768d5834bc9a9c13c640f13bfd4.jpg','https://caching.lottecinema.co.kr//Media/Event/c3ebdfb29bee484b8fc98be7d6cb8b2a.jpg','영화',2,'2023-06-28','2023-07-11',NULL,'2023-07-26 00:00:00'),(3,'admin','<스파이더맨: 어크로스 더 유니버스> 개봉 2주차 현장 경품 증정 이벤트','https://caching.lottecinema.co.kr//Media/Event/fa1a104434d84387a21ff3de70667ae6.jpg','https://caching.lottecinema.co.kr//Media/Event/51a1a1d59b00411ba0592e7413ec5d99.jpg','영화',0,'2023-06-28','2023-07-11',NULL,NULL),(4,'admin','<애스터로이드 시티> Signature Art Card No.131','https://caching.lottecinema.co.kr//Media/Event/b3cbd7b7b2e6424aa12d91f8449f665e.jpg','https://caching.lottecinema.co.kr//Media/Event/1f8c8a97d8904ce89fb43a5a64e1ed71.jpg','영화',2,'2023-06-28','2023-07-11',NULL,'2023-07-21 00:00:00'),(5,'admin','<여름날 우리> Signature Art Card No.133','https://caching.lottecinema.co.kr//Media/Event/e72cd56a6815481697cd15904c85b356.jpg','https://caching.lottecinema.co.kr//Media/Event/17cc683251df47f3948c025fcff0a1d5.jpg','영화',0,'2023-06-28','2023-07-11',NULL,NULL),(6,'admin','<인디아나 존스: 운명의 다이얼> Signature Art Card No.132','https://caching.lottecinema.co.kr//Media/Event/e534b786cff54d918511848c72cf1ce8.jpg','https://caching.lottecinema.co.kr//Media/Event/7903dbf106e44f509ddff2bf8a9798ce.jpg','영화',0,'2023-06-28','2023-07-11',NULL,NULL),(7,'admin','<귀공자> 개봉 2주차 현장 경품 이벤트','https://caching.lottecinema.co.kr//Media/Event/f401cc2f2e2f430f86e1dd06ce2c3c1d.jpg','https://caching.lottecinema.co.kr//Media/Event/42d708c97c404a65b4c92afb78df4da9.jpg','영화',4,'2023-06-28','2023-07-11',NULL,'2023-07-28 15:34:13'),(8,'admin','<극장판 피노키오 위대한 모험> SNS 기대평 이벤트','https://caching.lottecinema.co.kr//Media/Event/512e34edd0694123afb4fcf4eb9dee96.jpg','https://caching.lottecinema.co.kr//Media/Event/e5527dd39242415cbe5de6b13dafe6b5.jpg','영화',0,'2023-06-29','2023-07-12',NULL,NULL),(9,'admin','<스파이더맨: 어크로스 더 유니버스> 개봉 2주차 주말 현장 경품 증정 이벤트','https://caching.lottecinema.co.kr//Media/Event/a25ea1a7700348168e059e022a801398.jpg','https://caching.lottecinema.co.kr//Media/Event/33c1157433ca4d18b89fce4a4617cc21.jpg','영화',0,'2023-07-01','2023-07-14',NULL,NULL),(10,'admin','<여름날 우리> 개봉 1주차 주말 현장 증정 이벤트','https://caching.lottecinema.co.kr//Media/Event/38b96444d7eb40a5863bc3585bd3f049.jpg','https://caching.lottecinema.co.kr//Media/Event/f74b4539e7864817b3568ba8a65396e4.jpg','영화',0,'2023-07-01','2023-07-14',NULL,NULL),(11,'admin','<바비> AR 액션티켓 구매하고, 무료 증정품 받자!','https://caching.lottecinema.co.kr//Media/Event/ad0908c8f3194318a96ca35aa12abac7.jpg','https://caching.lottecinema.co.kr//Media/Event/9a1cefc6b93e4a8a84776fe1b2c10a71.jpg','영화',0,'2023-07-03','2023-07-25',NULL,NULL),(12,'admin','<보 이즈 어프레이드> 관람 인증 이벤트','https://caching.lottecinema.co.kr//Media/Event/6cd72d92d5144f9d82643c840922a984.jpg','https://caching.lottecinema.co.kr//Media/Event/6718d2f79a294114ae74d1534a9cc602.jpg','영화',0,'2023-07-05','2023-07-23',NULL,NULL),(13,'admin','<달짝지근해:7510> 예매권 이벤트','https://caching.lottecinema.co.kr//Media/Event/f801d5daad5c40ebaa47f602c4904d0f.jpg','https://caching.lottecinema.co.kr//Media/Event/855eeaf4395f4b0aa9f4ba44c012a025.jpg','영화',2,'2023-07-05','2023-07-19',NULL,'2023-07-18 00:00:00'),(14,'admin','<플래닛> 관람 인증 이벤트','https://caching.lottecinema.co.kr//Media/Event/fdc456c96eca4e369a7b8b491bf502ae.jpg','https://caching.lottecinema.co.kr//Media/Event/9740735c8de5495a9b77edc404accc35.jpg','영화',0,'2023-07-05','2023-07-18',NULL,NULL),(15,'admin','<스파이더맨: 어크로스 더 유니버스> 개봉 3주차 현장 경품 증정 이벤트','https://caching.lottecinema.co.kr//Media/Event/1049406ec9b54311bd9475c38fba4c1a.jpg','https://caching.lottecinema.co.kr//Media/Event/972ef1b7465b441182627a0a77d53745.jpg','영화',0,'2023-07-05','2023-07-18',NULL,NULL),(16,'admin','<1986 그 여름, 그리고 고등어통조림> 개봉주 현장 증정 이벤트','https://caching.lottecinema.co.kr//Media/Event/d3c62494ce514688b29cd41a1b3f0629.jpg','https://caching.lottecinema.co.kr//Media/Event/af7f07ab9a914064bf287d21bf924c86.jpg','영화',0,'2023-07-05','2023-07-18',NULL,NULL),(17,'admin','<엔니오: 더 마에스트로> 관람 인증 이벤트','https://caching.lottecinema.co.kr//Media/Event/4259cbb98d124b98b8da49ac16957837.jpg','https://caching.lottecinema.co.kr//Media/Event/4a8a8b3944a34ae9af2ed911b7161298.jpg','영화',2,'2023-07-05','2023-07-18',NULL,'2023-08-02 18:15:14'),(18,'admin','<슈퍼 키드 헤일리> SNS 기대평 이벤트','https://caching.lottecinema.co.kr//Media/Event/4057ad6fc5134c508082e587a1339981.jpg','https://caching.lottecinema.co.kr//Media/Event/ecb5de4b515b42c2be6bb0e325b1cfcc.jpg','영화',0,'2023-07-05','2023-07-18',NULL,NULL),(19,'admin','<극장판 슈퍼윙스: 맥시멈 스피드> SNS 기대평 이벤트','https://caching.lottecinema.co.kr//Media/Event/009ac46e64e847efa23cc5165120389e.jpg','https://caching.lottecinema.co.kr//Media/Event/0b6a89e8cf7f471badf7f884a8902461.jpg','영화',0,'2023-07-05','2023-07-18',NULL,NULL),(20,'admin','<어디로 가고 싶으신가요> 1주차 현장 증정 이벤트','https://caching.lottecinema.co.kr//Media/Event/3cb936a9ce244152885a8faefba76427.jpg','https://caching.lottecinema.co.kr//Media/Event/b10013e74b1343508e5b3d2ff586d7ec.jpg','영화',0,'2023-07-05','2023-07-18',NULL,NULL),(21,'admin','<1986 그 여름, 그리고 고등어통조림> 관람 인증 이벤트','https://caching.lottecinema.co.kr//Media/Event/1bbd8e839ad84e139cd1e971787b3a98.jpg','https://caching.lottecinema.co.kr//Media/Event/56f98104786348a594b0788cc9fa6f74.jpg','영화',0,'2023-07-05','2023-07-18',NULL,NULL),(22,'admin','<풍재기시> 개봉 기념 포스터 증정 이벤트','https://caching.lottecinema.co.kr//Media/Event/ccf3999f4ebb4a3ea2258f81b6be54ca.jpg','https://caching.lottecinema.co.kr//Media/Event/0da55b410e1b446d841f8702e8737081.jpg','영화',0,'2023-07-05','2023-07-18',NULL,NULL),(23,'admin','<보 이즈 어프레이드> 개봉주 현장 증정 이벤트','https://caching.lottecinema.co.kr//Media/Event/50d3d2fcc26541f882615dc3a21333ad.jpg','https://caching.lottecinema.co.kr//Media/Event/b7543616b22141f980fcb317b1dbf814.jpg','영화',0,'2023-07-05','2023-07-18',NULL,NULL),(24,'admin','<여름날 우리> 2주차 주중 현장 증정 이벤트','https://caching.lottecinema.co.kr//Media/Event/6483cbaece334e9a840616c011ab31d3.jpg','https://caching.lottecinema.co.kr//Media/Event/4db972c561fb4bfcbbc57028ab75ac59.jpg','영화',0,'2023-07-05','2023-07-18',NULL,NULL),(25,'admin','<엔니오: 더 마에스트로> 1주차 현장 이벤트','https://caching.lottecinema.co.kr//Media/Event/b82279d5d3414f48863a2bbf5cb56502.jpg','https://caching.lottecinema.co.kr//Media/Event/2ba2d1b9da384a979723744fd5318695.jpg','영화',0,'2023-07-05','2023-07-11',NULL,NULL),(26,'admin','<보통의 카스미> SNS 기대평 이벤트','https://caching.lottecinema.co.kr//Media/Event/2536916a00594e548e319fba5610382b.jpg','https://caching.lottecinema.co.kr//Media/Event/1be06b44212d42ff8735d33d0321bb55.jpg','영화',0,'2023-07-07','2023-07-18',NULL,NULL),(27,'admin','<명탕점코난: 흑철의 어영> 코드명 블랙 프리미엄 상영회','https://caching.lottecinema.co.kr//Media/Event/19f9cb7cdef8467aa98c866a2d16a5f2.jpg','https://caching.lottecinema.co.kr//Media/Event/dbbc3e6bf0e5407a85b068a8453237c4.jpg','영화',0,'2023-07-07','2023-07-16',NULL,NULL),(28,'admin','<여름날 우리> 2주차 주말 현장 증정 이벤트','https://caching.lottecinema.co.kr//Media/Event/9bd09419d13044798882e6ecdb032ad3.jpg','https://caching.lottecinema.co.kr//Media/Event/dfffdb1ed2e5455a87075b43b8673894.jpg','영화',1,'2023-07-08','2023-07-21',NULL,NULL),(29,'admin','<파이어하트> 관람 인증 2차 이벤트','https://caching.lottecinema.co.kr//Media/Event/0ccecf373e1a4c6a85ce21799faf4cc8.jpg','https://caching.lottecinema.co.kr//Media/Event/b4648ac974af411f8f2f7e4e3b179116.jpg','영화',0,'2023-07-08','2023-07-16',NULL,NULL),(30,'admin','<미션 임파서블: 데드 레코닝 PART ONE> Signature Art Card No.134','https://caching.lottecinema.co.kr//Media/Event/e6cea4fdec9e4099b8453d50c6560046.jpg','https://caching.lottecinema.co.kr//Media/Event/bdb9df1520914150a2a5e590a30cc8ce.jpg','영화',40,'2023-07-12','2023-08-01',NULL,'2023-07-31 21:22:20'),(31,'admin','<미션 임파서블: 데드 레코닝 PART ONE> 덕력고사 개최(Feat.친필 싸인 포스터)','https://caching.lottecinema.co.kr//Media/Event/a8254e29d5b84ded95102877803c61c2.jpg','https://caching.lottecinema.co.kr//Media/Event/b3aa66c80a4e41f29efa75879bb88689.jpg','영화',5,'2023-07-12','2023-07-31',NULL,'2023-07-24 00:00:00'),(32,'admin','<미션 임파서블: 데드 레코닝 PART ONE> SUPER 4D 포스터 증정 이벤트','https://caching.lottecinema.co.kr//Media/Event/a76b0501036044b6b7880363bfb41016.jpg','https://caching.lottecinema.co.kr//Media/Event/111c8b1ad6f1446288cb510ee2e70928.jpg','영화',18,'2023-07-12','2023-07-25',NULL,'2023-07-28 14:44:23'),(33,'admin','<미션 임파서블: 데드 레코닝 PART ONE> SUPERPLEX포스터 증정 이벤트','https://caching.lottecinema.co.kr//Media/Event/2a41167ec7fb4e63a0e0b29dad76918e.jpg','https://caching.lottecinema.co.kr//Media/Event/225da0a2e7ed483c816abf0e4c36a3c0.jpg','영화',3,'2023-07-12','2023-07-25',NULL,NULL),(34,'admin','<디어 마이 러브> 오리지널 A3 포스터 증정 이벤트','https://caching.lottecinema.co.kr//Media/Event/aec2475fddb841e7b19ee1b8e938ec19.jpg','https://caching.lottecinema.co.kr//Media/Event/82468212c36c45fba056eb9534c2955c.jpg','영화',2,'2023-07-12','2023-07-18',NULL,'2023-07-21 00:00:00'),(35,'admin','<엔니오: 더 마에스트로> 2주차 현장 이벤트','https://caching.lottecinema.co.kr//Media/Event/a20ae7af3da843dbabc94d311458acd6.jpg','https://caching.lottecinema.co.kr//Media/Event/5ac5cb642f8a4af19d45d3843abe9e60.jpg','영화',0,'2023-07-12','2023-07-18',NULL,NULL),(36,'admin','<보 이즈 어프레이드> 2주차 현장 증정 이벤트','https://caching.lottecinema.co.kr//Media/Event/28767ca02db54bb38051a762544b76a7.jpg','https://caching.lottecinema.co.kr//Media/Event/a76ba7544cf54fcb8f9093811dc149e4.jpg','영화',0,'2023-07-12','2023-07-18',NULL,NULL),(37,'admin','<여름날 우리> 3주차 현장 증정 이벤트','https://caching.lottecinema.co.kr//Media/Event/090f5f47d8e24c2d8d8e9bfa177621b6.jpg','https://caching.lottecinema.co.kr//Media/Event/34848b3b187b41a8b727ae0d658e9f58.jpg','영화',12,'2023-07-12','2023-07-18',NULL,'2023-07-27 17:38:15'),(38,'admin','<비밀의 언덕> 개봉 기념 현장 이벤트','https://caching.lottecinema.co.kr//Media/Event/5ab95cb1d7c843ffb75639d2586ea2c5.jpg','https://caching.lottecinema.co.kr//Media/Event/8dfb7592fa144b058fbbe979fa4d0c71.jpg','영화',0,'2023-07-12','2023-07-18',NULL,NULL),(39,'admin','<블레이즈> 개봉주 현장 증정 이벤트','https://caching.lottecinema.co.kr//Media/Event/c0c62b882cdb4ece8d14eaf05edb42ee.png','https://caching.lottecinema.co.kr//Media/Event/3f360e2e3a6c4959a9860a9476089f78.png','영화',0,'2023-07-12','2023-07-18',NULL,NULL),(40,'admin','<극장판 피노키오 위대한 모험> 관람 인증 이벤트','https://caching.lottecinema.co.kr//Media/Event/4b15595bf4eb43639df7d760d9b70a10.jpg','https://caching.lottecinema.co.kr//Media/Event/9a2ee91f53c146249e2a14cbb417ce24.jpg','영화',72,'2023-07-13','2023-07-26',NULL,'2023-08-03 20:20:05'),(41,'admin','모바일캐시비/티머니로 영화 보기!','https://caching.lottecinema.co.kr//Media/Event/468e2f15df514f49ab8a83a94d97f72b.jpg','https://caching.lottecinema.co.kr//Media/Event/f406a4b0e9c1437daced324904b09e2c.jpg','제휴할인',0,'2018-09-03','2023-08-31',NULL,NULL),(42,'admin','kt멤버십 회원님 모두에게 드리는 티켓, 매점 할인 혜택','https://caching.lottecinema.co.kr//Media/Event/1fae32fa9e114d1d99ef1ec77218a9fc.jpg','https://caching.lottecinema.co.kr//Media/Event/5b738e1e5b5349db967f766bbd169827.jpg','제휴할인',5,'2019-12-27','2023-12-31',NULL,'2023-07-26 00:00:00'),(43,'admin','현대자동차 블루멤버스 고객님 포인트로 영화보세요!','https://caching.lottecinema.co.kr//Media/Event/a3d58ffe611f4a3cbd57bc91d9753d13.jpg','https://caching.lottecinema.co.kr//Media/Event/9c8196fa83894fbdb69201f9d4c8fcf1.jpg','제휴할인',2,'2019-12-27','2023-12-31',NULL,'2023-07-24 00:00:00'),(44,'admin','T멤버십 회원이라면 영화 무료관람 & 영화 1+1 예매까지','https://caching.lottecinema.co.kr//Media/Event/9fd070d99579492c8e2fb484a9c4ba5b.jpg','https://caching.lottecinema.co.kr//Media/Event/23a2aed82a5f4857adeae18c8a6019be.jpg','제휴할인',0,'2021-02-01','2024-01-31',NULL,NULL),(45,'admin','OK캐쉬백 포인트로 영화보자!','https://caching.lottecinema.co.kr//Media/Event/ae00591a891646b58ddbcb7fcd797996.jpg','https://caching.lottecinema.co.kr//Media/Event/4c033c5bc78f416686295cbcb7fece89.jpg','제휴할인',1,'2021-02-01','2024-01-31',NULL,NULL),(46,'admin','상시 영화티켓 장당 6,000 M포인트 사용','https://caching.lottecinema.co.kr//Media/Event/7e5d493dc3d14e2aab55cc5d7c0c54e4.jpg','https://caching.lottecinema.co.kr//Media/Event/6cb00ba68c85451794a5cfd5a2504887.jpg','제휴할인',3,'2023-03-01','2023-12-31',NULL,'2023-07-19 00:00:00'),(47,'admin','모바일팝으로 생애 첫 결제 시 10% 즉시할인!','https://caching.lottecinema.co.kr//Media/Event/19640bc9997c4726b39ebc2691bbbe10.JPG','https://caching.lottecinema.co.kr//Media/Event/6223e0d38eb94079a1a78b28590817b5.jpg','제휴할인',12,'2023-07-01','2023-09-30',NULL,'2023-07-28 14:51:48'),(48,'admin','토스로 영화 예매하면 3천원 즉시 적립!','https://caching.lottecinema.co.kr//Media/Event/6fb40cf81dbc470ab75f3d437915e589.jpg','https://caching.lottecinema.co.kr//Media/Event/4948d0472fae41af9436256a084e8b39.jpg','제휴할인',16,'2023-07-01','2023-07-31',NULL,'2023-07-31 21:22:24'),(49,'admin','나라 지키는 국군장병을 위한 힐링 프로젝트','https://caching.lottecinema.co.kr//Media/Event/5e045657f99a4f2b8d560b130d5d8ad2.jpg','https://caching.lottecinema.co.kr//Media/Event/fc5db2ba8b21480fb95786316c15ad49.jpg','기타',0,'2023-01-06','2023-12-31',NULL,NULL),(50,'admin','경찰 & 해양경찰을 위한 힐링 프로젝트','https://caching.lottecinema.co.kr//Media/Event/e33b44ef3ac64a6e9f592a8645c7aa1a.jpg','https://caching.lottecinema.co.kr//Media/Event/b720ccf65d504fd5a955f11704aab1af.jpg','기타',4,'2023-01-06','2023-12-31',NULL,'2023-07-19 00:00:00'),(51,'admin','소방공무원을 위한 힐링 프로젝트','https://caching.lottecinema.co.kr//Media/Event/d211ef7e48424555b0075ef880da7f45.jpg','https://caching.lottecinema.co.kr//Media/Event/7a2f2f1444d84dcbaf237c65bc5a2f42.jpg','기타',5,'2023-01-06','2023-12-31',NULL,'2023-07-28 12:42:26'),(52,'admin','<분노의 질주: 라이드 오어 다이> 마그넷 틴버킷 콤보 런칭','https://caching.lottecinema.co.kr//Media/Event/1d434494ac6f426eb729b30011c3541a.jpg','https://caching.lottecinema.co.kr//Media/Event/e5b8dff36f6547e6864611ed0e269eef.jpg','기타',1,'2023-05-17','2023-07-18',NULL,NULL),(53,'admin','랜덤스퀘어 예매오픈','https://caching.lottecinema.co.kr/images/event/101170014223006/evt_randomsquare_01-1.jpg','https://caching.lottecinema.co.kr//Media/Event/93031dff749941acb20d70b519b6ce70.png','기타',3,'2023-06-01','2023-08-27',NULL,NULL),(54,'admin','<엘리멘탈> 폼폼 키링 콤보 런칭','https://caching.lottecinema.co.kr//Media/Event/29b09ddced4f46a79f890db3f23668ff.jpg','https://caching.lottecinema.co.kr//Media/Event/045f9fd0fa664381b8584ed16607a818.jpg','기타',1,'2023-06-14','2023-09-05',NULL,NULL),(55,'admin','랜덤스퀘어 그랜드 오픈 이벤트','https://caching.lottecinema.co.kr//Media/Event/7acbc470c8ae4182acd4d2959ddd64a5.png','https://caching.lottecinema.co.kr//Media/Event/012210db04e94745af7076d7be321aa6.png','기타',6,'2023-06-16','2023-08-27',NULL,'2023-07-28 15:52:00'),(56,'admin','<스파이더맨: 어크로스 더 유니버스> 무비 키링 콤보 런칭','https://caching.lottecinema.co.kr//Media/Event/2e7a80b0227b4e879c9753861b8c2264.jpg','https://caching.lottecinema.co.kr//Media/Event/88384f97e1d945ee862e6f60113d491f.jpg','기타',2,'2023-06-21','2023-08-31',NULL,NULL),(57,'admin','뜨거운 여름! COOL한 관람권 사서, 극캉스 가자!','https://caching.lottecinema.co.kr//Media/Event/ee516585d9e24ac3afa947863a58841d.jpg','https://caching.lottecinema.co.kr//Media/Event/f15daf21e2cb4ab19a22794cb97e7c67.jpg','기타',30,'2023-07-01','2023-08-31',NULL,'2023-07-28 15:25:32'),(58,'admin','랜선 굿즈 1탄 굿노트 다이어리 배포 이벤트!','https://caching.lottecinema.co.kr//Media/Event/cb9f0706a0934fa3a5d9932fc51af5be.jpg','https://caching.lottecinema.co.kr//Media/Event/87d5de2399974e81a29a356082c7b902.jpg','기타',8,'2021-05-31','2099-12-31',NULL,'2023-07-28 12:39:24'),(59,'admin','내 발로 소득 벌고 즉시 할인 쿠폰 받기','https://caching.lottecinema.co.kr//Media/Event/d893a59806cf4ab99dfcd423225c8faa.jpg','https://caching.lottecinema.co.kr//Media/Event/c000213530aa429bb2db4ac5c05fb996.png','제휴할인',2,'2023-06-03','2023-08-02',NULL,'2023-07-31 21:22:17'),(60,'admin','VIP 회원 전용 롯데홈쇼핑 할인 쿠폰','https://caching.lottecinema.co.kr/images/event/501170014223002/evt_lottehomeshoppingvip_02.jpg','https://caching.lottecinema.co.kr//Media/Event/56a7bd2af3a146e4abfba3a63cc95605.jpg','제휴할인',15,'2023-07-01','2023-07-31',NULL,'2023-07-28 10:11:50'),(61,'admin','<그녀가 좋아하는 것은> 쿠사노 쇼고 감독 화상 GV','https://caching.lottecinema.co.kr//Media/Event/0c359957e7e2428c9dddbb8a2babb57c.jpg','https://caching.lottecinema.co.kr//Media/Event/b0cf1ebbb90e480b9dee50c028458cd8.jpg','영화',45,'2023-07-21','2023-07-21',NULL,'2023-07-28 14:51:40'),(62,'admin','롯데시네마 SNS에 놀러오세요!','https://caching.lottecinema.co.kr/images/event/101170014222009/pc/evt_snschanellanding.jpg','https://caching.lottecinema.co.kr//Media/Event/2a7d400e33884bc8a61309ea237f126c.jpg','기타',6,'2022-06-24','2023-12-31',NULL,'2023-07-28 10:17:08');
/*!40000 ALTER TABLE `events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inquirys`
--

DROP TABLE IF EXISTS `inquirys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inquirys` (
  `inquiryNum` int NOT NULL AUTO_INCREMENT,
  `userId` varchar(255) NOT NULL,
  `classify` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `body` varchar(5000) NOT NULL,
  `answer` varchar(5000) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`inquiryNum`),
  KEY `inquiry_FK` (`userId`),
  CONSTRAINT `inquiry_FK` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inquirys`
--

LOCK TABLES `inquirys` WRITE;
/*!40000 ALTER TABLE `inquirys` DISABLE KEYS */;
INSERT INTO `inquirys` VALUES (6,'woman','영화/예매','sgd','sdg','','2023-07-26 16:09:25','2023-07-26 16:09:25'),(7,'woman','영화/예매','sdg','sdg','','2023-07-26 16:10:26','2023-07-26 16:10:26'),(8,'woman','영화/예매','zz','zzz','','2023-07-26 16:10:32','2023-07-26 16:10:32'),(9,'woman','영화/예매','gsd','sdg','','2023-07-26 16:10:53','2023-07-26 16:10:53'),(10,'woman','영화/예매','ss','ss','','2023-07-26 16:10:58','2023-07-26 16:10:58'),(11,'woman','영화/예매','sdg','sdg','','2023-07-26 16:11:39','2023-07-26 16:11:39'),(12,'woman','영화/예매','엌','ㅋㅋㅋ','z','2023-07-26 16:11:45','2023-07-26 16:11:45'),(13,'woman','영화/예매','ㄴㅇㅎ','ㅇ\nㅇ\nㅇ\nㅇ\n\n\n\n\n\n\n\nㅇ','','2023-07-26 16:12:09','2023-07-26 16:12:09'),(14,'woman','영화관','sdf','sdf','','2023-07-26 16:30:00','2023-07-26 16:30:00'),(15,'admin','영화/예매','문의','문의','','2023-07-26 18:15:45','2023-07-26 18:15:45'),(16,'admin','영화/예매','sdf','sdf','','2023-07-26 19:24:29','2023-07-26 19:24:29'),(17,'admin','영화/예매','','','','2023-07-26 19:25:23','2023-07-26 19:25:23'),(18,'admin','영화/예매','s','f','','2023-07-26 19:32:00','2023-07-26 19:32:00'),(19,'admin','영화/예매','sd','d','','2023-07-27 11:24:42','2023-07-27 11:24:42'),(20,'admin','영화/예매','s','g','','2023-07-27 11:24:46','2023-07-27 11:24:46'),(21,'admin','영화관','sdf','sdf','aa','2023-07-27 11:24:54','2023-07-27 14:26:04'),(22,'admin','기타','sdf','sdf','sdf','2023-07-27 11:25:34','2023-07-27 14:33:30'),(23,'admin','게시판','sdg','sdf','sdfsdgsdg\n\n\n\n\nssdf','2023-07-27 11:25:40','2023-07-27 14:43:35'),(24,'admin','영화/예매','sd','d','asdfsdf','2023-07-27 11:25:44','2023-07-27 14:23:50'),(25,'admin','영화/예매','sd','gd','sdg','2023-07-27 11:25:48','2023-07-27 14:39:27'),(26,'admin','모임','asdf','ddd\nd\nd\ndd\n\n\n\n\n\n\nddd\n\nzzz','asdfsdfsdfzzz','2023-07-27 12:28:25','2023-07-27 14:42:39'),(27,'admin','게시판','sdf','sdf','aa','2023-07-27 15:20:19','2023-08-03 18:11:39'),(28,'admin','모임','dd','sdf','sdf','2023-07-27 15:23:21','2023-08-03 18:11:34'),(29,'aaaaaa','영화/예매','sdg','sdg','zzzdg','2023-07-28 14:16:21','2023-08-03 18:12:56'),(31,'admin','이벤트','sdf','sdf','sdf','2023-07-31 14:54:16','2023-08-03 18:09:36'),(32,'admin','영화관','ㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋ','ㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋ','sdfzzz\\\n\n\nsdf\n\n\n\nzz','2023-08-01 02:37:22','2023-08-07 13:12:13');
/*!40000 ALTER TABLE `inquirys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meetboards`
--

DROP TABLE IF EXISTS `meetboards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meetboards` (
  `meetboardNum` int NOT NULL AUTO_INCREMENT,
  `meet_Num` int NOT NULL,
  `user_Id` varchar(255) NOT NULL,
  `body` varchar(9999) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `grade` int NOT NULL DEFAULT '0',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`meetboardNum`),
  KEY `meetboards_FK` (`meet_Num`),
  KEY `meetboards_FK_1` (`user_Id`),
  CONSTRAINT `meetboards_FK` FOREIGN KEY (`meet_Num`) REFERENCES `meets` (`meetNum`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `meetboards_FK_1` FOREIGN KEY (`user_Id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=170 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meetboards`
--

LOCK TABLES `meetboards` WRITE;
/*!40000 ALTER TABLE `meetboards` DISABLE KEYS */;
INSERT INTO `meetboards` VALUES (141,72,'a','werasdf',0,'2023-07-18 17:09:49','2023-07-18 17:10:05'),(142,73,'kbj','123',0,'2023-07-18 20:06:49','2023-07-18 20:06:49'),(143,72,'a','sdf',0,'2023-07-18 21:19:05','2023-07-18 21:19:05'),(144,72,'a','import React, { useEffect } from \"react\";\nimport { styled } from \"styled-components\";\nimport { useState } from \"react\";\nimport { useRef } from \"react\";\nimport { v4 as uuidv4 } from \"uuid\";\nimport { BsFillChatDotsFill } from \"react-icons/bs\";\nimport MeetDetailChatInput from \"./MeetDetailChatInput\";\nimport Man from \"../../../public/Man.png\";\nimport Woman from \"../../../public/Woman.png\";\nimport { getMsg, sendMsg } from \"../../../lib/api/meet\";\n\nconst MeetDetailChat = ({ user, meet }) => {\n  const [msg, setMsg] = useState([]);\n  const [arrivalMessage, setArrivalMessage] = useState(null);\n  const [a, setA] = useState(1);\n  const scrollRef = useRef();\n  const getMessages = async () => {\n    const meetNum = meet.meetNum;\n    const userId = user.num;\n    const response = await getMsg({ meetNum, userId });\n    setMsg(response.data);\n  };\n  useEffect(() => {\n    const interval = setInterval(getMessages, 2000); // 0.1초마다 getMessages 호출\n\n    return () => {\n      clearInterval(interval); // 컴포넌트가 언마운트되면 interval을 정리(cleanup)\n    };\n  }, []);\n  const down = () => {\n    console.log(\"aaaaaaaaaaaaaaaaaaaa\", a);\n    if (a === 1) {\n      console.log(\"실행합니다\");\n      scrollRef.current?.scrollIntoView({ behavior: \"smooth\" });\n    }\n    setA(2);\n  };\n  const handleSendMsg = async (message) => {\n    try {\n      setA(1);\n      console.log(\"핸들센드메시지\", a);\n\n      const userId = user.num;\n      const meetNum = meet.meetNum;\n      await sendMsg({ userId, meetNum, message });\n\n      const msgs = [...msg];\n      msgs.push({ fromSelf: true, message: message });\n      setMsg(msgs);\n      down();\n      getMessages();\n    } catch (error) {\n      console.log(error);\n    }\n  };\n\n  useEffect(() => {\n    if (msg.length > 0) {\n      down();\n    }\n  }, [msg, a]);\n\n  return (\n    <Container>\n      <div className=\"chat-header\">\n        <div className=\"user-details\">\n          {/* <div className=\"avatar\">{meet.meetNum}</div> */}\n          <div className=\"meet-title\">\n            <h3>\n              <span>\n                <BsFillChatDotsFill />\n                <h2>{meet && meet.title}</h2>\n              </span>\n            </h3>\n          </div>\n        </div>\n      </div>\n      <div className=\"chat-messages\">\n        {msg.map((message) => {\n          return (\n            <div ref={scrollRef} key={uuidv4()}>\n              <div\n                className={`message ${\n                  message.fromSelf ? \"sended\" : \"received\"\n                }`}\n              >\n                {message.fromSelf ? null : (\n                  <div>\n                    <Profile gender={message.gender} />\n                    <Profile2>{message.senderName}</Profile2>\n                  </div>\n                )}\n                <div className=\"content\">\n                  <span className=\"sender\">{message.message}</span>\n                </div>\n              </div>\n            </div>\n          );\n        })}\n      </div>\n      <MeetDetailChatInput handleSendMsg={handleSendMsg} />\n    </Container>\n  );\n};\n\nconst Profile = styled.div`\n  display: flex;\n  flex-direction: column;\n  align-items: center;\n  justify-content: center;\n  width: 3rem;\n  height: 3rem;\n  border-radius: 1rem;\n  margin: 0 0.5rem 0rem 0;\n  background-color: ${(props) =>\n    props.gender === \"남자\" ? \"blue\" : props.gender === \"여자\" ? \"pink\" : \"\"};\n  color: white;\n  font-weight: bold;\n  background-image: url(${(props) =>\n    props.gender === \"남자\" ? Man : props.gender === \"여자\" ? Woman : \"\"});\n  background-size: cover;\n  background-repeat: no-repeat;\n  background-position: center;\n\n  .sender {\n    font-size: 0.7rem;\n    margin-top: 0.2rem;\n  }\n`;\n\nconst Profile2 = styled.div`\n  margin: 0 1rem 3rem 0;\n  text-align: center;\n  font-weight: bold;\n`;\n\nconst Container = styled.div`\n  display: grid;\n  grid-template-rows: 10% 80% 10%;\n  gap: 0.1rem;\n  overflow: hidden;\n  @media screen and (min-width: 720px) and (max-width: 1080px) {\n    grid-template-rows: 15% 70% 15%;\n  }\n  .chat-header {\n    display: flex;\n    justify-content: space-between;\n    align-items: center;\n    padding: 0 2rem;\n    .user-details {\n      display: flex;\n      align-items: center;\n      gap: 1rem;\n      .avatar {\n        img {\n          height: 3rem;\n        }\n      }\n      .meet-title {\n        h3 {\n          color: white;\n          display: flex;\n          align-items: center;\n          span {\n            display: flex;\n            align-items: center;\n            font-weight: bold;\n            h2 {\n              margin: 0 0 0 0.3rem;\n            }\n          }\n        }\n      }\n    }\n  }\n  .chat-messages {\n    padding: 1rem 2rem;\n    display: flex;\n    flex-direction: column;\n    gap: 1rem;\n    overflow: auto;\n    &::-webkit-scrollbar {\n      width: 0.2rem;\n      &-thumb {\n        background-color: #ffffff39;\n        width: 0.1rem;\n        border-radius: 1rem;\n      }\n    }\n    .message {\n      display: flex;\n      align-items: center;\n      .content {\n        max-width: 40%;\n        overflow-wrap: break-word;\n        padding: 1rem;\n        font-size: 1.1rem;\n        border-radius: 1rem;\n        color: #d1d1d1;\n        @media screen and (min-width: 720px) and (max-width: 1080px) {\n          max-width: 70%;\n        }\n      }\n    }\n    .sended {\n      justify-content: flex-end;\n      .content {\n        background-color: #4f04ff21;\n      }\n    }\n    .received {\n      justify-content: flex-start;\n      .content {\n        background-color: #9900ff20;\n      }\n    }\n  }\n`;\n\nexport default MeetDetailChat;\n',0,'2023-07-19 11:09:47','2023-07-19 11:09:47'),(149,81,'admin','asdfsadf\n\nsdf\n\nsdf\n',0,'2023-07-25 11:37:56','2023-07-25 11:37:56'),(151,81,'admin','asdf\n\nsdfgw',0,'2023-07-25 11:49:17','2023-07-25 11:49:17'),(152,82,'woman','sdf',0,'2023-07-25 14:46:21','2023-07-25 14:46:21'),(154,91,'admin','sdf',0,'2023-07-27 21:25:33','2023-07-27 21:25:33'),(156,83,'admin','sdfsdf',0,'2023-07-28 09:05:27','2023-07-28 09:05:52'),(157,87,'admin','sdf',0,'2023-07-28 09:41:40','2023-07-28 09:41:40'),(158,87,'woman','ggg',0,'2023-07-28 09:42:15','2023-07-28 09:42:15'),(161,92,'admin','asf',0,'2023-07-28 15:01:54','2023-07-28 15:01:54'),(164,98,'admin','sdfsdf',0,'2023-08-01 00:58:18','2023-08-01 00:58:18'),(165,85,'admin','sdf',0,'2023-08-01 02:41:21','2023-08-01 02:41:21'),(166,85,'admin','sdf',0,'2023-08-01 19:53:39','2023-08-01 19:53:39'),(167,93,'admin','ㄴㅇㄹ',0,'2023-08-01 20:00:09','2023-08-01 20:00:09'),(168,93,'admin','qwe',0,'2023-08-02 18:44:10','2023-08-02 18:44:10'),(169,99,'admin','sdrf',0,'2023-08-07 13:11:50','2023-08-07 13:11:50');
/*!40000 ALTER TABLE `meetboards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meetcomments`
--

DROP TABLE IF EXISTS `meetcomments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meetcomments` (
  `meetcommentNum` int NOT NULL AUTO_INCREMENT,
  `meetboard_Num` int NOT NULL,
  `user_Id` varchar(255) NOT NULL,
  `body` varchar(1000) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`meetcommentNum`),
  KEY `meetcomments_FK` (`user_Id`),
  KEY `meetcomments_FK_1` (`meetboard_Num`),
  CONSTRAINT `meetcomments_FK` FOREIGN KEY (`user_Id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `meetcomments_FK_1` FOREIGN KEY (`meetboard_Num`) REFERENCES `meetboards` (`meetboardNum`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=149 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meetcomments`
--

LOCK TABLES `meetcomments` WRITE;
/*!40000 ALTER TABLE `meetcomments` DISABLE KEYS */;
INSERT INTO `meetcomments` VALUES (128,141,'a','asdsfd','2023-07-18 17:10:11','2023-07-18 17:10:13'),(130,152,'woman','sdg','2023-07-25 14:46:24','2023-07-25 14:46:24'),(131,152,'woman','sg','2023-07-25 14:46:24','2023-07-25 14:46:24'),(132,152,'woman','zz','2023-07-25 14:46:25','2023-07-25 14:46:25'),(133,152,'woman','sdf','2023-07-25 14:46:26','2023-07-25 14:46:26'),(134,152,'woman','g','2023-07-25 14:46:26','2023-07-25 14:46:26'),(135,152,'woman','zz','2023-07-25 14:46:28','2023-07-25 14:46:28'),(136,152,'woman','hhsdh','2023-07-25 14:46:29','2023-07-25 14:46:29'),(140,157,'admin','sdf','2023-07-28 09:41:45','2023-07-28 09:41:45'),(141,158,'woman','zzzsdf','2023-07-28 09:42:17','2023-07-28 09:42:29'),(146,142,'admin','sdfsdf','2023-08-01 19:54:44','2023-08-01 19:54:44'),(147,142,'admin','sdf','2023-08-01 19:56:35','2023-08-01 19:56:35'),(148,164,'admin','ㅋㅋ','2023-08-01 20:00:17','2023-08-01 20:00:17');
/*!40000 ALTER TABLE `meetcomments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meetmessages`
--

DROP TABLE IF EXISTS `meetmessages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meetmessages` (
  `messageNum` bigint NOT NULL AUTO_INCREMENT,
  `sender` int NOT NULL,
  `meetNum` int NOT NULL,
  `message` varchar(9999) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`messageNum`),
  KEY `messages_FK_1` (`meetNum`),
  KEY `meetmessages_FK` (`sender`),
  CONSTRAINT `meetmessages_FK` FOREIGN KEY (`sender`) REFERENCES `users` (`userNum`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `messages_FK_1` FOREIGN KEY (`meetNum`) REFERENCES `meets` (`meetNum`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=191 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meetmessages`
--

LOCK TABLES `meetmessages` WRITE;
/*!40000 ALTER TABLE `meetmessages` DISABLE KEYS */;
INSERT INTO `meetmessages` VALUES (83,1,72,'zz','2023-07-18 17:40:45','2023-07-18 17:40:45'),(84,2,72,'dgdfg','2023-07-18 18:16:33','2023-07-18 18:16:33'),(85,1,72,'ㅋㅋㅋ','2023-07-18 21:15:35','2023-07-18 21:15:35'),(86,8,72,'하이요','2023-07-18 21:15:38','2023-07-18 21:15:38'),(87,1,72,'네 반갑습니다','2023-07-18 21:15:42','2023-07-18 21:15:42'),(88,1,72,'ㅎㅎㅎ','2023-07-18 21:15:44','2023-07-18 21:15:44'),(89,1,72,'asdasd','2023-07-19 10:16:04','2023-07-19 10:16:04'),(90,8,72,'sss','2023-07-19 10:16:06','2023-07-19 10:16:06'),(91,8,72,'ㅇㅇㅇ','2023-07-19 10:16:09','2023-07-19 10:16:09'),(92,1,72,'zzzzz','2023-07-19 10:16:18','2023-07-19 10:16:18'),(93,8,72,'혼ㅁㅇㄹ','2023-07-19 10:16:25','2023-07-19 10:16:25'),(94,8,72,'마','2023-07-19 10:16:30','2023-07-19 10:16:30'),(95,5,74,'132','2023-07-19 10:17:41','2023-07-19 10:17:41'),(96,5,72,'312','2023-07-19 10:17:47','2023-07-19 10:17:47'),(97,1,72,'ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇ','2023-07-19 10:49:01','2023-07-19 10:49:01'),(98,1,72,'ㄴ','2023-07-19 10:49:32','2023-07-19 10:49:32'),(99,1,72,'ㄴㅇㄹ','2023-07-19 10:50:50','2023-07-19 10:50:50'),(100,1,72,'ㅁㄴㅇㄹ','2023-07-19 10:51:10','2023-07-19 10:51:10'),(101,1,72,'d','2023-07-19 10:52:04','2023-07-19 10:52:04'),(102,1,72,'df','2023-07-19 10:52:20','2023-07-19 10:52:20'),(103,1,72,'sdf','2023-07-19 10:52:44','2023-07-19 10:52:44'),(104,1,72,'dd','2023-07-19 10:52:57','2023-07-19 10:52:57'),(105,1,72,'sdf','2023-07-19 10:54:35','2023-07-19 10:54:35'),(106,1,72,'gg','2023-07-19 10:54:37','2023-07-19 10:54:37'),(107,1,72,'sdfsdf','2023-07-19 11:01:12','2023-07-19 11:01:12'),(108,1,72,'sdf','2023-07-19 11:02:29','2023-07-19 11:02:29'),(109,1,72,'import React, { useEffect } from \"react\"; import { styled } from \"styled-components\"; import { useState } from \"react\"; import { useRef } from \"react\"; import { v4 as uuidv4 } from \"uuid\"; import { BsFillChatDotsFill } from \"react-icons/bs\"; import MeetDetailChatInput from \"./MeetDetailChatInput\"; import Man from \"../../../public/Man.png\"; import Woman from \"../../../public/Woman.png\"; import { getMsg, sendMsg } from \"../../../lib/api/meet\";  const MeetDetailChat = ({ user, meet }) => {   const [msg, setMsg] = useState([]);   const [arrivalMessage, setArrivalMessage] = useState(null);   const [a, setA] = useState(1);   const scrollRef = useRef();   const getMessages = async () => {     const meetNum = meet.meetNum;     const userId = user.num;     const response = await getMsg({ meetNum, userId });     setMsg(response.data);   };   useEffect(() => {     const interval = setInterval(getMessages, 2000); // 0.1초마다 getMessages 호출      return () => {       clearInterval(interval); // 컴포넌트가 언마운트되면 interval을 정리(cleanup)     };   }, []);   const down = () => {     console.log(\"aaaaaaaaaaaaaaaaaaaa\", a);     if (a === 1) {       console.log(\"실행합니다\");       scrollRef.current?.scrollIntoView({ behavior: \"smooth\" });     }     setA(2);   };   const handleSendMsg = async (message) => {     try {       setA(1);       console.log(\"핸들센드메시지\", a);        const userId = user.num;       const meetNum = meet.meetNum;       await sendMsg({ userId, meetNum, message });        const msgs = [...msg];       msgs.push({ fromSelf: true, message: message });       setMsg(msgs);       down();       getMessages();     } catch (error) {       console.log(error);     }   };    useEffect(() => {     if (msg.length > 0) {       down();     }   }, [msg, a]);    return (     <Container>       <div className=\"chat-header\">         <div className=\"user-details\">           {/* <div className=\"avatar\">{meet.meetNum}</div> */}           <div className=\"meet-title\">             <h3>               <span>                 <BsFillChatDotsFill />                 <h2>{meet && meet.title}</h2>               </span>             </h3>           </div>         </div>       </div>       <div className=\"chat-messages\">         {msg.map((message) => {           return (             <div ref={scrollRef} key={uuidv4()}>               <div                 className={`message ${                   message.fromSelf ? \"sended\" : \"received\"                 }`}               >                 {message.fromSelf ? null : (                   <div>                     <Profile gender={message.gender} />                     <Profile2>{message.senderName}</Profile2>                   </div>                 )}                 <div className=\"content\">                   <span className=\"sender\">{message.message}</span>                 </div>               </div>             </div>           );         })}       </div>       <MeetDetailChatInput handleSendMsg={handleSendMsg} />     </Container>   ); };  const Profile = styled.div`   display: flex;   flex-direction: column;   align-items: center;   justify-content: center;   width: 3rem;   height: 3rem;   border-radius: 1rem;   margin: 0 0.5rem 0rem 0;   background-color: ${(props) =>     props.gender === \"남자\" ? \"blue\" : props.gender === \"여자\" ? \"pink\" : \"\"};   color: white;   font-weight: bold;   background-image: url(${(props) =>     props.gender === \"남자\" ? Man : props.gender === \"여자\" ? Woman : \"\"});   background-size: cover;   background-repeat: no-repeat;   background-position: center;    .sender {     font-size: 0.7rem;     margin-top: 0.2rem;   } `;  const Profile2 = styled.div`   margin: 0 1rem 3rem 0;   text-align: center;   font-weight: bold; `;  const Container = styled.div`   display: grid;   grid-template-rows: 10% 80% 10%;   gap: 0.1rem;   overflow: hidden;   @media screen and (min-width: 720px) and (max-width: 1080px) {     grid-template-rows: 15% 70% 15%;   }   .chat-header {     display: flex;     justify-content: space-between;     align-items: center;     padding: 0 2rem;     .user-details {       display: flex;       align-items: center;       gap: 1rem;       .avatar {         img {           height: 3rem;         }       }       .meet-title {         h3 {           color: white;           display: flex;           align-items: center;           span {             display: flex;             align-items: center;             font-weight: bold;             h2 {               margin: 0 0 0 0.3rem;             }           }         }       }     }   }   .chat-messages {     padding: 1rem 2rem;     display: flex;     flex-direction: column;     gap: 1rem;     overflow: auto;     &::-webkit-scrollbar {       width: 0.2rem;       &-thumb {         background-color: #ffffff39;         width: 0.1rem;         border-radius: 1rem;       }     }     .message {       display: flex;       align-items: center;       .content {         max-width: 40%;         overflow-wrap: break-word;         padding: 1rem;         font-size: 1.1rem;         border-radius: 1rem;         color: #d1d1d1;         @media screen and (min-width: 720px) and (max-width: 1080px) {           max-width: 70%;         }       }     }     .sended {       justify-content: flex-end;       .content {         background-color: #4f04ff21;       }     }     .received {       justify-content: flex-start;       .content {         background-color: #9900ff20;       }     }   } `;  export default MeetDetailChat;','2023-07-19 11:03:32','2023-07-19 11:03:32'),(110,1,72,'ss','2023-07-19 11:06:13','2023-07-19 11:06:13'),(111,1,72,'dsdf','2023-07-19 11:06:16','2023-07-19 11:06:16'),(112,5,72,'ㅎㅇ','2023-07-19 11:06:27','2023-07-19 11:06:27'),(113,1,72,'sdfsdf','2023-07-19 11:06:43','2023-07-19 11:06:43'),(114,1,72,'sdgsge','2023-07-19 11:06:48','2023-07-19 11:06:48'),(115,1,72,'aa','2023-07-19 11:06:53','2023-07-19 11:06:53'),(116,5,72,'.','2023-07-19 11:07:13','2023-07-19 11:07:13'),(117,1,72,'d','2023-07-19 11:08:56','2023-07-19 11:08:56'),(118,1,72,'a','2023-07-19 11:08:59','2023-07-19 11:08:59'),(119,1,72,'sdf','2023-07-19 11:09:13','2023-07-19 11:09:13'),(120,1,72,'aa','2023-07-19 11:09:15','2023-07-19 11:09:15'),(121,1,72,'aa','2023-07-19 11:09:19','2023-07-19 11:09:19'),(122,1,72,'gg','2023-07-19 11:09:21','2023-07-19 11:09:21'),(123,1,72,'dd','2023-07-19 11:09:26','2023-07-19 11:09:26'),(124,1,72,'sdf','2023-07-19 11:09:38','2023-07-19 11:09:38'),(125,1,76,'안녕하세요','2023-07-19 17:19:14','2023-07-19 17:19:14'),(126,3,76,'sdf','2023-07-20 09:54:06','2023-07-20 09:54:06'),(127,3,76,'sg','2023-07-20 09:54:08','2023-07-20 09:54:08'),(130,8,76,'zzz','2023-07-20 16:05:36','2023-07-20 16:05:36'),(131,1,76,'dfgsdf','2023-07-21 10:23:44','2023-07-21 10:23:44'),(133,1,76,'하이요','2023-07-21 10:26:31','2023-07-21 10:26:31'),(135,11,76,'ㅇㅇㅇㅇㅇ','2023-07-21 11:07:38','2023-07-21 11:07:38'),(136,11,76,'ㄹㄹㄹㄹ','2023-07-21 11:07:59','2023-07-21 11:07:59'),(138,8,76,'d','2023-07-26 08:56:33','2023-07-26 08:56:33'),(139,8,76,'sd','2023-07-26 08:56:37','2023-07-26 08:56:37'),(140,8,76,'s','2023-07-26 08:56:39','2023-07-26 08:56:39'),(141,8,76,'s','2023-07-26 08:56:58','2023-07-26 08:56:58'),(142,8,76,'s','2023-07-26 08:57:06','2023-07-26 08:57:06'),(143,8,76,'g','2023-07-26 08:57:08','2023-07-26 08:57:08'),(144,8,76,'d','2023-07-26 10:34:00','2023-07-26 10:34:00'),(145,2,76,'ㄷㄷ','2023-07-26 18:16:25','2023-07-26 18:16:25'),(146,2,87,'dfg','2023-07-27 21:16:51','2023-07-27 21:16:51'),(147,2,76,'zzz','2023-07-27 21:26:18','2023-07-27 21:26:18'),(148,2,76,'df','2023-07-27 21:26:23','2023-07-27 21:26:23'),(149,2,76,'ss','2023-07-27 21:26:24','2023-07-27 21:26:24'),(150,2,76,'zz','2023-07-27 21:26:25','2023-07-27 21:26:25'),(151,2,87,'dfg','2023-07-28 09:44:01','2023-07-28 09:44:01'),(152,8,91,'s','2023-07-28 10:31:53','2023-07-28 10:31:53'),(153,2,91,'fd','2023-07-28 10:34:40','2023-07-28 10:34:40'),(154,2,91,'sdf','2023-07-28 10:34:41','2023-07-28 10:34:41'),(155,2,91,'s','2023-07-28 10:34:41','2023-07-28 10:34:41'),(156,2,91,'s','2023-07-28 10:34:41','2023-07-28 10:34:41'),(157,2,91,'s','2023-07-28 10:34:42','2023-07-28 10:34:42'),(158,2,91,'s','2023-07-28 10:34:42','2023-07-28 10:34:42'),(159,2,91,'s','2023-07-28 10:34:42','2023-07-28 10:34:42'),(160,2,91,'s','2023-07-28 10:34:42','2023-07-28 10:34:42'),(161,2,91,'s','2023-07-28 10:34:42','2023-07-28 10:34:42'),(162,2,91,'s','2023-07-28 10:34:43','2023-07-28 10:34:43'),(163,2,91,'s','2023-07-28 10:34:43','2023-07-28 10:34:43'),(164,2,91,'s','2023-07-28 10:34:44','2023-07-28 10:34:44'),(165,2,91,'z','2023-07-28 10:34:45','2023-07-28 10:34:45'),(166,2,91,'z','2023-07-28 10:34:45','2023-07-28 10:34:45'),(167,2,91,'d','2023-07-28 10:35:49','2023-07-28 10:35:49'),(168,24,91,'sdfsdf','2023-07-28 14:13:31','2023-07-28 14:13:31'),(169,24,91,'sdf','2023-07-28 14:13:34','2023-07-28 14:13:34'),(170,24,91,'d','2023-07-28 14:13:35','2023-07-28 14:13:35'),(171,24,91,'d','2023-07-28 14:13:36','2023-07-28 14:13:36'),(172,24,91,'d','2023-07-28 14:13:36','2023-07-28 14:13:36'),(173,24,91,'d','2023-07-28 14:13:36','2023-07-28 14:13:36'),(174,24,91,'d','2023-07-28 14:13:37','2023-07-28 14:13:37'),(175,21,92,'안녕하세요?','2023-07-28 14:25:57','2023-07-28 14:25:57'),(176,21,92,'대구광역시 강북경찰서 서장 김다훈입니다.','2023-07-28 14:26:20','2023-07-28 14:26:20'),(177,27,92,'ㄷㄷ;','2023-07-28 14:26:43','2023-07-28 14:26:43'),(178,21,92,'대포통장 사용 흔적이 있어서 연락드렸습니다.','2023-07-28 14:27:29','2023-07-28 14:27:29'),(179,21,92,'강북경찰서로 와주셔야 할 것 같습니다.','2023-07-28 14:27:42','2023-07-28 14:27:42'),(180,2,92,' hi ','2023-07-28 15:01:30','2023-07-28 15:01:30'),(181,2,92,'my name is miae','2023-07-28 15:01:34','2023-07-28 15:01:34'),(182,2,92,'good morning','2023-07-28 15:01:39','2023-07-28 15:01:39'),(183,2,92,'chatting good','2023-07-28 15:02:26','2023-07-28 15:02:26'),(185,2,76,'sdf','2023-07-30 15:53:49','2023-07-30 15:53:49'),(186,2,76,'sdf','2023-07-30 15:53:50','2023-07-30 15:53:50'),(187,2,76,'zz','2023-07-30 15:53:51','2023-07-30 15:53:51'),(188,2,76,'sdf','2023-08-01 15:49:36','2023-08-01 15:49:36'),(189,2,93,'zz','2023-08-01 19:53:51','2023-08-01 19:53:51'),(190,2,85,'ㄴㅇㄹ','2023-08-01 20:00:02','2023-08-01 20:00:02');
/*!40000 ALTER TABLE `meetmessages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meets`
--

DROP TABLE IF EXISTS `meets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meets` (
  `meetNum` int NOT NULL AUTO_INCREMENT,
  `title` varchar(1000) NOT NULL,
  `body` varchar(1000) NOT NULL,
  `userId` varchar(255) NOT NULL,
  `region` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `count` int NOT NULL DEFAULT '1',
  `tags` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `views` int NOT NULL DEFAULT '0',
  `createdAt` timestamp NOT NULL,
  `updatedAt` timestamp NOT NULL,
  PRIMARY KEY (`meetNum`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meets`
--

LOCK TABLES `meets` WRITE;
/*!40000 ALTER TABLE `meets` DISABLE KEYS */;
INSERT INTO `meets` VALUES (72,'새모임','<p>ㅇㅇ</p>','woman','서울',1,'[\"ㅇㅇ\"]',190,'2023-07-18 07:34:50','2023-08-02 00:49:11'),(73,'12312312','<p>12313</p>','kbj','서울',1,'[]',11,'2023-07-18 11:06:44','2023-08-02 04:56:32'),(74,'ad','<p>asd</p>','a','서울',2,'[\"asdf\"]',31,'2023-07-18 11:33:01','2023-07-24 00:14:13'),(75,'123123','<p>123123</p>','woman','서울',2,'[]',28,'2023-07-19 01:15:15','2023-08-02 04:56:26'),(76,'고군분투모임','<p>고군분투 잘하는 사람만</p>','admin','경북/대구',6,'[\"고군분투\"]',105,'2023-07-19 08:12:54','2023-08-02 04:54:32'),(80,'ㄴㅇㅎㄴㅇㅎ','<p>ㄴㅇㅎ</p>','admin','서울',2,'[\"ㅁ\"]',5,'2023-07-25 01:51:17','2023-07-28 00:05:44'),(81,'ㅁㄴㅇㄹ','<p>ㄴㅇㄹ</p>','test01','서울',1,'[\"ㄶ\"]',5,'2023-07-25 01:52:27','2023-07-25 03:22:39'),(82,'agsd','<p>gsdg</p>','test01','서울',1,'[\"aa\",\"sdf\"]',7,'2023-07-25 02:03:08','2023-07-30 10:34:45'),(83,'모잉','<p>ㅇ</p>','woman','서울',1,'[\"ㅇ\"]',3,'2023-07-25 05:44:08','2023-07-28 01:20:43'),(84,'asdf','<p>sdf</p>','woman','서울',1,'[\"d\"]',1,'2023-07-25 08:18:39','2023-07-28 00:23:17'),(85,'dd','<p>d</p>','woman','서울',1,'[\"d\"]',8,'2023-07-25 08:18:43','2023-08-02 04:59:59'),(86,'z','<p>z</p>','woman','서울',2,'[]',8,'2023-07-25 08:18:46','2023-07-31 08:57:15'),(87,'g','<p>g</p>','woman','서울',3,'[]',19,'2023-07-25 08:18:49','2023-07-28 05:37:59'),(91,'ㄴ','<p>ㅎㄴㅇㅎ</p>','aaaa','서울',3,'[]',32,'2023-07-26 10:41:40','2023-08-03 11:19:36'),(92,'ㄴㅇㄹ','<p>ㄴㅇㄹ</p>','kdh','경기/인천',4,'[\"ㄴㅇㅎ\"]',24,'2023-07-28 01:24:07','2023-07-31 03:08:50'),(93,'영화ㄱㄱ','<p>영화볼사람?</p>','testt','경북/대구',1,'[\"ㄱㄱ\"]',8,'2023-07-28 06:28:45','2023-08-03 03:44:08'),(94,'sdf','<p>sdf</p>','admin','충청/대전',1,'[]',2,'2023-07-31 06:57:41','2023-08-02 04:51:47'),(95,'asdg','<p>sdg</p>','admin','전라/광주',1,'[]',0,'2023-07-31 06:57:46','2023-07-31 06:57:46'),(96,'zzz','<p>zz</p>','admin','경북/대구',1,'[]',1,'2023-07-31 06:57:50','2023-08-02 05:05:59'),(97,'sdf','<p>sdf</p>','admin','경남/부산/울산',1,'[]',6,'2023-07-31 06:57:54','2023-08-03 09:05:52'),(98,'zz','<p>zz</p>','admin','강원',1,'[]',12,'2023-07-31 06:57:58','2023-08-03 03:14:15'),(99,'sdf','<p>gg</p>','admin','제주',1,'[]',20,'2023-07-31 06:58:02','2023-08-07 04:11:43'),(100,'sdf','<p>sdf</p>','admin','서울',1,'[]',0,'2023-08-07 07:06:41','2023-08-07 07:06:41'),(101,'aa','<p>aa</p>','admin','서울',1,'[]',1,'2023-08-07 07:22:32','2023-08-07 07:22:33');
/*!40000 ALTER TABLE `meets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meetusers`
--

DROP TABLE IF EXISTS `meetusers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meetusers` (
  `meetuserNum` int NOT NULL AUTO_INCREMENT,
  `user_Num` int NOT NULL,
  `user_Id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `meet_MeetNum` int NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`meetuserNum`),
  KEY `meetusers_FK_1` (`meet_MeetNum`),
  KEY `meetusers_FK` (`user_Num`),
  CONSTRAINT `meetusers_FK` FOREIGN KEY (`user_Num`) REFERENCES `users` (`userNum`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `meetusers_FK_1` FOREIGN KEY (`meet_MeetNum`) REFERENCES `meets` (`meetNum`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=332 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meetusers`
--

LOCK TABLES `meetusers` WRITE;
/*!40000 ALTER TABLE `meetusers` DISABLE KEYS */;
INSERT INTO `meetusers` VALUES (260,8,'woman',72,'2023-07-18 16:34:59','2023-07-18 16:34:59'),(263,1,'a',74,'2023-07-18 20:33:01','2023-07-18 20:33:01'),(264,5,'kbj',75,'2023-07-19 10:15:15','2023-07-19 10:15:15'),(277,2,'admin',76,'2023-07-19 17:12:54','2023-07-19 17:12:54'),(281,8,'woman',76,'2023-07-20 10:46:18','2023-07-20 10:46:18'),(285,2,'admin',74,'2023-07-20 14:44:21','2023-07-20 14:44:21'),(287,1,'a',76,'2023-07-20 16:13:12','2023-07-20 16:13:12'),(289,11,'bombcar',76,'2023-07-21 11:07:18','2023-07-21 11:07:18'),(291,8,'woman',75,'2023-07-25 09:19:55','2023-07-25 09:19:55'),(292,6,'aaaaa',76,'2023-07-25 10:39:05','2023-07-25 10:39:05'),(296,2,'admin',80,'2023-07-25 10:51:17','2023-07-25 10:51:17'),(300,8,'woman',83,'2023-07-25 14:44:08','2023-07-25 14:44:08'),(302,8,'woman',84,'2023-07-25 17:18:39','2023-07-25 17:18:39'),(303,8,'woman',85,'2023-07-25 17:18:43','2023-07-25 17:18:43'),(304,8,'woman',86,'2023-07-25 17:18:46','2023-07-25 17:18:46'),(305,8,'woman',87,'2023-07-25 17:18:49','2023-07-25 17:18:49'),(306,5,'kbj',76,'2023-07-26 14:29:44','2023-07-26 14:29:44'),(310,2,'admin',91,'2023-07-26 19:41:40','2023-07-26 19:41:40'),(312,2,'admin',87,'2023-07-28 10:21:14','2023-07-28 10:21:14'),(313,2,'admin',92,'2023-07-28 10:24:07','2023-07-28 10:24:07'),(315,24,'aaaa',91,'2023-07-28 14:13:09','2023-07-28 14:13:09'),(316,27,'zzzz',91,'2023-07-28 14:25:03','2023-07-28 14:25:03'),(317,21,'kdh',87,'2023-07-28 14:25:26','2023-07-28 14:25:26'),(318,21,'kdh',92,'2023-07-28 14:25:39','2023-07-28 14:25:39'),(319,27,'zzzz',92,'2023-07-28 14:26:30','2023-07-28 14:26:30'),(322,2,'admin',94,'2023-07-31 15:57:41','2023-07-31 15:57:41'),(323,2,'admin',95,'2023-07-31 15:57:46','2023-07-31 15:57:46'),(324,2,'admin',96,'2023-07-31 15:57:50','2023-07-31 15:57:50'),(325,2,'admin',97,'2023-07-31 15:57:54','2023-07-31 15:57:54'),(326,2,'admin',98,'2023-07-31 15:57:59','2023-07-31 15:57:59'),(327,2,'admin',99,'2023-07-31 15:58:02','2023-07-31 15:58:02'),(328,2,'admin',93,'2023-07-31 15:58:46','2023-07-31 15:58:46'),(329,2,'admin',86,'2023-07-31 17:57:15','2023-07-31 17:57:15'),(330,2,'admin',100,'2023-08-07 16:06:41','2023-08-07 16:06:41'),(331,2,'admin',101,'2023-08-07 16:22:32','2023-08-07 16:22:32');
/*!40000 ALTER TABLE `meetusers` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `update_meets_count_insert` AFTER INSERT ON `meetusers` FOR EACH ROW BEGIN
  UPDATE meets
  SET count = (
    SELECT COUNT(*)
    FROM meetusers
    WHERE meetusers.meet_MeetNum = meets.meetNum
  )
  WHERE meetNum = NEW.meet_MeetNum;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `update_meets_count_delete` AFTER DELETE ON `meetusers` FOR EACH ROW BEGIN
  UPDATE meets
  SET count = (
    SELECT COUNT(*)
    FROM meetusers
    WHERE meetusers.meet_MeetNum = meets.meetNum
  )
  WHERE meetNum = OLD.meet_MeetNum;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `movieLike`
--

DROP TABLE IF EXISTS `movieLike`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movieLike` (
  `movie_like_num` int NOT NULL AUTO_INCREMENT,
  `mc_num` int NOT NULL,
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`movie_like_num`),
  KEY `movieLike_FK` (`mc_num`),
  CONSTRAINT `movieLike_FK` FOREIGN KEY (`mc_num`) REFERENCES `moviecomments` (`mc_num`)
) ENGINE=InnoDB AUTO_INCREMENT=202 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movieLike`
--

LOCK TABLES `movieLike` WRITE;
/*!40000 ALTER TABLE `movieLike` DISABLE KEYS */;
INSERT INTO `movieLike` VALUES (197,105,'admin'),(198,111,'admin'),(199,109,'admin');
/*!40000 ALTER TABLE `movieLike` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `trg_update_likes_after_insert` AFTER INSERT ON `movieLike` FOR EACH ROW BEGIN
    UPDATE moviecomments
    SET likes = likes + 1
    WHERE mc_num = NEW.mc_num;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `trg_update_likes_after_delete` AFTER DELETE ON `movieLike` FOR EACH ROW BEGIN
    UPDATE moviecomments
    SET likes = likes - 1
    WHERE mc_num = OLD.mc_num;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `moviecomments`
--

DROP TABLE IF EXISTS `moviecomments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `moviecomments` (
  `mc_num` int NOT NULL AUTO_INCREMENT,
  `content` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `star` int DEFAULT NULL,
  `likes` int NOT NULL DEFAULT '0',
  `movie_id` int DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`mc_num`),
  KEY `moviecomments_FK` (`movie_id`),
  KEY `moviecomments_FK_1` (`id`),
  CONSTRAINT `moviecomments_FK` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`movie_id`),
  CONSTRAINT `moviecomments_FK_1` FOREIGN KEY (`id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `moviecomments`
--

LOCK TABLES `moviecomments` WRITE;
/*!40000 ALTER TABLE `moviecomments` DISABLE KEYS */;
INSERT INTO `moviecomments` VALUES (98,'ㄴㅇㄹㄴ','wnsdud96908',3,0,976573,'2023-07-25 15:03:43','2023-07-25 15:04:02'),(99,'sdfsd','wnsdud96908',5,0,976573,'2023-07-25 15:03:46','2023-07-25 15:03:46'),(100,'adsf','wnsdud96908',4,0,976573,'2023-07-25 15:03:50','2023-07-25 15:03:50'),(101,'내공냠냠','wnsdud96908',9,0,298618,'2023-07-25 15:12:22','2023-07-25 15:12:22'),(102,'으아아아아아아아아ㅏ!!!!!!!!!!!!!!!!!!!!!!!!!!!111','wnsdud96908',7,0,298618,'2023-07-25 19:32:49','2023-07-25 19:32:49'),(103,'굿트','admin',1,0,298618,'2023-07-27 11:43:11','2023-07-27 11:43:11'),(105,'zzz','admin',6,1,346698,'2023-07-28 12:25:35','2023-07-28 12:25:35'),(106,'개재미없다','admin',10,0,614479,'2023-07-28 12:26:06','2023-07-28 12:26:06'),(108,'sdgsdg','admin',6,0,298618,'2023-08-01 01:01:03','2023-08-01 01:01:03'),(109,'sdg','admin',8,1,298618,'2023-08-01 01:01:05','2023-08-01 01:01:05'),(110,'sdgsdg','wnsdud96908',10,0,569094,'2023-08-01 22:45:24','2023-08-01 22:45:24'),(111,'sdf','admin',8,1,346698,'2023-08-02 17:05:31','2023-08-02 17:05:31');
/*!40000 ALTER TABLE `moviecomments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `moviereviews`
--

DROP TABLE IF EXISTS `moviereviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `moviereviews` (
  `reviewNum` int NOT NULL,
  `userId` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` varchar(255) NOT NULL,
  `star` int NOT NULL,
  PRIMARY KEY (`reviewNum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `moviereviews`
--

LOCK TABLES `moviereviews` WRITE;
/*!40000 ALTER TABLE `moviereviews` DISABLE KEYS */;
/*!40000 ALTER TABLE `moviereviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movies`
--

DROP TABLE IF EXISTS `movies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movies` (
  `movie_num` int NOT NULL AUTO_INCREMENT,
  `movie_name` varchar(100) NOT NULL,
  `tiketing` varchar(100) DEFAULT NULL,
  `star` int DEFAULT NULL,
  `popularity` int DEFAULT NULL,
  `movie_id` int DEFAULT NULL,
  `age` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `img` json DEFAULT NULL,
  PRIMARY KEY (`movie_num`),
  UNIQUE KEY `movies_UN` (`movie_id`)
) ENGINE=InnoDB AUTO_INCREMENT=250 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies`
--

LOCK TABLES `movies` WRITE;
/*!40000 ALTER TABLE `movies` DISABLE KEYS */;
INSERT INTO `movies` VALUES (214,'플래시','1196',7,2966,298618,'12','\"/muD7qu9UagO08dZBout1YXwdE6a.jpg\"'),(215,'바비','225',8,2896,346698,'12','\"/rt8sHzR0XUyKHxU75ZIWs7MsNEN.jpg\"'),(216,'스파이더맨: 어크로스 더 유니버스','2358',8,1166,569094,'all','\"/zG9TYiHt0fdaJiWuNEhFrfKzwoi.jpg\"'),(217,'엘리멘탈','532',8,1130,976573,'all','\"/1YYL1OcgjPLjAGi6n0iZe1gdl9i.jpg\"'),(218,'미션 임파서블: 데드 레코닝 PART ONE','516',8,718,575264,'15','\"/nQsWPG020kSWdOl3EhFXRNE2s0n.jpg\"'),(219,'인시디어스: 빨간 문','199',6,704,614479,'15','\"/4UCQWDmMsOxqgtdTbkihSXbexbf.jpg\"'),(220,'틴에이지 크라켄 루비','117',7,516,1040148,'all','\"/pUv9neufsz8hsXoIN5KkAeNZLgl.jpg\"'),(221,'인디아나 존스: 운명의 다이얼','757',7,333,335977,'12','\"/8ifAx8GS5AHL7xOTMJDMaza84RQ.jpg\"'),(222,'애스터로이드 시티','396',7,244,747188,'12','\"/hmqczDa2B81Znu4QUUxCv8I6Yfd.jpg\"'),(223,'악마의 부활','205',6,130,296271,'15','\"/AdkReuLR9vumTzuFGTl9UBkpLTN.jpg\"'),(224,'귀공자','5',8,66,1057001,'19','\"/nMyM7CpWoebu03mAI3JtKTwh5zm.jpg\"'),(225,'보 이즈 어프레이드','416',7,68,798286,'19','\"/pU8F9qKSoiqcv1nnaYezBzp7MoZ.jpg\"'),(226,'명탐정 코난: 흑철의 어영','17',6,92,1047041,'12','\"/wBdLreR2YI2ZAYGk7c4Zy2qJU2d.jpg\"'),(227,'플래닛','17',6,63,864101,'12','\"/oYy2fIQBxp1IlQ6oqE6KQoTXqD.jpg\"'),(228,'헌티드 맨션','0',0,69,616747,'12','\"/oYfssARSMGcHk6RPLwSARsTURmC.jpg\"'),(229,'블랙 워터: 어비스','389',5,48,522444,'15','\"/8nYyl8WJE9BXPaBsjZglzJo36FP.jpg\"'),(230,'더 썬','238',7,39,806368,'15','\"/yEte5dcKGzcE6N3ZBRlVB8xLtlP.jpg\"'),(244,'비닐하우스','0',0,17,915655,'15','\"/hVb49BvAYeILDcXkGJvzAYnZ8bf.jpg\"'),(246,'몬스터 패밀리 2','61',7,25,823609,'19','\"/9kPiLqqWlwCVL0KGJeM4kcZA9q9.jpg\"');
/*!40000 ALTER TABLE `movies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movietimes`
--

DROP TABLE IF EXISTS `movietimes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movietimes` (
  `movietimes_num` int NOT NULL AUTO_INCREMENT,
  `cinema` varchar(100) NOT NULL,
  `room` int NOT NULL,
  `seat` int NOT NULL,
  `movie_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `age` varchar(100) NOT NULL,
  `disp` varchar(100) NOT NULL,
  `language` varchar(100) DEFAULT NULL,
  `start` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `end` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `date` varchar(100) NOT NULL,
  PRIMARY KEY (`movietimes_num`),
  CONSTRAINT `movietimes_FK` FOREIGN KEY (`movietimes_num`) REFERENCES `cinemas` (`cinema_num`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movietimes`
--

LOCK TABLES `movietimes` WRITE;
/*!40000 ALTER TABLE `movietimes` DISABLE KEYS */;
/*!40000 ALTER TABLE `movietimes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mycinema`
--

DROP TABLE IF EXISTS `mycinema`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mycinema` (
  `mycinema_num` int NOT NULL AUTO_INCREMENT,
  `cinema_num` int DEFAULT NULL,
  `addr` varchar(50) DEFAULT NULL,
  `id` varchar(255) NOT NULL,
  `addr_detail` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`mycinema_num`),
  KEY `Mycinema_FK` (`cinema_num`),
  KEY `Mycinema_FK_1` (`id`),
  CONSTRAINT `Mycinema_FK` FOREIGN KEY (`cinema_num`) REFERENCES `cinemas` (`cinema_num`),
  CONSTRAINT `Mycinema_FK_1` FOREIGN KEY (`id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mycinema`
--

LOCK TABLES `mycinema` WRITE;
/*!40000 ALTER TABLE `mycinema` DISABLE KEYS */;
INSERT INTO `mycinema` VALUES (61,NULL,NULL,'admin',''),(64,NULL,NULL,'aaaa',''),(72,NULL,'가양','admin','서울특별시 강서구 등촌동 73-1 번지 롯데시네마 가양'),(73,NULL,'용인역북','kkk','경기도 용인시 처인구 역북동 802 번지 더와이스퀘어 5층(역북동)'),(74,NULL,'동탄','kkk','경기도 화성시 오산동 967-157 번지 롯데백화점 7층 롯데시네마 동탄'),(75,NULL,'가양','woman','서울특별시 강서구 등촌동 73-1 번지 롯데시네마 가양');
/*!40000 ALTER TABLE `mycinema` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `postcomments`
--

DROP TABLE IF EXISTS `postcomments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `postcomments` (
  `commentNum` int NOT NULL AUTO_INCREMENT,
  `postNum` int NOT NULL,
  `userId` varchar(255) NOT NULL,
  `content` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`commentNum`),
  KEY `postcomments_FK` (`postNum`),
  KEY `postcomments_FK_1` (`userId`),
  CONSTRAINT `postcomments_FK` FOREIGN KEY (`postNum`) REFERENCES `posts` (`postNum`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `postcomments_FK_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=174 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `postcomments`
--

LOCK TABLES `postcomments` WRITE;
/*!40000 ALTER TABLE `postcomments` DISABLE KEYS */;
INSERT INTO `postcomments` VALUES (147,144,'admin','어서오세요~','2023-07-28 00:58:17','2023-07-28 00:58:17'),(150,145,'kbj','만들어 주셔서 감사합니다','2023-07-28 01:06:49','2023-07-28 01:06:49'),(151,145,'hkd','넵 숙지하겠습니다','2023-07-28 01:11:18','2023-07-28 01:11:18'),(152,144,'hkd','반갑습니다!','2023-07-28 01:15:16','2023-07-28 01:15:16'),(155,167,'admin','352523','2023-08-03 03:21:45','2023-08-03 03:21:45'),(156,167,'admin','왜','2023-08-03 03:33:17','2023-08-03 03:33:17'),(170,167,'kbj','e','2023-08-03 05:41:13','2023-08-03 05:41:13'),(171,167,'kbj','e','2023-08-03 05:41:13','2023-08-03 05:41:13'),(172,167,'kbj','e','2023-08-03 05:41:13','2023-08-03 05:41:13');
/*!40000 ALTER TABLE `postcomments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `postNum` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `body` varchar(9999) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `img` longblob,
  `userId` varchar(255) NOT NULL,
  `grade` int NOT NULL DEFAULT '1',
  `likes` int NOT NULL DEFAULT '0',
  `views` int NOT NULL DEFAULT '0',
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `tags` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`postNum`),
  KEY `posts_FK` (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=177 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (144,'안녕하세요~','<p>영화정보 공유받고싶어서 왔습니다 잘 부탁드립니다.</p>',NULL,'kbj',1,0,15,'2023-07-28 00:57:59','2023-07-28 05:13:25','[\"영화\",\"뉴비\",\"초보\"]'),(145,'안녕하세요 관리자입니다.','<p>모두 즐거운 문화생활을 즐기시길 바라며</p><p>게시판 내 분란을 조장하는 행위, 불법 행위 등이 목격되면 경고없이 게시물, 댓글이 삭제될 수 있으며</p><p>또한 회원탈퇴까지 이어질 수 있다는 점 이해하시고 이용하시길 바랍니다.</p><p><br></p><p>모두 깨끗한 게시판, 즐거운 게시판 만들기에 동참해주세요^^</p>',NULL,'admin',1,0,1000,'2023-07-28 01:06:06','2023-07-28 05:12:42','[\"관리자\",\"클린\",\"즐거운\",\"게시판\"]'),(146,'안녕하세요','<p>잘 부탁 드리겠습니다!</p>',NULL,'hkd',1,0,6,'2023-07-28 01:14:30','2023-07-28 01:23:45','[]'),(148,'ags','<p>asg</p>',NULL,'admin',1,0,1,'2023-07-28 06:01:26','2023-07-28 06:27:17','[\"sg\"]'),(150,'dg','<p>d</p>',NULL,'admin',1,0,0,'2023-07-30 04:38:59','2023-07-30 04:38:59','[]'),(151,'z','<p>z</p>',NULL,'admin',1,0,0,'2023-07-30 04:39:02','2023-07-30 04:39:02','[]'),(152,'g','<p>g</p>',NULL,'admin',1,0,0,'2023-07-30 04:39:04','2023-07-30 04:39:04','[]'),(153,'gdg','<p>dg</p>',NULL,'admin',1,0,0,'2023-07-30 04:39:06','2023-07-30 04:39:06','[]'),(154,'dg','<p>dg</p>',NULL,'admin',1,0,0,'2023-07-30 04:39:09','2023-07-30 04:39:09','[]'),(155,'dg','<p>dg</p>',NULL,'admin',1,0,0,'2023-07-30 04:39:11','2023-07-30 04:39:11','[]'),(156,'zz','<p>zz</p>',NULL,'admin',1,0,0,'2023-07-30 04:39:13','2023-07-30 04:39:13','[]'),(157,'gg','<p>gg</p>',NULL,'admin',1,0,0,'2023-07-30 04:39:15','2023-07-30 04:39:15','[]'),(158,'ss','<p>ss</p>',NULL,'admin',1,0,0,'2023-07-30 04:39:18','2023-07-30 04:39:18','[]'),(159,'zz','<p>zz</p>',NULL,'admin',1,0,0,'2023-07-30 04:39:20','2023-07-30 04:39:20','[]'),(160,'zz','<p>zz</p>',NULL,'admin',1,0,0,'2023-07-31 12:20:13','2023-07-31 12:20:13','[\"z\"]'),(161,'rty','<p>rty</p>',NULL,'admin',1,0,2,'2023-08-01 00:16:26','2023-07-31 15:20:19','[]'),(162,'sdg','<p>sdg</p>',NULL,'admin',1,0,0,'2023-07-31 15:20:13','2023-07-31 15:20:13','[\"d\"]'),(163,'sdf','<p>sdf</p>',NULL,'admin',1,0,0,'2023-08-01 00:52:01','2023-08-01 00:52:01','[]'),(164,'sdg','<p>sdg</p>',NULL,'admin',1,0,0,'2023-08-01 00:52:28','2023-08-01 00:52:28','[]'),(165,'sdg','<p>sdg</p>',NULL,'admin',1,0,1,'2023-08-01 09:57:34','2023-08-02 09:14:05','[]'),(166,'sdg','<p>sdg</p>',NULL,'admin',1,0,0,'2023-07-31 15:57:57','2023-07-31 15:57:57','[\"sdg\"]'),(167,'지린다미어','<p>지렸다리우스</p>',NULL,'admin',1,0,4,'2023-08-02 09:16:29','2023-08-03 05:41:08','[\"ㄷㄷ\"]'),(168,'dd','<p>fsd</p>',NULL,'admin',1,0,0,'2023-08-02 10:49:42','2023-08-02 10:49:42','[]'),(169,'sdg','<p>sdg</p>',NULL,'admin',1,0,0,'2023-08-02 10:50:00','2023-08-02 10:50:00','[]'),(170,'sdf','<p>sdf</p>',NULL,'admin',1,0,0,'2023-08-03 04:52:43','2023-08-03 04:52:43','[]'),(171,'ㄴㅇㅎ','<p>ㄴㅇㅎ</p>',NULL,'admin',1,0,0,'2023-08-03 04:56:29','2023-08-03 04:56:29','[]'),(172,'ㄴㅇㄹ','<p>ㄴㅇㄹ</p>',NULL,'admin',1,0,0,'2023-08-03 04:57:47','2023-08-03 04:57:47','[]'),(173,'dd','<p>CURRENT_TIMESTAMP</p><p>DEFAULT_GENERATED</p>',NULL,'admin',1,0,0,'2023-08-03 05:02:04','2023-08-03 05:02:04','[]'),(174,'ㄴㅇㄹ','<p>ㄴㅇㄹ</p>',NULL,'admin',1,0,0,'2023-08-03 05:03:38','2023-08-03 05:03:38','[]'),(175,'text','<p>sdfsdfsdgsagd</p>',NULL,'admin',1,0,0,'2023-08-07 16:07:14','2023-08-07 07:07:14','[]'),(176,'아아아','<p>ㅇㅇ</p>',NULL,'admin',1,0,0,'2023-08-07 16:07:45','2023-08-07 07:07:45','[]');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `regions`
--

DROP TABLE IF EXISTS `regions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `regions` (
  `grade` int NOT NULL,
  `region` varchar(100) NOT NULL,
  PRIMARY KEY (`grade`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `regions`
--

LOCK TABLES `regions` WRITE;
/*!40000 ALTER TABLE `regions` DISABLE KEYS */;
INSERT INTO `regions` VALUES (0,'MY 영화관'),(1,'서울'),(2,'경기/인천'),(3,'충청/대전'),(4,'전라/광주'),(5,'경북/대구'),(6,'경남/부산/울산'),(7,'강원'),(8,'제주');
/*!40000 ALTER TABLE `regions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservations`
--

DROP TABLE IF EXISTS `reservations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reservations` (
  `reserve_num` int NOT NULL AUTO_INCREMENT,
  `user_id` varchar(100) NOT NULL,
  `movie_name` varchar(100) NOT NULL,
  `cinema` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `start` varchar(100) NOT NULL,
  `end` varchar(100) NOT NULL,
  `room` bigint NOT NULL,
  `person` varchar(100) NOT NULL,
  `seat` varchar(100) NOT NULL,
  `price` bigint NOT NULL,
  `discount` bigint NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`reserve_num`)
) ENGINE=InnoDB AUTO_INCREMENT=204 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservations`
--

LOCK TABLES `reservations` WRITE;
/*!40000 ALTER TABLE `reservations` DISABLE KEYS */;
INSERT INTO `reservations` VALUES (132,'kdh','명탐정 코난: 흑철의 어영','강동','2023-08-05','15:00','16:00',1,'성인 1','A3',39000000,0,'2023-08-02 18:19:20','2023-08-02 18:19:20'),(133,'admin','엘리멘탈','대구광장','2023-08-06','15:00','16:00',1,'성인 1,시니어 2000','A4,A5,A6',39000000,0,'2023-08-02 18:19:20','2023-08-02 18:19:20'),(134,'admin','엘리멘탈','서산','2023-08-06','15:00','16:00',1,'성인 1,시니어 2','A4,A5,A6',39000,0,'2023-08-02 18:19:20','2023-08-02 18:19:20'),(135,'kdh','플래시','광주광산','2023-01-05','15:00','16:00',1,'성인 1','A3',39000,0,'2023-08-02 18:19:20','2023-08-02 18:19:20'),(136,'admin','바비','대구율하','2023-01-12','15:00','16:00',1,'성인 1,시니어 2000','A4,A5,A6',39000000,0,'2023-08-02 18:19:20','2023-08-02 18:19:20'),(137,'admin','스파이더맨: 어크로스 더 유니버스','사천','2023-01-19','15:00','16:00',1,'성인 1,시니어 2','A4,A5,A6',39000,0,'2023-08-02 18:19:20','2023-08-02 18:19:20'),(138,'kdh','인시디어: 빨간 문','통영','2023-01-25','15:00','16:00',1,'성인 1','A3',39000,0,'2023-08-02 18:19:20','2023-08-02 18:19:20'),(139,'admin','플래시','상주','2023-01-10','15:00','16:00',1,'성인 1,시니어 2000','A4,A5,A6',39000000,0,'2023-08-02 18:19:20','2023-08-02 18:19:20'),(140,'admin','바비','포항','2023-01-18','15:00','16:00',1,'성인 1,시니어 2','A4,A5,A6',39000,0,'2023-08-02 18:19:20','2023-08-02 18:19:20'),(141,'kdh','스파이더맨: 어크로스 더 유니버스','경주','2023-01-22','15:00','16:00',1,'성인 1','A3',39000,0,'2023-08-02 18:19:20','2023-08-02 18:19:20'),(142,'admin','인시디어: 빨간 문','동탄','2023-01-29','15:00','16:00',1,'성인 1,시니어 2000','A4,A5,A6',39000000,0,'2023-08-02 18:19:20','2023-08-02 18:19:20'),(143,'kdh','플래시','강동','2023-01-08','15:00','16:00',1,'성인 1,시니어 2','A4,A5,A6',39000,0,'2023-08-02 18:19:20','2023-08-02 18:19:20'),(144,'admin','바비','대구광장','2023-01-15','15:00','16:00',1,'성인 1','A3',39000,0,'2023-08-02 18:19:20','2023-08-02 18:19:20'),(145,'kdh','플래시','광주광산','2023-02-05','15:00','16:00',1,'성인 1','A3',39000,0,'2023-08-02 18:19:20','2023-08-02 18:19:20'),(146,'admin','바비','대구율하','2023-02-12','15:00','16:00',1,'성인 1,시니어 2000','A4,A5,A6',39000000,0,'2023-08-02 18:19:20','2023-08-02 18:19:20'),(147,'admin','스파이더맨: 어크로스 더 유니버스','사천','2023-02-19','15:00','16:00',1,'성인 1,시니어 2','A4,A5,A6',39000,0,'2023-08-02 18:19:20','2023-08-02 18:19:20'),(148,'kdh','인시디어: 빨간 문','통영','2023-02-25','15:00','16:00',1,'성인 1','A3',39000,0,'2023-08-02 18:19:20','2023-08-02 18:19:20'),(149,'admin','플래시','상주','2023-02-10','15:00','16:00',1,'성인 1,시니어 2000','A4,A5,A6',39000000,0,'2023-08-02 18:19:20','2023-08-02 18:19:20'),(150,'kdh','플래시','광주광산','2023-03-05','15:00','16:00',1,'성인 1','A3',39000,0,'2023-08-02 18:19:20','2023-08-02 18:19:20'),(151,'admin','바비','대구율하','2023-03-12','15:00','16:00',1,'성인 1,시니어 2000','A4,A5,A6',39000000,0,'2023-08-02 18:19:20','2023-08-02 18:19:20'),(152,'admin','스파이더맨: 어크로스 더 유니버스','사천','2023-03-19','15:00','16:00',1,'성인 1,시니어 2','A4,A5,A6',39000,0,'2023-08-02 18:19:20','2023-08-02 18:19:20'),(153,'kdh','인시디어: 빨간 문','통영','2023-03-25','15:00','16:00',1,'성인 1','A3',39000,0,'2023-08-02 18:19:20','2023-08-02 18:19:20'),(154,'admin','플래시','상주','2023-03-10','15:00','16:00',1,'성인 1,시니어 2000','A4,A5,A6',39000000,0,'2023-08-02 18:19:20','2023-08-02 18:19:20'),(155,'kdh','플래시','광주광산','2023-04-05','15:00','16:00',1,'성인 1','A3',39000,0,'2023-08-02 18:19:20','2023-08-02 18:19:20'),(156,'admin','바비','대구율하','2023-04-12','15:00','16:00',1,'성인 1,시니어 2000','A4,A5,A6',39000000,0,'2023-08-02 18:19:20','2023-08-02 18:19:20'),(157,'admin','스파이더맨: 어크로스 더 유니버스','사천','2023-04-19','15:00','16:00',1,'성인 1,시니어 2','A4,A5,A6',39000,0,'2023-08-02 18:19:20','2023-08-02 18:19:20'),(158,'kdh','인시디어: 빨간 문','통영','2023-04-25','15:00','16:00',1,'성인 1','A3',39000,0,'2023-08-02 18:19:20','2023-08-02 18:19:20'),(159,'admin','플래시','상주','2023-04-10','15:00','16:00',1,'성인 1,시니어 2000','A4,A5,A6',39000000,0,'2023-08-02 18:19:20','2023-08-02 18:19:20'),(160,'kdh','바비','경주','2023-04-08','15:00','16:00',1,'성인 1','A3',39000,0,'2023-08-02 18:19:20','2023-08-02 18:19:20'),(161,'admin','스파이더맨: 어크로스 더 유니버스','동탄','2023-04-14','15:00','16:00',1,'성인 1,시니어 2','A4,A5,A6',39000,0,'2023-08-02 18:19:20','2023-08-02 18:19:20'),(162,'kdh','인시디어: 빨간 문','대구광장','2023-04-22','15:00','16:00',1,'성인 1','A3',39000,0,'2023-08-02 18:19:20','2023-08-02 18:19:20'),(163,'admin','플래시','광주광산','2023-04-03','15:00','16:00',1,'성인 1,시니어 2000','A4,A5,A6',39000000,0,'2023-08-02 18:19:20','2023-08-02 18:19:20'),(164,'kdh','바비','대구율하','2023-04-17','15:00','16:00',1,'성인 1','A3',39000,0,'2023-08-02 18:19:20','2023-08-02 18:19:20'),(165,'kdh','스파이더맨: 어크로스 더 유니버스','광주광산','2023-05-05','15:00','16:00',1,'성인 1','A3',39000,0,'2023-08-02 18:19:20','2023-08-02 18:19:20'),(166,'admin','인시디어: 빨간 문','대구율하','2023-05-12','15:00','16:00',1,'성인 1,시니어 2000','A4,A5,A6',39000000,0,'2023-08-02 18:19:20','2023-08-02 18:19:20'),(167,'kdh','플래시','사천','2023-05-19','15:00','16:00',1,'성인 1,시니어 2','A4,A5,A6',39000,0,'2023-08-02 18:19:20','2023-08-02 18:19:20'),(168,'admin','바비','통영','2023-05-25','15:00','16:00',1,'성인 1','A3',39000,0,'2023-08-02 18:19:20','2023-08-02 18:19:20'),(169,'kdh','스파이더맨: 어크로스 더 유니버스','상주','2023-05-10','15:00','16:00',1,'성인 1,시니어 2000','A4,A5,A6',39000000,0,'2023-08-02 18:19:20','2023-08-02 18:19:20'),(170,'admin','인시디어: 빨간 문','경주','2023-05-08','15:00','16:00',1,'성인 1','A3',39000,0,'2023-08-02 18:19:20','2023-08-02 18:19:20'),(171,'kdh','스파이더맨: 어크로스 더 유니버스','광주광산','2023-05-05','15:00','16:00',1,'성인 1','A3',39000,0,'2023-08-02 18:19:20','2023-08-02 18:19:20'),(172,'admin','인시디어: 빨간 문','대구율하','2023-05-12','15:00','16:00',1,'성인 1,시니어 2000','A4,A5,A6',39000000,0,'2023-08-02 18:19:20','2023-08-02 18:19:20'),(173,'kdh','플래시','사천','2023-05-19','15:00','16:00',1,'성인 1,시니어 2','A4,A5,A6',39000,0,'2023-08-02 18:19:20','2023-08-02 18:19:20'),(174,'admin','바비','통영','2023-05-25','15:00','16:00',1,'성인 1','A3',39000,0,'2023-08-02 18:19:20','2023-08-02 18:19:20'),(175,'kdh','스파이더맨: 어크로스 더 유니버스','상주','2023-05-10','15:00','16:00',1,'성인 1,시니어 2000','A4,A5,A6',39000000,0,'2023-08-02 18:19:20','2023-08-02 18:19:20'),(176,'admin','인시디어: 빨간 문','경주','2023-05-08','15:00','16:00',1,'성인 1','A3',39000,0,'2023-08-02 18:19:20','2023-08-02 18:19:20'),(177,'kdh','바비','광주광산','2023-06-03','15:00','16:00',1,'성인 1','A3',39000,0,'2023-08-02 18:19:20','2023-08-02 18:19:20'),(178,'admin','스파이더맨: 어크로스 더 유니버스','대구율하','2023-06-08','15:00','16:00',1,'성인 1,시니어 2000','A4,A5,A6',39000000,0,'2023-08-02 18:19:20','2023-08-02 18:19:20'),(179,'kdh','플래시','사천','2023-06-15','15:00','16:00',1,'성인 1,시니어 2','A4,A5,A6',39000,0,'2023-08-02 18:19:20','2023-08-02 18:19:20'),(180,'admin','바비','통영','2023-06-20','15:00','16:00',1,'성인 1','A3',39000,0,'2023-08-02 18:19:20','2023-08-02 18:19:20'),(181,'kdh','스파이더맨: 어크로스 더 유니버스','상주','2023-06-25','15:00','16:00',1,'성인 1,시니어 2000','A4,A5,A6',39000000,0,'2023-08-02 18:19:20','2023-08-02 18:19:20'),(182,'admin','인시디어: 빨간 문','경주','2023-06-12','15:00','16:00',1,'성인 1','A3',39000,0,'2023-08-02 18:19:20','2023-08-02 18:19:20'),(183,'kdh','바비','광주광산','2023-06-01','15:00','16:00',1,'성인 1','A3',39000,0,'2023-08-02 18:19:20','2023-08-02 18:19:20'),(184,'admin','스파이더맨: 어크로스 더 유니버스','대구율하','2023-06-10','15:00','16:00',1,'성인 1,시니어 2000','A4,A5,A6',39000000,0,'2023-08-02 18:19:20','2023-08-02 18:19:20'),(185,'kdh','플래시','사천','2023-06-18','15:00','16:00',1,'성인 1,시니어 2','A4,A5,A6',39000,0,'2023-08-02 18:19:20','2023-08-02 18:19:20'),(186,'admin','바비','통영','2023-06-23','15:00','16:00',1,'성인 1','A3',39000,0,'2023-08-02 18:19:20','2023-08-02 18:19:20'),(187,'kdh','스파이더맨: 어크로스 더 유니버스','상주','2023-06-28','15:00','16:00',1,'성인 1,시니어 2000','A4,A5,A6',39000000,0,'2023-08-02 18:19:20','2023-08-02 18:19:20'),(188,'admin','인시디어: 빨간 문','경주','2023-06-04','15:00','16:00',1,'성인 1','A3',39000,0,'2023-08-02 18:19:20','2023-08-02 18:19:20'),(189,'kdh','스파이더맨: 어크로스 더 유니버스','광주광산','2023-07-10','15:00','16:00',1,'성인 1,시니어 2000','A4,A5,A6',39000000,0,'2023-08-02 18:19:20','2023-08-02 18:19:20'),(190,'admin','바비','대구율하','2023-07-20','15:00','16:00',1,'성인 1','A3',39000,0,'2023-08-02 18:19:20','2023-08-02 18:19:20'),(191,'kkk','플래닛','건대입구','2023-08-04','15:00','17:00',1,'성인 1','A4',13000,0,'2023-08-02 21:34:41','2023-08-02 21:34:41'),(192,'kkk','명탐정 코난: 흑철의 어영','강동','2023-08-05','15:00','16:00',1,'성인 1','A7',13000,0,'2023-08-02 21:35:03','2023-08-02 21:35:03'),(193,'kkk','명탐정 코난: 흑철의 어영','강동','2023-08-05','15:00','16:00',1,'성인 1','A8',13000,0,'2023-08-01 21:35:03','2023-08-01 21:35:03'),(194,'admin','범죄와의 전쟁','대구율하','2023-08-05','16:00','17:00',2,'성인 2','A3,A5',26000,0,'2023-08-01 21:35:03','2023-08-01 21:35:03'),(195,'kkk','바비','대구율하','2023-07-20','15:00','16:00',1,'성인 1','A7',13000,0,'2023-08-01 21:35:03','2023-08-01 21:35:03'),(196,'kkk','플래닛','건대입구','2023-08-04','15:00','17:00',1,'성인 1','B6',13000,0,'2023-08-02 23:12:43','2023-08-02 23:12:43'),(197,'kkk','인디아나 존스: 운명의 다이얼','가양','2023-08-03','19:25','21:43',1,'성인 2','A6,A7',26000,0,'2023-08-02 23:53:07','2023-08-02 23:53:07'),(198,'woman','플래닛','건대입구','2023-08-04','15:00','17:00',1,'시니어 1','C9',7000,0,'2023-08-03 20:40:45','2023-08-03 20:40:45'),(199,'admin','플래시','가양','2023-08-06','16:00','24:00',1,'청소년 2','D7,D8',20000,0,'2023-08-03 21:04:37','2023-08-03 21:04:37'),(200,'admin','비닐하우스','대구광장','2023-08-07','10:00','12:00',1,'청소년 1,시니어 1,장애인 1','C6,C7,C8',22000,100,'2023-08-03 21:06:16','2023-08-03 21:06:16'),(201,'kdh','플래시','가양','2023-08-05','13:00','14:00',1,'성인 1','A6',13000,0,'2023-08-03 19:38:04','2023-08-03 19:38:04'),(202,'admin','플래시','가양','2023-08-06','16:00','24:00',1,'성인 3,청소년 8,시니어 8,장애인 8','A3,B4,B3,C3,C4,D4,E3,F3',215000,0,'2023-08-05 19:46:29','2023-08-05 19:46:29'),(203,'admin','플래시','가양','2023-08-06','16:00','24:00',1,'시니어 1','D3',7000,0,'2023-08-05 19:47:11','2023-08-05 19:47:11');
/*!40000 ALTER TABLE `reservations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `userNum` int NOT NULL AUTO_INCREMENT,
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `tel` varchar(255) NOT NULL,
  `age` bigint NOT NULL,
  `gender` varchar(100) NOT NULL,
  `grade` int NOT NULL DEFAULT '0',
  `point` bigint NOT NULL DEFAULT '0',
  `createdAt` timestamp NOT NULL,
  `updatedAt` timestamp NOT NULL,
  PRIMARY KEY (`userNum`),
  UNIQUE KEY `users_UN` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'a','손강민','$2b$12$TKFDELUWFIitQuH20yVzK.CjLJVCA.6tfE5oxqSYVH38Hqp098tSi','skm0628@naver.com','1',1,'남자',0,100,'2023-06-26 22:03:29','2023-07-18 09:13:07'),(2,'admin','관리자','$2b$12$Ng9LrmiUwKEGIgYE4GuXW.f4A8WzCASssFZ0b7YjlsligpCvdJ0oi','admin@admin.comd','2',99,'여자',2,0,'2023-06-27 16:47:02','2023-08-05 10:47:11'),(3,'user','유저','$2b$12$pQ.AWaXqWc7xExd438MGT.tpsOFAt4i2UmCWubhJWLxHd/E1YoIJC','user@user.com','1',1,'여자',0,0,'2023-06-27 16:47:30','2023-06-27 16:47:30'),(4,'aaa','skm','$2b$12$iw2VZ53xDoLpHvhJiEZQ/.DBI6.EVE.T0n9gcx3glNYL55g2ioP6a','skm0628@naver.com','1',2,'남자',0,0,'2023-06-27 17:43:08','2023-06-27 17:43:08'),(5,'kbj','김병제','$2b$12$GpvrCHM3WC4Sb0rrMXTlUe6zdF7lBiNUkLAUy2EWDUt9y3DVl48OW','kbj@kbj','01053938443',22,'남자',0,50,'2023-06-27 22:16:25','2023-07-19 01:09:18'),(6,'aaaaa','손강민','$2b$12$gVKtT8.DLqfcocm.g92fcelk.fH2esnb4oK0kbLhauhGjQHtd1DW2','admin@admin.com','1',1,'남자',0,0,'2023-07-04 01:04:35','2023-07-04 01:04:35'),(7,'wnsdud96908','이준영','$2b$12$LCiTgDr8GMLeZ7HhjNT3bOSjuNcm4Vje2bgsH3XevP50X1VOi6/cm','wnsdud96908@naver.com','01073383966',27,'남자',1,450,'2023-07-05 12:18:08','2023-08-02 07:45:25'),(8,'woman','여자','$2b$12$IJQnUE73rVIJJwPb9w4afO9pxE7IsyyFrlyLjpscfHwUBQFTQECO6','admin@admin.com','010',131,'여자',0,0,'2023-07-13 07:43:07','2023-08-03 11:40:45'),(11,'bombcar','최강강민','$2b$12$T.Do.R5YEXc9fW.n0OJSBuRU16JgPCjKxfRk4NqwIqviKgOeaocRe','qwerasf@gmail.com','010-2222-3333',54,'여자',0,0,'2023-07-21 02:06:41','2023-07-21 02:06:41'),(19,'hkd','홍길동','$2b$12$TvDv0d555/ra0Hsp.t2KIezTxgGVPM.UQaOP7urHbCJXfgqh0/et.','111@111','11111111',15,'남자',0,0,'2023-07-28 01:10:45','2023-07-28 01:10:45'),(20,'lss','이순신','$2b$12$Ir2XHfBKHtNNva.yzq6y8OjmFhfnCK3XMycScguiDfo3iqs11k84a','lss@lss','이순신',124124,'남자',0,0,'2023-07-28 01:21:50','2023-07-28 01:21:50'),(21,'kdh','kdh','$2b$12$gwCNFLea3qVLShuPbBRkJO5rpTGWplNjR/ybKOOOFHEZJYhxx96tW','kdh@kdh','kdh',123,'남자',0,-6000,'2023-07-28 02:34:13','2023-08-04 04:38:04'),(24,'aaaa','a','$2b$12$v4UqN4/nVb3U5.5VT.jZ3.Ab7QAZ8AQrfymURZewZoIflo.Azh2/6','skm0628@naver.com','1',1,'남자',0,0,'2023-07-28 05:08:27','2023-07-28 05:09:00'),(25,'aaaaaa','a','$2b$12$PnMSrs6g5XNnd.65uHeBN.0GVshASORtxjyxUW3Ge5A/2vfOCMHHa','skm0628@naver.com','1',1,'남자',0,0,'2023-07-28 05:14:58','2023-07-28 05:14:58'),(26,'ssss','a','$2b$12$5aV6keZXfVRVHXYFphf1o.zjY3wAWHPmgvjteCeK3t7pF7hViAzla','111@111','01053938443',1,'남자',0,0,'2023-07-28 05:23:45','2023-07-28 05:23:45'),(27,'zzzz','김병제','$2b$12$AsIzYINtwBcAJyX.cKYdSetOlvr6ToxWCRb3FR.5BHFbnS3ZRkYXi','tqx7514@naver.com','01053938443',1,'남자',0,0,'2023-07-28 05:24:45','2023-07-28 05:24:45'),(30,'30e','30대','$2b$12$zADB5o.6CbRPNV/Zd2k85uiwdr7yul.3FCl0YrXEANp0OirU7I8uy','skm0628@naver.com','13',31,'여자',0,0,'2023-07-31 12:15:07','2023-07-31 12:15:07'),(31,'40e','40대','$2b$12$.HZIV9dMas.QVL9007AEWeHImaZfKqYU80t0PdZMpWXyQbNd2OU1G','skm0628@naver.com','1',42,'남자',0,0,'2023-07-31 12:15:38','2023-07-31 12:15:38'),(32,'kkk','asdf','$2b$12$NuBTkbLhPOt/2G/eghdlRuf7FcBGdm8eKiRXqXQ5/4oQQnR8h7ZT6','a@a.com','kdh',12,'남자',0,0,'2023-08-03 03:39:06','2023-08-03 08:53:07');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-07 16:26:54