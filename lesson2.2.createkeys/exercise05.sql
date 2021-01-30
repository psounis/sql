CREATE TABLE `departments` (
  `dept_no` char(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dept_name` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`dept_no`),
  UNIQUE KEY `dept_no` (`dept_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
