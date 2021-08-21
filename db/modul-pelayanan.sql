/*
 Navicat Premium Data Transfer

 Source Server         : MySQL Local (Docker)
 Source Server Type    : MySQL
 Source Server Version : 50643
 Source Host           : 127.0.0.1:3307
 Source Schema         : satub_3261

 Target Server Type    : MySQL
 Target Server Version : 50643
 File Encoding         : 65001

 Date: 22/08/2021 01:02:58
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for assesment_form_items
-- ----------------------------
DROP TABLE IF EXISTS `assesment_form_items`;
CREATE TABLE `assesment_form_items`  (
  `item_id` int(11) NOT NULL AUTO_INCREMENT,
  `item_type` enum('text','number','radio','checkbox','box','level') CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `item_label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `item_parent` int(11) NULL DEFAULT NULL,
  `item_img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`item_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 228 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of assesment_form_items
-- ----------------------------
INSERT INTO `assesment_form_items` VALUES (1, '', 'A. Asessmen pasien', 0, NULL);
INSERT INTO `assesment_form_items` VALUES (2, 'text', 'Keluhan Utama', 1, NULL);
INSERT INTO `assesment_form_items` VALUES (3, 'text', 'Riwayat Kesehatan Pasien', 1, NULL);
INSERT INTO `assesment_form_items` VALUES (4, '', 'Status Fisik', 1, NULL);
INSERT INTO `assesment_form_items` VALUES (5, 'text', 'Tekanan Darah', 4, NULL);
INSERT INTO `assesment_form_items` VALUES (6, 'text', 'Nadi', 4, NULL);
INSERT INTO `assesment_form_items` VALUES (7, 'text', 'Respirasi', 4, NULL);
INSERT INTO `assesment_form_items` VALUES (8, 'text', 'Suhu', 4, NULL);
INSERT INTO `assesment_form_items` VALUES (9, 'text', 'Berat Badan', 4, NULL);
INSERT INTO `assesment_form_items` VALUES (10, 'text', 'Tinggi Badan', 4, NULL);
INSERT INTO `assesment_form_items` VALUES (11, '', 'Psiko-Sosial-Kultural', 1, NULL);
INSERT INTO `assesment_form_items` VALUES (12, '', 'Psikologis', 11, NULL);
INSERT INTO `assesment_form_items` VALUES (13, 'radio', 'Tenang', 12, NULL);
INSERT INTO `assesment_form_items` VALUES (14, 'radio', 'Cemas', 12, NULL);
INSERT INTO `assesment_form_items` VALUES (15, 'radio', 'Takut', 12, NULL);
INSERT INTO `assesment_form_items` VALUES (16, 'radio', 'Marah', 12, NULL);
INSERT INTO `assesment_form_items` VALUES (17, 'radio', 'Sedih', 12, NULL);
INSERT INTO `assesment_form_items` VALUES (18, 'radio', 'Halusinasi', 12, NULL);
INSERT INTO `assesment_form_items` VALUES (19, '', 'Fungsional', 11, NULL);
INSERT INTO `assesment_form_items` VALUES (20, 'radio', 'Mandiri', 19, NULL);
INSERT INTO `assesment_form_items` VALUES (21, 'radio', 'Perlu bantuan', 19, NULL);
INSERT INTO `assesment_form_items` VALUES (22, 'radio', 'Alat bantu', 19, NULL);
INSERT INTO `assesment_form_items` VALUES (23, 'radio', 'Cacat tubuh', 19, NULL);
INSERT INTO `assesment_form_items` VALUES (24, 'radio', 'Ketergantungan total', 19, NULL);
INSERT INTO `assesment_form_items` VALUES (25, '', 'Agama', 11, NULL);
INSERT INTO `assesment_form_items` VALUES (26, 'radio', 'Islam', 25, NULL);
INSERT INTO `assesment_form_items` VALUES (27, 'radio', 'Kristen Protestan', 25, NULL);
INSERT INTO `assesment_form_items` VALUES (28, 'radio', 'Kristen Katolik', 25, NULL);
INSERT INTO `assesment_form_items` VALUES (29, 'radio', 'Hindu', 25, NULL);
INSERT INTO `assesment_form_items` VALUES (30, 'radio', 'Budha', 25, NULL);
INSERT INTO `assesment_form_items` VALUES (31, 'radio', 'Lainnya', 25, NULL);
INSERT INTO `assesment_form_items` VALUES (32, '', 'Cara Pembayaran', 11, NULL);
INSERT INTO `assesment_form_items` VALUES (33, 'radio', 'Umum', 32, NULL);
INSERT INTO `assesment_form_items` VALUES (34, 'radio', 'BPJS', 32, NULL);
INSERT INTO `assesment_form_items` VALUES (35, 'radio', 'Asuransi Lainnya', 32, NULL);
INSERT INTO `assesment_form_items` VALUES (36, '', 'Riwayat Alergi', 11, NULL);
INSERT INTO `assesment_form_items` VALUES (37, 'radio', 'Ya', 36, NULL);
INSERT INTO `assesment_form_items` VALUES (38, 'radio', 'Tidak', 36, NULL);
INSERT INTO `assesment_form_items` VALUES (39, NULL, 'Asesmen Nyeri', 11, NULL);
INSERT INTO `assesment_form_items` VALUES (40, '', 'Skrining Resiko Jatuh – Get Up & Go', 11, NULL);
INSERT INTO `assesment_form_items` VALUES (41, '', 'Perhatikan cara berjalan pasien saat berjalan ke kursi. Apakah pasien tidak tampak seimbang (sempoyongan)', 40, NULL);
INSERT INTO `assesment_form_items` VALUES (42, 'radio', 'Ya', 41, NULL);
INSERT INTO `assesment_form_items` VALUES (43, 'radio', 'Tidak', 41, NULL);
INSERT INTO `assesment_form_items` VALUES (44, '', 'Apakah pasien memegang pinggiran kursi atau meja atau benda lain sebagai penopang saat akan duduk?', 40, NULL);
INSERT INTO `assesment_form_items` VALUES (45, 'radio', 'Ya', 44, NULL);
INSERT INTO `assesment_form_items` VALUES (46, 'radio', 'Tidak', 44, NULL);
INSERT INTO `assesment_form_items` VALUES (47, '', 'Hasil', 40, NULL);
INSERT INTO `assesment_form_items` VALUES (48, 'radio', 'Tidak beresiko (tidak ditemukan a dan b)', 47, NULL);
INSERT INTO `assesment_form_items` VALUES (49, 'radio', 'Resiko rendah (ditemukan a atau b)', 47, NULL);
INSERT INTO `assesment_form_items` VALUES (50, 'radio', 'Resiko Tinggi (a dan b ditemukan)', 47, NULL);
INSERT INTO `assesment_form_items` VALUES (51, '', 'Skrining Gizi', 11, NULL);
INSERT INTO `assesment_form_items` VALUES (52, '', 'Dewasa (MST)', 51, NULL);
INSERT INTO `assesment_form_items` VALUES (53, '', 'Apakah Pasien mengalami penurunan BB yang tidak direncanakan dalam 6 bulan terakhir ?', 51, NULL);
INSERT INTO `assesment_form_items` VALUES (54, 'radio', 'Tidak (Skor 0)', 53, NULL);
INSERT INTO `assesment_form_items` VALUES (55, 'radio', 'Tidak yakin/tidak tahu/terasa baju lebih longgar (Skor 2)', 53, NULL);
INSERT INTO `assesment_form_items` VALUES (56, 'radio', 'Ya, berupa penurunan BB 1-5 kg (Skor 1)', 53, NULL);
INSERT INTO `assesment_form_items` VALUES (57, 'radio', 'Ya, berupa penurunan BB 6-10 kg (Skor 2)', 53, NULL);
INSERT INTO `assesment_form_items` VALUES (58, '', 'Apakah asupan makanan pasien berkurang karena penurunan nafsu makan atau kesulitan menerima makanan?', 51, NULL);
INSERT INTO `assesment_form_items` VALUES (59, 'radio', 'Tidak (Skor 0)', 58, NULL);
INSERT INTO `assesment_form_items` VALUES (60, 'radio', 'Ya (Skor 1)', 58, NULL);
INSERT INTO `assesment_form_items` VALUES (61, '', 'Kesimpulan', 51, NULL);
INSERT INTO `assesment_form_items` VALUES (62, 'radio', '0-1 tidak berisiko malnutrisi', 61, NULL);
INSERT INTO `assesment_form_items` VALUES (63, 'radio', '>= 2 berisiko malnutrisi', 61, NULL);
INSERT INTO `assesment_form_items` VALUES (64, '', 'Anak (STRONG-Kids)', 51, NULL);
INSERT INTO `assesment_form_items` VALUES (65, '', 'Apakah pasien tampak kurus?', 51, NULL);
INSERT INTO `assesment_form_items` VALUES (66, 'radio', 'Tidak (Skor 0)', 65, NULL);
INSERT INTO `assesment_form_items` VALUES (67, 'radio', 'Ya (Skor 1)', 65, NULL);
INSERT INTO `assesment_form_items` VALUES (68, '', 'Apakah ada penurunan BB dalam 1 bulan terakhir (untuk bayi<1 tahun BB tidak naik selama 3 bulan terakhir)', 51, NULL);
INSERT INTO `assesment_form_items` VALUES (69, 'radio', 'Tidak (Skor 0)', 68, NULL);
INSERT INTO `assesment_form_items` VALUES (70, 'radio', 'Ya (Skor 1)', 68, NULL);
INSERT INTO `assesment_form_items` VALUES (71, '', 'Apakah terdapat salah satu dari kondisi tersebut:<br>Diare >5 kali/hari dan atau muntah >3 kali/hari dalam seminggu terakhir<br>Asupan makanan berkurang selama 1 minggu terakhir', 51, NULL);
INSERT INTO `assesment_form_items` VALUES (72, 'radio', 'Tidak (Skor 0)', 71, NULL);
INSERT INTO `assesment_form_items` VALUES (73, 'radio', 'Ya (Skor 1)', 71, NULL);
INSERT INTO `assesment_form_items` VALUES (74, '', 'Apakah ada penyakit atau keadaan yang mengakibatkan pasien beresiko malnutrisi', 51, NULL);
INSERT INTO `assesment_form_items` VALUES (75, 'radio', 'Tidak (Skor 0)', 74, NULL);
INSERT INTO `assesment_form_items` VALUES (76, 'radio', 'Ya (Skor 1)', 74, NULL);
INSERT INTO `assesment_form_items` VALUES (77, '', 'Kesimpulan', 51, NULL);
INSERT INTO `assesment_form_items` VALUES (78, 'radio', '0 Risiko Rendah', 77, NULL);
INSERT INTO `assesment_form_items` VALUES (79, 'radio', '1-3 Risiko Sedang', 77, NULL);
INSERT INTO `assesment_form_items` VALUES (80, 'radio', '4-5 Risiko Tinggi', 77, NULL);
INSERT INTO `assesment_form_items` VALUES (81, '', 'B. Diagnosa Keperawatan', 0, NULL);
INSERT INTO `assesment_form_items` VALUES (82, 'radio', 'Gangguan', 81, NULL);
INSERT INTO `assesment_form_items` VALUES (83, 'radio', 'Gangguan rasa nyaman', 81, NULL);
INSERT INTO `assesment_form_items` VALUES (84, 'radio', 'Gangguan nutrisi', 81, NULL);
INSERT INTO `assesment_form_items` VALUES (85, 'radio', 'Hipertermia ', 81, NULL);
INSERT INTO `assesment_form_items` VALUES (86, 'radio', 'Gangguan integritas kulit', 81, NULL);
INSERT INTO `assesment_form_items` VALUES (87, 'radio', 'Bersihan jalan nafas tidak efektif', 81, NULL);
INSERT INTO `assesment_form_items` VALUES (88, 'radio', 'Defisit Pengetahuan', 81, NULL);
INSERT INTO `assesment_form_items` VALUES (89, 'radio', 'Gangguan interaksi sosial', 81, NULL);
INSERT INTO `assesment_form_items` VALUES (90, 'radio', 'Resiko Jatuh', 81, NULL);
INSERT INTO `assesment_form_items` VALUES (91, 'radio', 'Kecemasan', 81, NULL);
INSERT INTO `assesment_form_items` VALUES (92, 'radio', 'Gangguan mobilisasi', 81, NULL);
INSERT INTO `assesment_form_items` VALUES (93, '', 'C. Rencana Intervensi, Implementasi dan Evaluasi Keperawatan', 0, NULL);
INSERT INTO `assesment_form_items` VALUES (94, 'box', 'Gangguan Rasa Nyaman', 93, NULL);
INSERT INTO `assesment_form_items` VALUES (95, '', 'Intervensi dan Implementasi Keperawatan', 94, NULL);
INSERT INTO `assesment_form_items` VALUES (96, 'radio', 'Latih nafas dalam', 95, NULL);
INSERT INTO `assesment_form_items` VALUES (97, 'radio', 'Latih tekhnik distraksi', 95, NULL);
INSERT INTO `assesment_form_items` VALUES (98, 'radio', 'Latih tekhnik relaksasi', 95, NULL);
INSERT INTO `assesment_form_items` VALUES (99, 'radio', 'Edukasi proses penyakit', 95, NULL);
INSERT INTO `assesment_form_items` VALUES (100, 'radio', 'Kolaborasi dengan dokter dalam pemberian analgetik', 95, NULL);
INSERT INTO `assesment_form_items` VALUES (101, '', 'Evaluasi Keperawatan', 94, NULL);
INSERT INTO `assesment_form_items` VALUES (102, 'radio', 'Evaluasi pengetahuan pasien tehadap penurunan rasa nyeri', 101, NULL);
INSERT INTO `assesment_form_items` VALUES (103, 'box', 'Bersihan Jalan Nafas Tidak Efektif', 93, NULL);
INSERT INTO `assesment_form_items` VALUES (104, '', 'Intervensi dan Implementasi Keperawatan', 103, NULL);
INSERT INTO `assesment_form_items` VALUES (105, 'radio', 'Latih batuk efektif', 104, NULL);
INSERT INTO `assesment_form_items` VALUES (106, 'radio', 'Edukasi fisioterapi dada', 104, NULL);
INSERT INTO `assesment_form_items` VALUES (107, 'radio', 'Edukasi pengukuran respirasi', 104, NULL);
INSERT INTO `assesment_form_items` VALUES (108, 'radio', 'Edukasi pengaturan posisi', 104, NULL);
INSERT INTO `assesment_form_items` VALUES (109, 'radio', 'Kolaborasi dengan dokter dalam pemulihan kesehatan', 104, NULL);
INSERT INTO `assesment_form_items` VALUES (110, '', 'Evaluasi Keperawatan', 103, NULL);
INSERT INTO `assesment_form_items` VALUES (111, 'radio', 'Evaluasi pengetahuan pasien tentang pemenuhan kebutuhan bersihan jalan nafas', 110, NULL);
INSERT INTO `assesment_form_items` VALUES (112, 'box', 'Hipertermia', 93, NULL);
INSERT INTO `assesment_form_items` VALUES (113, '', 'Intervensi dan Implementasi Keperawatan', 112, NULL);
INSERT INTO `assesment_form_items` VALUES (114, 'radio', 'Latih tekhnik kompres dingin', 113, NULL);
INSERT INTO `assesment_form_items` VALUES (115, 'radio', 'Edukasi pengukuran suhu tubuh', 113, NULL);
INSERT INTO `assesment_form_items` VALUES (116, 'radio', 'Edukasi untuk pemberian minum', 113, NULL);
INSERT INTO `assesment_form_items` VALUES (117, 'radio', 'Edukasi untuk menggunakan pakaian yang tipis dan menyerap keringan untuk memudahkan sirkulasi evaporasi suhu tubuh sekitar lingkungan pasien', 113, NULL);
INSERT INTO `assesment_form_items` VALUES (118, 'radio', 'Kolaborasi pemeberian antipiretik', 113, NULL);
INSERT INTO `assesment_form_items` VALUES (119, '', 'Evaluasi Keperawatan', 112, NULL);
INSERT INTO `assesment_form_items` VALUES (120, 'radio', 'Evaluasi pengetahuan pasien tentang penurunan suhu tubuh', 119, NULL);
INSERT INTO `assesment_form_items` VALUES (121, 'box', 'Defisit Pengetahuan', 93, NULL);
INSERT INTO `assesment_form_items` VALUES (122, '', 'Intervensi dan Implementasi Keperawatan', 121, NULL);
INSERT INTO `assesment_form_items` VALUES (123, 'radio', 'Edukasi pengetahuan masalah pasien', 122, NULL);
INSERT INTO `assesment_form_items` VALUES (124, 'radio', 'Edukasi perawatab diri pasien, kebutuhan istirahat, makan dan minum pasien', 122, NULL);
INSERT INTO `assesment_form_items` VALUES (125, 'radio', 'Kolaborasi dengan PPA lain sesuai pengetahuan yang dibutuhkan pasien', 122, NULL);
INSERT INTO `assesment_form_items` VALUES (126, '', 'Evaluasi Keperawatan', 121, NULL);
INSERT INTO `assesment_form_items` VALUES (127, 'radio', 'Evaluasi pengetahuan pasien tentang masalah kesehatan pasien', 126, NULL);
INSERT INTO `assesment_form_items` VALUES (128, 'box', 'Gangguan Interaksi Soisal', 93, NULL);
INSERT INTO `assesment_form_items` VALUES (129, '', 'Intervensi dan Implementasi Keperawatan', 128, NULL);
INSERT INTO `assesment_form_items` VALUES (130, 'radio', 'Ajarkan komunikasi efektif', 129, NULL);
INSERT INTO `assesment_form_items` VALUES (131, 'radio', 'Berikan dukungan social', 129, NULL);
INSERT INTO `assesment_form_items` VALUES (132, 'radio', 'Kolaborasi dengan dokter untuk melakukan terapi', 129, NULL);
INSERT INTO `assesment_form_items` VALUES (133, '', 'Evaluasi Keperawatan', 128, NULL);
INSERT INTO `assesment_form_items` VALUES (134, 'radio', 'Evaluasi manajemen perilaku sosial', 133, NULL);
INSERT INTO `assesment_form_items` VALUES (135, 'box', 'Gangguan Integritas Kulit', 93, NULL);
INSERT INTO `assesment_form_items` VALUES (136, '', 'Intervensi dan Implementasi Keperawatan', 135, NULL);
INSERT INTO `assesment_form_items` VALUES (137, 'radio', 'Edukasi tentang kebersihan diri dan kulit', 136, NULL);
INSERT INTO `assesment_form_items` VALUES (138, 'radio', 'Edukasi pola perilaku kebersihan kulit', 136, NULL);
INSERT INTO `assesment_form_items` VALUES (139, 'radio', 'Ajarkan cara perawatan luka', 136, NULL);
INSERT INTO `assesment_form_items` VALUES (140, 'radio', 'Ajarkan cara ganti balutan', 136, NULL);
INSERT INTO `assesment_form_items` VALUES (141, 'radio', 'Ajarkan cara cuci luka', 136, NULL);
INSERT INTO `assesment_form_items` VALUES (142, 'radio', 'Kolaborasi dengan doker untuk pemulihan kesehatan ', 136, NULL);
INSERT INTO `assesment_form_items` VALUES (143, '', 'Evaluasi Keperawatan', 135, NULL);
INSERT INTO `assesment_form_items` VALUES (144, 'radio', 'Evaluasi pengetahuan pasien tentang cara perawatan luka dan kebrsihan diri', 143, NULL);
INSERT INTO `assesment_form_items` VALUES (145, 'box', 'Gangguan Mobilisasi', 93, NULL);
INSERT INTO `assesment_form_items` VALUES (146, '', 'Intervensi dan Implementasi Keperawatan', 145, NULL);
INSERT INTO `assesment_form_items` VALUES (147, 'radio', 'Edukasi tentang kebutuhan melakukan aktivitas pasien', 146, NULL);
INSERT INTO `assesment_form_items` VALUES (148, 'radio', 'Edukasi pada keluarga pasien untuk memberikan dukungan dalam melakukan aktivitas pasien', 146, NULL);
INSERT INTO `assesment_form_items` VALUES (149, 'radio', 'Latih Latihan ROM dan alat bantu', 146, NULL);
INSERT INTO `assesment_form_items` VALUES (150, 'radio', 'Kolaborasi dengan dokter untuk pemulihan Kesehatan', 146, NULL);
INSERT INTO `assesment_form_items` VALUES (151, '', 'Evaluasi Keperawatan', 145, NULL);
INSERT INTO `assesment_form_items` VALUES (152, 'radio', 'Evaluasi pengetahuan pasien tentang latihan mobilisasi', 151, NULL);
INSERT INTO `assesment_form_items` VALUES (153, 'box', 'Kecemasan', 93, NULL);
INSERT INTO `assesment_form_items` VALUES (154, '', 'Intervensi dan Implementasi Keperawatan', 153, NULL);
INSERT INTO `assesment_form_items` VALUES (155, 'radio', 'Anjurkan pasien menyampaikan masalahnya', 154, NULL);
INSERT INTO `assesment_form_items` VALUES (156, 'radio', 'Latih tekhnik relaksasi nafas dalam', 154, NULL);
INSERT INTO `assesment_form_items` VALUES (157, 'radio', 'Latih mekanisme koping efektif', 154, NULL);
INSERT INTO `assesment_form_items` VALUES (158, 'radio', 'Edukasi pasien dalam meningkatkan kegiatan spiritual', 154, NULL);
INSERT INTO `assesment_form_items` VALUES (159, 'radio', 'Edukasi keluarga pasien untuk memberikan dukungan dalan meningkatkan rasa nyaman, psikologis dan spiritual', 154, NULL);
INSERT INTO `assesment_form_items` VALUES (160, '', 'Evaluasi Keperawatan', 153, NULL);
INSERT INTO `assesment_form_items` VALUES (161, 'radio', 'Evaluasi pengetahuan pasien dan keluarga dalam penurunan kecemasan', 160, NULL);
INSERT INTO `assesment_form_items` VALUES (162, 'box', 'Gangguan Nutrisi', 93, NULL);
INSERT INTO `assesment_form_items` VALUES (163, '', 'Intervensi dan Implementasi Keperawatan', 162, NULL);
INSERT INTO `assesment_form_items` VALUES (164, 'radio', 'Edukasi pasien dan keluarga dalam pemenuhan nutrisi hariannya', 163, NULL);
INSERT INTO `assesment_form_items` VALUES (165, 'radio', 'Kolaborasi dengan dokter dalam pemulihan Kesehatan', 163, NULL);
INSERT INTO `assesment_form_items` VALUES (166, 'radio', 'Kolaborasi dengan PPA lainnya sesuai dengan keahlian', 163, NULL);
INSERT INTO `assesment_form_items` VALUES (167, '', 'Evaluasi Keperawatan', 162, NULL);
INSERT INTO `assesment_form_items` VALUES (168, 'radio', 'Evaluasi pengetahuan pasien tentang kebutuhan nutrisi', 167, NULL);
INSERT INTO `assesment_form_items` VALUES (169, 'box', 'Resiko Jatuh', 93, NULL);
INSERT INTO `assesment_form_items` VALUES (170, '', 'Intervensi Keperawatan', 169, NULL);
INSERT INTO `assesment_form_items` VALUES (171, 'radio', 'Identifikasi kebutuhan keselamatan pasien (fisik, biologi, kimia)', 170, NULL);
INSERT INTO `assesment_form_items` VALUES (172, 'radio', 'Sediakan alat pegangan untuk membantu keamanan', 170, NULL);
INSERT INTO `assesment_form_items` VALUES (173, 'radio', 'Edukasi pasien dan keluarga tentang risiko tinggi bahaya lingkungan', 170, NULL);
INSERT INTO `assesment_form_items` VALUES (174, '', 'Evaluasi Keperawatan', 169, NULL);
INSERT INTO `assesment_form_items` VALUES (175, 'radio', 'Evaluasi pengetahuan pasien tehadap risiko tinggi jatuh', 174, NULL);
INSERT INTO `assesment_form_items` VALUES (176, '', 'D. CPPT (Catatan Perkembangan Pasien Terintegrasi)', 0, NULL);
INSERT INTO `assesment_form_items` VALUES (177, '', '', 176, NULL);
INSERT INTO `assesment_form_items` VALUES (178, 'text', 'Tanggal', 177, NULL);
INSERT INTO `assesment_form_items` VALUES (179, '', 'Catatan Perkembangan Pasien Terintegrasi', 177, NULL);
INSERT INTO `assesment_form_items` VALUES (180, 'text', 'S', 179, NULL);
INSERT INTO `assesment_form_items` VALUES (181, 'text', 'O', 179, NULL);
INSERT INTO `assesment_form_items` VALUES (182, 'text', 'A', 179, NULL);
INSERT INTO `assesment_form_items` VALUES (183, 'text', 'P', 179, NULL);
INSERT INTO `assesment_form_items` VALUES (184, 'text', 'Nama Jelas', 177, NULL);
INSERT INTO `assesment_form_items` VALUES (185, '', 'E. Discharge Planning Rawat Jalan', 0, NULL);
INSERT INTO `assesment_form_items` VALUES (186, 'text', 'Nama Pasien', 185, NULL);
INSERT INTO `assesment_form_items` VALUES (187, 'text', 'No. Rekam Medik', 185, NULL);
INSERT INTO `assesment_form_items` VALUES (188, 'text', 'Tempat Tanggal Lahir', 185, NULL);
INSERT INTO `assesment_form_items` VALUES (189, 'text', 'Alamat', 185, NULL);
INSERT INTO `assesment_form_items` VALUES (190, 'text', 'Tanda-tanda Vital', 185, NULL);
INSERT INTO `assesment_form_items` VALUES (191, 'text', 'Keluhan awal', 185, NULL);
INSERT INTO `assesment_form_items` VALUES (192, 'text', 'Diagnosa Keperawatan', 185, NULL);
INSERT INTO `assesment_form_items` VALUES (193, 'text', 'Implementasi yang telah dilakukan perawat', 185, NULL);
INSERT INTO `assesment_form_items` VALUES (194, 'text', 'Diagnosa Medis', 185, NULL);
INSERT INTO `assesment_form_items` VALUES (195, 'text', 'Therapy', 185, NULL);
INSERT INTO `assesment_form_items` VALUES (196, 'text', 'Tanda Tangan Perawat', 185, NULL);
INSERT INTO `assesment_form_items` VALUES (197, 'text', 'Tanda Tangan Dokter', 185, NULL);
INSERT INTO `assesment_form_items` VALUES (198, '', 'F. Edukasi', 0, NULL);
INSERT INTO `assesment_form_items` VALUES (199, 'box', 'Catatan Edukasi Terintegrasi Rawat Jalan', 198, NULL);
INSERT INTO `assesment_form_items` VALUES (200, 'text', 'Materi Edukasi', 199, NULL);
INSERT INTO `assesment_form_items` VALUES (201, 'text', 'Tanggal', 199, NULL);
INSERT INTO `assesment_form_items` VALUES (202, 'text', 'Durasi (Menit)', 199, NULL);
INSERT INTO `assesment_form_items` VALUES (203, '', 'Metode', 199, NULL);
INSERT INTO `assesment_form_items` VALUES (204, 'radio', 'Diskusi', 203, NULL);
INSERT INTO `assesment_form_items` VALUES (205, 'radio', 'Demonstrasi', 203, NULL);
INSERT INTO `assesment_form_items` VALUES (206, 'radio', 'Ceramah', 203, NULL);
INSERT INTO `assesment_form_items` VALUES (207, 'radio', 'Simulasi', 203, NULL);
INSERT INTO `assesment_form_items` VALUES (208, 'radio', 'Observasi', 203, NULL);
INSERT INTO `assesment_form_items` VALUES (209, 'radio', 'Praktek Langsung', 203, NULL);
INSERT INTO `assesment_form_items` VALUES (210, '', 'Evaluasi', 199, NULL);
INSERT INTO `assesment_form_items` VALUES (211, 'radio', 'Tidak Respon sama sekali (tidak antusias dan keinginan belajar)', 210, NULL);
INSERT INTO `assesment_form_items` VALUES (212, 'radio', 'Tidak paham (ingin belajar tapi kesulitan mengerti)', 210, NULL);
INSERT INTO `assesment_form_items` VALUES (213, 'radio', 'Paham hal yang diajarkan tapi tidak bisa menjelaskan sendiri', 210, NULL);
INSERT INTO `assesment_form_items` VALUES (214, 'radio', 'Dapat menjelaskan apa yang telah diajarkan tapi harus dibantu educator', 210, NULL);
INSERT INTO `assesment_form_items` VALUES (215, 'radio', 'Dapat menjelaskan apa yang telah diajarkan tanpa dibantu', 210, NULL);
INSERT INTO `assesment_form_items` VALUES (216, '', 'Sasaran', 199, NULL);
INSERT INTO `assesment_form_items` VALUES (217, 'radio', 'Pasien', 216, NULL);
INSERT INTO `assesment_form_items` VALUES (218, 'radio', 'Ayah/Ibu', 216, NULL);
INSERT INTO `assesment_form_items` VALUES (219, 'radio', 'Suami/Istri', 216, NULL);
INSERT INTO `assesment_form_items` VALUES (220, 'radio', 'Anak', 216, NULL);
INSERT INTO `assesment_form_items` VALUES (221, 'radio', 'Lain-lain (hubungan dengan pasien)', 216, NULL);
INSERT INTO `assesment_form_items` VALUES (222, 'level', '0', 39, 'level/wellness-01.png');
INSERT INTO `assesment_form_items` VALUES (223, 'level', '1 2', 39, 'level/wellness-02.png');
INSERT INTO `assesment_form_items` VALUES (224, 'level', '3 4', 39, 'level/wellness-03.png');
INSERT INTO `assesment_form_items` VALUES (225, 'level', '5 6', 39, 'level/wellness-04.png');
INSERT INTO `assesment_form_items` VALUES (226, 'level', '7 8', 39, 'level/wellness-05.png');
INSERT INTO `assesment_form_items` VALUES (227, 'level', '9 10', 39, 'level/wellness-06.png');

-- ----------------------------
-- Table structure for assesment_items
-- ----------------------------
DROP TABLE IF EXISTS `assesment_items`;
CREATE TABLE `assesment_items`  (
  `row_id` int(11) NOT NULL AUTO_INCREMENT,
  `assesment_id` int(11) NULL DEFAULT NULL,
  `item_id` int(11) NULL DEFAULT NULL,
  `value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`row_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 553 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for assesments
-- ----------------------------
DROP TABLE IF EXISTS `assesments`;
CREATE TABLE `assesments`  (
  `assesment_id` int(11) NOT NULL AUTO_INCREMENT,
  `assesment_no` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  `no_pasien` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`assesment_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

SET FOREIGN_KEY_CHECKS = 1;
