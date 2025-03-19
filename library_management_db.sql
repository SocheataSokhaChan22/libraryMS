-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 29, 2024 at 03:45 PM
-- Server version: 5.7.39
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library_management_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_book`
--

CREATE TABLE `tbl_book` (
  `id` int(11) NOT NULL,
  `book_name` varchar(250) NOT NULL,
  `isbnno` varchar(250) NOT NULL,
  `author` varchar(250) NOT NULL,
  `publisher` varchar(250) NOT NULL,
  `price` varchar(250) NOT NULL,
  `quantity` varchar(250) NOT NULL,
  `place` varchar(250) NOT NULL,
  `category` varchar(250) NOT NULL,
  `availability` tinyint(4) NOT NULL COMMENT '1=available, 0=not available',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_book`
--

INSERT INTO `tbl_book` (`id`, `book_name`, `isbnno`, `author`, `publisher`, `price`, `quantity`, `place`, `category`, `availability`, `created_at`) VALUES
(1, 'To Kill a Mockingbird', '9780060935467', 'Harper Lee', 'J.B. Lippincott & Co.', '10.99', '3', 'A1', 'Fiction', 1, '2024-06-29 15:18:45'),
(2, '1984', '9780451524935', 'George Orwell', 'Secker & Warburg', '9.99', '2', 'A2', 'Science Fiction', 1, '2024-06-29 14:57:06'),
(3, 'A Brief History of Time', '9780553380163', 'Stephen Hawking', 'Bantam Books', '15.99', '1', 'B1', 'Non-Fiction', 1, '2024-06-29 14:46:29'),
(4, 'The Great Gatsby', '9780743273565', 'F. Scott Fitzgerald', 'Charles Scribner\'s Sons', '10.00', '3', 'A3', 'Fiction', 1, '2024-06-29 09:54:33'),
(5, 'Harry Potter and the Sorcerer\'s Stone', '9780590353427', 'J.K. Rowling', 'Bloomsbury', '12.99', '6', 'C1', 'Fantasy', 1, '2024-06-29 09:03:21'),
(6, 'Steve Jobs', '9781451648539', 'Walter Isaacson', 'Simon & Schuster', '20.00', '2', 'B2', 'Biography', 1, '2024-06-29 09:03:21'),
(7, 'The Catcher in the Rye', '9780316769488', 'J.D. Salinger', 'Little, Brown and Company', '8.99', '3', 'A4', 'Fiction', 1, '2024-06-29 09:03:21'),
(8, 'The Art of War', '9781599869773', 'Sun Tzu', 'Unknown', '7.99', '5', 'D1', 'Non-Fiction', 1, '2024-06-29 09:03:21'),
(9, 'The Hobbit', '9780547928227', 'J.R.R. Tolkien', 'George Allen & Unwin', '14.99', '4', 'C2', 'Fantasy', 1, '2024-06-29 09:03:21'),
(10, 'Gone Girl', '9780307588371', 'Gillian Flynn', 'Crown Publishing Group', '12.99', '3', 'A5', 'Mystery', 1, '2024-06-29 09:03:21'),
(11, 'Pride and Prejudice', '9780486284736', 'Jane Austen', 'T. Egerton, Whitehall', '6.99', '2', 'A6', 'Romance', 1, '2024-06-29 09:03:21'),
(12, 'The Da Vinci Code', '9780385504201', 'Dan Brown', 'Doubleday', '10.99', '4', 'B3', 'Thriller', 1, '2024-06-29 09:03:21'),
(13, 'Charlotte\'s Web', '9780064400553', 'E.B. White', 'Harper & Brothers', '7.99', '6', 'D2', 'Children', 1, '2024-06-29 09:03:21'),
(14, 'The Fault in Our Stars', '9780525478812', 'John Green', 'Dutton Books', '12.99', '3', 'C3', 'Young Adult', 1, '2024-06-29 09:03:21'),
(15, 'The Power of Now', '9781577314806', 'Eckhart Tolle', 'New World Library', '9.99', '2', 'B4', 'Self-Help', 1, '2024-06-29 09:03:21'),
(16, 'The 7 Habits of Highly Effective People', '9780743269513', 'Stephen R. Covey', 'Free Press', '15.00', '3', 'B5', 'Self-Help', 1, '2024-06-29 09:03:21'),
(17, 'How to Win Friends and Influence People', '9780671027032', 'Dale Carnegie', 'Simon and Schuster', '10.00', '4', 'B6', 'Self-Help', 1, '2024-06-29 09:03:21'),
(18, 'The Alchemist', '9780061122415', 'Paulo Coelho', 'HarperTorch', '14.99', '5', 'C4', 'Fiction', 1, '2024-06-29 09:03:21'),
(19, 'Thinking, Fast and Slow', '9780374533557', 'Daniel Kahneman', 'Farrar, Straus and Giroux', '16.00', '1', 'B7', 'Non-Fiction', 1, '2024-06-29 15:20:20'),
(20, 'Sapiens: A Brief History of Humankind', '9780062316110', 'Yuval Noah Harari', 'Harvill Secker', '18.99', '3', 'B8', 'Non-Fiction', 1, '2024-06-29 09:03:21'),
(21, 'The Great Gatsby', '9780743273565', 'F. Scott Fitzgerald', 'Scribner', '10.99', '5', 'Main Library', 'Fiction', 1, '2024-06-29 09:47:46'),
(22, 'To Kill a Mockingbird', '9780061120084', 'Harper Lee', 'J.B. Lippincott & Co.', '7.99', '3', 'Main Library', 'Fiction', 1, '2024-06-29 09:47:46'),
(23, 'A Brief History of Time', '9780553380163', 'Stephen Hawking', 'Bantam Books', '18.95', '2', 'Science Section', 'Science Fiction', 1, '2024-06-29 09:47:46'),
(24, 'The Hobbit', '9780345339683', 'J.R.R. Tolkien', 'George Allen & Unwin', '8.99', '4', 'Fantasy Section', 'Fantasy', 1, '2024-06-29 09:47:46'),
(25, 'Steve Jobs', '9781451648539', 'Walter Isaacson', 'Simon & Schuster', '20.00', '1', 'Biography Section', 'Biography', 1, '2024-06-29 09:47:46'),
(26, 'The Diary of a Young Girl', '9780553296983', 'Anne Frank', 'Bantam', '6.99', '2', 'History Section', 'History', 1, '2024-06-29 09:47:46'),
(27, 'Gone Girl', '9780307588371', 'Gillian Flynn', 'Crown Publishing Group', '9.99', '4', 'Mystery Section', 'Mystery', 1, '2024-06-29 09:47:46'),
(28, 'Pride and Prejudice', '9780143105428', 'Jane Austen', 'Penguin Classics', '5.99', '6', 'Romance Section', 'Romance', 1, '2024-06-29 09:47:46'),
(29, 'The Girl with the Dragon Tattoo', '9780307454546', 'Stieg Larsson', 'Knopf', '14.95', '3', 'Thriller Section', 'Thriller', 1, '2024-06-29 09:47:46'),
(30, 'Harry Potter and the Sorcerer\'s Stone', '9780590353427', 'J.K. Rowling', 'Scholastic', '12.99', '10', 'Children\'s Area', 'Children', 1, '2024-06-29 09:47:46'),
(31, 'The Hunger Games', '9780439023528', 'Suzanne Collins', 'Scholastic Press', '10.00', '8', 'Young Adult Section', 'Young Adult', 1, '2024-06-29 09:47:46'),
(32, 'The Power of Now', '9781577314806', 'Eckhart Tolle', 'New World Library', '15.00', '2', 'Self-Help Section', 'Self-Help', 1, '2024-06-29 09:47:46'),
(33, 'The Body Keeps the Score', '9780143127741', 'Bessel van der Kolk', 'Penguin Books', '16.00', '3', 'Health Section', 'Health', 1, '2024-06-29 09:47:46'),
(34, 'Lonely Planet\'s Ultimate Travel', '9781786571238', 'Lonely Planet', 'Lonely Planet', '30.00', '1', 'Travel Section', 'Travel', 1, '2024-06-29 09:47:46');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `id` int(11) NOT NULL,
  `category_name` varchar(250) NOT NULL,
  `status` tinyint(4) NOT NULL COMMENT '1=active, 0=inactive',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `category_name`, `status`, `created_at`) VALUES
(1, 'Fiction', 1, '2024-06-29 08:57:49'),
(2, 'Non-Fiction', 1, '2024-06-29 08:57:49'),
(3, 'Science Fiction', 1, '2024-06-29 08:57:49'),
(4, 'Fantasy', 1, '2024-06-29 08:57:49'),
(5, 'Biography', 1, '2024-06-29 08:57:49'),
(6, 'History', 1, '2024-06-29 08:57:49'),
(7, 'Mystery', 1, '2024-06-29 08:57:49'),
(8, 'Romance', 1, '2024-06-29 08:57:49'),
(9, 'Thriller', 1, '2024-06-29 08:57:49'),
(10, 'Children', 1, '2024-06-29 08:57:49'),
(11, 'Young Adult', 1, '2024-06-29 08:57:49'),
(12, 'Self-Help', 1, '2024-06-29 08:57:49'),
(13, 'Health', 1, '2024-06-29 08:57:49'),
(14, 'Travel', 1, '2024-06-29 08:57:49'),
(15, 'Cooking', 1, '2024-06-29 08:57:49'),
(16, 'Art', 1, '2024-06-29 08:57:49'),
(17, 'Comics', 1, '2024-06-29 08:57:49'),
(18, 'Education', 1, '2024-06-29 08:57:49'),
(19, 'Technology', 1, '2024-06-29 08:57:49'),
(20, 'Religion', 1, '2024-06-29 08:57:49');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_issue`
--

CREATE TABLE `tbl_issue` (
  `id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_name` varchar(250) NOT NULL,
  `issue_date` varchar(250) NOT NULL,
  `due_date` varchar(250) NOT NULL,
  `status` varchar(250) NOT NULL DEFAULT '0' COMMENT '3=request sent, 1=accept, 2=reject',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_issue`
--

INSERT INTO `tbl_issue` (`id`, `book_id`, `user_id`, `user_name`, `issue_date`, `due_date`, `status`, `created_at`) VALUES
(3, 3, 6, 'reach', '2024-06-29', '2024-09-29', '1', '2024-06-29 14:46:29'),
(4, 4, 6, 'reach', '2024-06-29', '2024-09-29', '1', '2024-06-29 09:54:33'),
(5, 1, 7, 'reach', '2024-06-29', '2024-09-29', '1', '2024-06-29 14:52:20'),
(6, 1, 6, 'reach', '2024-06-29', '2024-09-29', '1', '2024-06-29 15:18:45'),
(7, 2, 6, 'reach', '2024-06-29', '2024-09-29', '1', '2024-06-29 14:57:06'),
(8, 19, 6, 'reach', '2024-06-29', '2024-09-29', '1', '2024-06-29 15:20:20');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_location`
--

CREATE TABLE `tbl_location` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `status` tinyint(4) NOT NULL COMMENT '1=active, 0=inactive',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_location`
--

INSERT INTO `tbl_location` (`id`, `name`, `status`, `created_at`) VALUES
(1, 'Main Library', 1, '2024-06-29 09:13:43'),
(2, 'Science Section', 1, '2024-06-29 09:13:43'),
(3, 'History Section', 1, '2024-06-29 09:13:43'),
(4, 'Children\'s Area', 1, '2024-06-29 09:13:43'),
(5, 'Young Adult Section', 1, '2024-06-29 09:13:43'),
(6, 'Reference Section', 1, '2024-06-29 09:13:43'),
(7, 'Study Rooms', 1, '2024-06-29 09:13:43'),
(8, 'Computer Lab', 1, '2024-06-29 09:13:43'),
(9, 'Magazine and Newspaper Area', 1, '2024-06-29 09:13:43'),
(10, 'Audiovisual Room', 1, '2024-06-29 09:13:43'),
(11, 'Research Room', 1, '2024-06-29 09:13:43'),
(12, 'Administrative Office', 1, '2024-06-29 09:13:43'),
(13, 'Archives', 1, '2024-06-29 09:13:43'),
(14, 'Rare Books Room', 1, '2024-06-29 09:13:43'),
(15, 'Cafeteria', 1, '2024-06-29 09:13:43'),
(16, 'Outdoor Reading Area', 1, '2024-06-29 09:13:43'),
(17, 'Lobby', 1, '2024-06-29 09:13:43'),
(18, 'Events Hall', 1, '2024-06-29 09:13:43'),
(19, 'Reading Room', 1, '2024-06-29 09:13:43'),
(20, 'Quiet Study Area', 1, '2024-06-29 09:13:43');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_return`
--

CREATE TABLE `tbl_return` (
  `id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_name` varchar(250) NOT NULL,
  `return_date` varchar(250) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_return`
--

INSERT INTO `tbl_return` (`id`, `book_id`, `user_id`, `user_name`, `return_date`, `created_at`) VALUES
(1, 1, 6, 'reach', '2024-06-29', '2024-06-29 09:58:59'),
(2, 2, 6, 'reach', '2024-06-29', '2024-06-29 10:21:31');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id` int(11) NOT NULL,
  `user_name` varchar(250) NOT NULL,
  `emailid` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `role` tinyint(4) NOT NULL COMMENT '1=admin, 2=user',
  `status` tinyint(4) NOT NULL COMMENT '1=active, 0=inactive',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`id`, `user_name`, `emailid`, `password`, `role`, `status`, `created_at`) VALUES
(6, 'reach', 'reach@paragon.com', '76154bfadb55edd2bc8daea6573d0f2e', 2, 1, '2024-06-29 07:37:57'),
(7, 'socheata', 'socheata@paragon.com', 'socheata@paragon', 1, 1, '2024-06-29 07:39:12'),
(8, 'chungphat', 'chungphat@paragon.com', 'bc999ecd7a8c17e619edaf81651b060c', 2, 1, '2024-06-29 15:17:31'),
(9, 'Chhaysea', 'chhaysea@paragon.com', '775fa2ea48632de9ad3ba6a93b2a6fbe', 2, 1, '2024-06-29 15:18:09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_book`
--
ALTER TABLE `tbl_book`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_issue`
--
ALTER TABLE `tbl_issue`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_issue_book` (`book_id`),
  ADD KEY `fk_issue_user` (`user_id`);

--
-- Indexes for table `tbl_location`
--
ALTER TABLE `tbl_location`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_return`
--
ALTER TABLE `tbl_return`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_return_book` (`book_id`),
  ADD KEY `fk_return_user` (`user_id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_book`
--
ALTER TABLE `tbl_book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tbl_issue`
--
ALTER TABLE `tbl_issue`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_location`
--
ALTER TABLE `tbl_location`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tbl_return`
--
ALTER TABLE `tbl_return`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_issue`
--
ALTER TABLE `tbl_issue`
  ADD CONSTRAINT `fk_issue_book` FOREIGN KEY (`book_id`) REFERENCES `tbl_book` (`id`),
  ADD CONSTRAINT `fk_issue_user` FOREIGN KEY (`user_id`) REFERENCES `tbl_users` (`id`);

--
-- Constraints for table `tbl_return`
--
ALTER TABLE `tbl_return`
  ADD CONSTRAINT `fk_return_book` FOREIGN KEY (`book_id`) REFERENCES `tbl_book` (`id`),
  ADD CONSTRAINT `fk_return_user` FOREIGN KEY (`user_id`) REFERENCES `tbl_users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
