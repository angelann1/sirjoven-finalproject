-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 05, 2026 at 08:53 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ursua_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sections`
--

CREATE TABLE `tbl_sections` (
  `section_id` bigint(20) NOT NULL,
  `name` varchar(55) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_sections`
--

INSERT INTO `tbl_sections` (`section_id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'BSCS-2A', '2026-05-01 10:46:07', '2026-05-01 10:46:07'),
(2, 'BSIT-2A', '2026-05-01 10:46:07', '2026-05-01 10:46:07'),
(3, 'BSIT-2B', '2026-05-01 10:46:07', '2026-05-01 10:46:07'),
(4, 'BSIT-2C', '2026-05-01 10:46:07', '2026-05-01 10:46:07'),
(5, 'BSIT-2D', '2026-05-01 10:46:07', '2026-05-01 10:46:07');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_students`
--

CREATE TABLE `tbl_students` (
  `student_id` bigint(20) NOT NULL,
  `first_name` varchar(55) NOT NULL,
  `middle_name` varchar(55) DEFAULT NULL,
  `last_name` varchar(55) NOT NULL,
  `suffix_name` varchar(55) DEFAULT NULL,
  `section_id` bigint(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_students`
--

INSERT INTO `tbl_students` (`student_id`, `first_name`, `middle_name`, `last_name`, `suffix_name`, `section_id`, `created_at`, `updated_at`) VALUES
(1, 'Gail', NULL, 'Alajar', NULL, 1, '2026-05-01 11:29:41', '2026-05-01 11:29:41'),
(2, 'Mae', NULL, 'Benon', NULL, 1, '2026-05-01 11:29:41', '2026-05-01 11:29:41'),
(3, 'Syiam', NULL, 'Fortunado', NULL, 1, '2026-05-01 11:29:41', '2026-05-01 11:29:41'),
(4, 'Kemverly', NULL, 'Reyes', NULL, 1, '2026-05-01 11:29:41', '2026-05-01 11:29:41'),
(5, 'Dianne', NULL, 'Tumbukon', NULL, 1, '2026-05-01 11:29:41', '2026-05-01 11:29:41'),
(6, 'Angel', NULL, 'Ursua', NULL, 2, '2026-05-01 11:29:41', '2026-05-01 11:29:41'),
(7, 'Collene', NULL, 'Fulgar', NULL, 2, '2026-05-01 11:29:41', '2026-05-01 11:29:41'),
(8, 'Kent', NULL, 'Aluad', NULL, 2, '2026-05-01 11:29:41', '2026-05-01 11:29:41'),
(9, 'Gerald', NULL, 'Dumagpi', NULL, 2, '2026-05-01 11:29:41', '2026-05-01 11:29:41'),
(10, 'Lance', NULL, 'Alcorano', NULL, 2, '2026-05-01 11:29:41', '2026-05-01 11:29:41'),
(11, 'Cherry', NULL, 'Bendiro', NULL, 3, '2026-05-01 11:29:41', '2026-05-01 11:29:41'),
(12, 'Kim', NULL, 'Padilla', NULL, 3, '2026-05-01 11:29:41', '2026-05-01 11:29:41'),
(13, 'Bea', NULL, 'Caliso', NULL, 3, '2026-05-01 11:29:41', '2026-05-01 11:29:41'),
(14, 'Jinky', NULL, 'Salmon', NULL, 3, '2026-05-01 11:29:41', '2026-05-01 11:29:41'),
(15, 'Paul', NULL, 'Algabre', NULL, 3, '2026-05-01 11:29:41', '2026-05-01 11:29:41'),
(16, 'Kathleen', NULL, 'Tabura', NULL, 4, '2026-05-01 11:29:41', '2026-05-01 11:29:41'),
(17, 'Leo', NULL, 'Belango', NULL, 4, '2026-05-01 11:29:41', '2026-05-01 11:29:41'),
(18, 'Reinier', NULL, 'Nalupano', NULL, 4, '2026-05-01 11:29:41', '2026-05-01 11:29:41'),
(19, 'Tharen', NULL, 'Honrade', NULL, 4, '2026-05-01 11:29:41', '2026-05-01 11:29:41'),
(20, 'Kyle', NULL, 'Caspillo', NULL, 4, '2026-05-01 11:29:41', '2026-05-01 11:29:41'),
(21, 'Nielmar', NULL, 'Torres', NULL, 5, '2026-05-01 11:29:41', '2026-05-01 11:29:41'),
(22, 'Quinn', NULL, 'Villanueva', NULL, 5, '2026-05-01 11:29:41', '2026-05-01 11:29:41'),
(23, 'Rose', NULL, 'Aquino', NULL, 5, '2026-05-01 11:29:41', '2026-05-01 11:29:41'),
(24, 'Sam', NULL, 'Pascual', NULL, 5, '2026-05-01 11:29:41', '2026-05-01 11:29:41'),
(25, 'Tina', NULL, 'Pay', NULL, 5, '2026-05-01 11:29:41', '2026-05-01 11:29:41'),
(26, 'Gail', NULL, 'Alajar', NULL, 1, '2026-05-02 06:15:34', '2026-05-02 06:15:34'),
(27, 'Mae', NULL, 'Benon', NULL, 1, '2026-05-02 06:15:34', '2026-05-02 06:15:34'),
(28, 'Syiam', NULL, 'Fortunado', NULL, 1, '2026-05-02 06:15:34', '2026-05-02 06:15:34'),
(29, 'Kemverly', NULL, 'Reyes', NULL, 1, '2026-05-02 06:15:34', '2026-05-02 06:15:34'),
(30, 'Dianne', NULL, 'Tumbukon', NULL, 1, '2026-05-02 06:15:34', '2026-05-02 06:15:34'),
(31, 'Angel', NULL, 'Ursua', NULL, 2, '2026-05-02 06:15:34', '2026-05-02 06:15:34'),
(32, 'Collene', NULL, 'Fulgar', NULL, 2, '2026-05-02 06:15:34', '2026-05-02 06:15:34'),
(33, 'Kent', NULL, 'Aluad', NULL, 2, '2026-05-02 06:15:34', '2026-05-02 06:15:34'),
(34, 'Gerald', NULL, 'Dumagpi', NULL, 2, '2026-05-02 06:15:34', '2026-05-02 06:15:34'),
(35, 'Lance', NULL, 'Alcorano', NULL, 2, '2026-05-02 06:15:34', '2026-05-02 06:15:34'),
(36, 'Cherry', NULL, 'Bendiro', NULL, 3, '2026-05-02 06:15:34', '2026-05-02 06:15:34'),
(37, 'Kim', NULL, 'Padilla', NULL, 3, '2026-05-02 06:15:34', '2026-05-02 06:15:34'),
(38, 'Bea', NULL, 'Caliso', NULL, 3, '2026-05-02 06:15:34', '2026-05-02 06:15:34'),
(39, 'Jinky', NULL, 'Salmon', NULL, 3, '2026-05-02 06:15:34', '2026-05-02 06:15:34'),
(40, 'Paul', NULL, 'Algabre', NULL, 3, '2026-05-02 06:15:34', '2026-05-02 06:15:34'),
(41, 'Kathleen', NULL, 'Tabura', NULL, 4, '2026-05-02 06:15:34', '2026-05-02 06:15:34'),
(42, 'Leo', NULL, 'Belango', NULL, 4, '2026-05-02 06:15:34', '2026-05-02 06:15:34'),
(43, 'Reinier', NULL, 'Nalupano', NULL, 4, '2026-05-02 06:15:34', '2026-05-02 06:15:34'),
(44, 'Tharen', NULL, 'Honrade', NULL, 4, '2026-05-02 06:15:34', '2026-05-02 06:15:34'),
(45, 'Kyle', NULL, 'Caspillo', NULL, 4, '2026-05-02 06:15:34', '2026-05-02 06:15:34'),
(46, 'Nielmar', NULL, 'Torres', NULL, 5, '2026-05-02 06:15:34', '2026-05-02 06:15:34'),
(47, 'Quinn', NULL, 'Villanueva', NULL, 5, '2026-05-02 06:15:34', '2026-05-02 06:15:34'),
(48, 'Rose', NULL, 'Aquino', NULL, 5, '2026-05-02 06:15:34', '2026-05-02 06:15:34'),
(49, 'Sam', NULL, 'Pascual', NULL, 5, '2026-05-02 06:15:34', '2026-05-02 06:15:34'),
(50, 'Tina', NULL, 'Pay', NULL, 5, '2026-05-02 06:15:34', '2026-05-02 06:15:34');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_students_classes`
--

CREATE TABLE `tbl_students_classes` (
  `student_class_id` bigint(20) NOT NULL,
  `student_id` bigint(20) NOT NULL,
  `subject_id` bigint(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_students_classes`
--

INSERT INTO `tbl_students_classes` (`student_class_id`, `student_id`, `subject_id`, `created_at`, `updated_at`) VALUES
(21, 1, 1, '2026-05-01 11:30:19', '2026-05-01 11:30:19'),
(22, 2, 2, '2026-05-01 11:30:19', '2026-05-01 11:30:19'),
(23, 3, 3, '2026-05-01 11:30:19', '2026-05-01 11:30:19'),
(24, 4, 4, '2026-05-01 11:30:19', '2026-05-01 11:30:19'),
(25, 5, 1, '2026-05-01 11:30:19', '2026-05-01 11:30:19'),
(26, 6, 1, '2026-05-01 11:30:19', '2026-05-01 11:30:19'),
(27, 7, 2, '2026-05-01 11:30:19', '2026-05-01 11:30:19'),
(28, 8, 3, '2026-05-01 11:30:19', '2026-05-01 11:30:19'),
(29, 9, 4, '2026-05-01 11:30:19', '2026-05-01 11:30:19'),
(30, 10, 1, '2026-05-01 11:30:19', '2026-05-01 11:30:19'),
(31, 11, 2, '2026-05-01 11:30:19', '2026-05-01 11:30:19'),
(32, 12, 3, '2026-05-01 11:30:19', '2026-05-01 11:30:19'),
(33, 13, 4, '2026-05-01 11:30:19', '2026-05-01 11:30:19'),
(34, 14, 1, '2026-05-01 11:30:19', '2026-05-01 11:30:19'),
(35, 15, 2, '2026-05-01 11:30:19', '2026-05-01 11:30:19'),
(36, 16, 1, '2026-05-01 11:30:19', '2026-05-01 11:30:19'),
(37, 17, 2, '2026-05-01 11:30:19', '2026-05-01 11:30:19'),
(38, 18, 3, '2026-05-01 11:30:19', '2026-05-01 11:30:19'),
(39, 19, 4, '2026-05-01 11:30:19', '2026-05-01 11:30:19'),
(40, 20, 1, '2026-05-01 11:30:19', '2026-05-01 11:30:19'),
(41, 21, 2, '2026-05-01 11:30:19', '2026-05-01 11:30:19'),
(42, 22, 3, '2026-05-01 11:30:19', '2026-05-01 11:30:19'),
(43, 23, 4, '2026-05-01 11:30:19', '2026-05-01 11:30:19'),
(44, 24, 1, '2026-05-01 11:30:19', '2026-05-01 11:30:19'),
(45, 25, 2, '2026-05-01 11:30:19', '2026-05-01 11:30:19'),
(46, 1, 1, '2026-05-02 06:17:08', '2026-05-02 06:17:08'),
(47, 2, 2, '2026-05-02 06:17:08', '2026-05-02 06:17:08'),
(48, 3, 3, '2026-05-02 06:17:08', '2026-05-02 06:17:08'),
(49, 4, 4, '2026-05-02 06:17:08', '2026-05-02 06:17:08'),
(50, 5, 1, '2026-05-02 06:17:08', '2026-05-02 06:17:08'),
(51, 6, 1, '2026-05-02 06:17:08', '2026-05-02 06:17:08'),
(52, 7, 2, '2026-05-02 06:17:08', '2026-05-02 06:17:08'),
(53, 8, 3, '2026-05-02 06:17:08', '2026-05-02 06:17:08'),
(54, 9, 4, '2026-05-02 06:17:08', '2026-05-02 06:17:08'),
(55, 10, 1, '2026-05-02 06:17:08', '2026-05-02 06:17:08'),
(56, 11, 2, '2026-05-02 06:17:08', '2026-05-02 06:17:08'),
(57, 12, 3, '2026-05-02 06:17:08', '2026-05-02 06:17:08'),
(58, 13, 4, '2026-05-02 06:17:08', '2026-05-02 06:17:08'),
(59, 14, 1, '2026-05-02 06:17:08', '2026-05-02 06:17:08'),
(60, 15, 2, '2026-05-02 06:17:08', '2026-05-02 06:17:08'),
(61, 16, 1, '2026-05-02 06:17:08', '2026-05-02 06:17:08'),
(62, 17, 2, '2026-05-02 06:17:08', '2026-05-02 06:17:08'),
(63, 18, 3, '2026-05-02 06:17:08', '2026-05-02 06:17:08'),
(64, 19, 4, '2026-05-02 06:17:08', '2026-05-02 06:17:08'),
(65, 20, 1, '2026-05-02 06:17:08', '2026-05-02 06:17:08'),
(66, 21, 2, '2026-05-02 06:17:08', '2026-05-02 06:17:08'),
(67, 22, 3, '2026-05-02 06:17:08', '2026-05-02 06:17:08'),
(68, 23, 4, '2026-05-02 06:17:08', '2026-05-02 06:17:08'),
(69, 24, 1, '2026-05-02 06:17:08', '2026-05-02 06:17:08'),
(70, 25, 2, '2026-05-02 06:17:08', '2026-05-02 06:17:08');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_subjects`
--

CREATE TABLE `tbl_subjects` (
  `subject_id` bigint(20) NOT NULL,
  `name` varchar(55) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_subjects`
--

INSERT INTO `tbl_subjects` (`subject_id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'IT Elective 2', '2026-05-01 06:41:34', '2026-05-01 06:41:34'),
(2, 'Integrative Programming and Technologies', '2026-05-01 06:41:34', '2026-05-01 06:41:34'),
(3, 'IT Professional Track 2', '2026-05-01 06:41:34', '2026-05-01 06:41:34'),
(4, 'Networking 1', '2026-05-01 06:41:34', '2026-05-01 06:41:34'),
(5, 'IT Elective 2', '2026-05-01 11:03:18', '2026-05-01 11:03:18'),
(6, 'Integrative Programming and Technologies', '2026-05-01 11:03:18', '2026-05-01 11:03:18'),
(7, 'IT Professional Track 2', '2026-05-01 11:03:18', '2026-05-01 11:03:18'),
(8, 'Networking 1', '2026-05-01 11:03:18', '2026-05-01 11:03:18');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_teachers`
--

CREATE TABLE `tbl_teachers` (
  `teacher_id` bigint(20) NOT NULL,
  `first_name` varchar(55) NOT NULL,
  `middle_name` varchar(55) DEFAULT NULL,
  `last_name` varchar(55) NOT NULL,
  `suffix_name` varchar(55) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_teachers`
--

INSERT INTO `tbl_teachers` (`teacher_id`, `first_name`, `middle_name`, `last_name`, `suffix_name`, `created_at`, `updated_at`) VALUES
(1, 'Joven Joshua', 'Celiz', 'Alovera', '', '2026-05-01 06:57:59', '2026-05-01 06:57:59'),
(2, 'Villy Joe', 'Preciosa', 'Delsocora', '', '2026-05-01 06:57:59', '2026-05-01 06:57:59'),
(3, 'Jeanny Jean', 'Taculog', 'Escalada', '', '2026-05-01 06:57:59', '2026-05-01 06:57:59'),
(4, 'Erna', 'Alifante', 'Dela Cruz', '', '2026-05-01 06:57:59', '2026-05-01 06:57:59');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_teachers_subjects`
--

CREATE TABLE `tbl_teachers_subjects` (
  `teacher_subject_id` bigint(20) NOT NULL,
  `teacher_id` bigint(20) NOT NULL,
  `subject_id` bigint(20) NOT NULL,
  `day` varchar(55) NOT NULL COMMENT 'Day of class schedule e.g., MTh | TF | W',
  `time_start` time NOT NULL,
  `time_end` time NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_teachers_subjects`
--

INSERT INTO `tbl_teachers_subjects` (`teacher_subject_id`, `teacher_id`, `subject_id`, `day`, `time_start`, `time_end`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Tuesday', '01:00:00', '02:30:00', '2026-05-01 07:48:48', '2026-05-01 07:48:48'),
(2, 2, 2, 'Tuesday', '10:30:00', '12:00:00', '2026-05-01 07:48:48', '2026-05-01 07:48:48'),
(3, 3, 3, 'Wednesday', '02:00:00', '04:00:00', '2026-05-01 07:48:48', '2026-05-01 07:48:48'),
(4, 4, 4, 'Monday', '09:00:00', '10:30:00', '2026-05-01 07:48:48', '2026-05-01 07:48:48');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_sections`
--
ALTER TABLE `tbl_sections`
  ADD PRIMARY KEY (`section_id`);

--
-- Indexes for table `tbl_students`
--
ALTER TABLE `tbl_students`
  ADD PRIMARY KEY (`student_id`),
  ADD KEY `section_id` (`section_id`);

--
-- Indexes for table `tbl_students_classes`
--
ALTER TABLE `tbl_students_classes`
  ADD PRIMARY KEY (`student_class_id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `subject_id` (`subject_id`);

--
-- Indexes for table `tbl_subjects`
--
ALTER TABLE `tbl_subjects`
  ADD PRIMARY KEY (`subject_id`);

--
-- Indexes for table `tbl_teachers`
--
ALTER TABLE `tbl_teachers`
  ADD PRIMARY KEY (`teacher_id`);

--
-- Indexes for table `tbl_teachers_subjects`
--
ALTER TABLE `tbl_teachers_subjects`
  ADD PRIMARY KEY (`teacher_subject_id`),
  ADD KEY `teacher_id` (`teacher_id`),
  ADD KEY `subject_id` (`subject_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_sections`
--
ALTER TABLE `tbl_sections`
  MODIFY `section_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_students`
--
ALTER TABLE `tbl_students`
  MODIFY `student_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `tbl_students_classes`
--
ALTER TABLE `tbl_students_classes`
  MODIFY `student_class_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `tbl_subjects`
--
ALTER TABLE `tbl_subjects`
  MODIFY `subject_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_teachers`
--
ALTER TABLE `tbl_teachers`
  MODIFY `teacher_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_teachers_subjects`
--
ALTER TABLE `tbl_teachers_subjects`
  MODIFY `teacher_subject_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_students`
--
ALTER TABLE `tbl_students`
  ADD CONSTRAINT `tbl_students_ibfk_1` FOREIGN KEY (`section_id`) REFERENCES `tbl_sections` (`section_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_students_classes`
--
ALTER TABLE `tbl_students_classes`
  ADD CONSTRAINT `tbl_students_classes_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `tbl_students` (`student_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_students_classes_ibfk_2` FOREIGN KEY (`subject_id`) REFERENCES `tbl_subjects` (`subject_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_teachers_subjects`
--
ALTER TABLE `tbl_teachers_subjects`
  ADD CONSTRAINT `tbl_teachers_subjects_ibfk_1` FOREIGN KEY (`teacher_id`) REFERENCES `tbl_teachers` (`teacher_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_teachers_subjects_ibfk_2` FOREIGN KEY (`subject_id`) REFERENCES `tbl_subjects` (`subject_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
