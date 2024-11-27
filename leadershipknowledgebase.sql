-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 27, 2024 at 09:01 AM
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
-- Database: `leadershipknowledgebase`
--

-- --------------------------------------------------------

--
-- Table structure for table `emaillog`
--

CREATE TABLE `emaillog` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `emaillog`
--

INSERT INTO `emaillog` (`id`, `name`, `email`, `message`, `created_at`) VALUES
(1, 'Brandon Morales ', '', 'hello, prueba', '2024-11-13 14:12:22'),
(2, 'Brandon', 'nbrandon165@gmail.com', 'sjdsl;', '2024-11-20 06:24:42');

-- --------------------------------------------------------

--
-- Table structure for table `knowledgebase`
--

CREATE TABLE `knowledgebase` (
  `QuestionID` int(11) NOT NULL,
  `Question` varchar(255) DEFAULT NULL,
  `Description` text DEFAULT NULL,
  `Answer` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `knowledgebase`
--

INSERT INTO `knowledgebase` (`QuestionID`, `Question`, `Description`, `Answer`) VALUES
(1, 'Organisational Requirements', 'A good team leader leads by example. Describe the professional behaviours that you would role model as a leader for your team', 'Methods:\n• Verbal communication\n• Non-verbal communication (body language)\n• Written communication\n• Listening\n• Visual communication\n\nStyle used with the team:\n• Assertive (achieves goals without hurting others, emotionally expressive, protects own rights and rights of others, speaks with a balanced tone and volume)'),
(2, 'Team Facilitation Techniques', 'Coaching and mentoring are development approaches based on one-on-one conversations to enhance individuals’ skills, knowledge, or work performance. Describe 2 techniques in coaching and mentoring that you will use with your team to support the members.', '• Maintain etiquette – many cultures have specific etiquette around the way they communicate. Research the target culture.\n• Avoid slang – Non-native English speakers may understand individual words but not the context or meaning.\n• Speak slowly – Modulate your pace and pronounce words properly.\n• Keep it simple – Avoid unnecessary large words.\n\nThe same techniques apply when communicating with individuals with special needs or disabilities; ask what will help with communication, and be polite and patient.'),
(3, 'Mentoring and Coaching Techniques', '1. Working with teams can be challenging. What does establishing a team performance plan mean and what are the benefits?\n2. How would you handle a potential risk or safety hazard to ensure it does not affect the team’s performance? Provide an example of the risk (e.g., second wave of COVID) and the strategy you would implement.\n3. The project’s final deadline is nearing, and an unethical alternative is suggested by a team member. What is your approach to this situation?', '1. Establish team performance:\n• Identify the desired performance levels of the team.\n• Determine how performance levels will be achieved.\n• Guide and direct the team.\n• Measure progress toward performance levels.\n\n2. In a scenario like COVID where in-person meetings are not possible, switch to virtual meetings and conduct regular check-ins to prevent isolation.\n\n3. Reiterate the code of conduct and organization policy to the entire team. Be firm against unethical actions and counsel the individual member.'),
(4, 'Conflict Resolution', 'Project success depends on effective communication. Steady communication from leadership can improve morale and engagement. Describe the different methods and styles of communication you will use with your team.', '• Communicate with your staff: Be clear with staff about work purpose, expectations, and goals through regular meetings and a mission statement. Lack of communication risks misunderstanding, assumptions, and low morale.\n\n• Commit to staff development: Invest in education, skill development, and leadership training. Follow up to ensure skills are used effectively.\n\n• Offer feedback: Provide casual and formal evaluations, both positive and constructive.\n\n• Encourage collaboration: Foster a comfortable space for innovation among staff who know and trust each other.\n\n• Be consistent: Treat each employee equally to ensure they feel valued.'),
(5, 'Communication Methods and Styles', 'Personal events can place strain on teams, so contingencies need to be in place for unplanned leave, task re-allocation, and succession planning.', '• Identify common goals\n• Seek agreement\n• Consider solutions and possibilities\n• Question beliefs\n• Commit to resolving issues as a group'),
(6, 'Cross Cultural Communication', 'When working with teams from other divisions, describe the organizational policies that you will refer to, to ensure that your project aligns with the organization’s requirements and the importance of each:\n1. Workplace policies\n2. Code of conduct\n3. Reputation and culture\n4. Legislative requirements (EEO, WHS)', '• Listening: Coaching focuses on the person being coached. Listen actively to summarize, clarify, and identify underlying issues.\n\n• Open-ended questioning on three levels:\n   - First level: Describe the issue\n   - Second level: Ask strategic questions for deeper insight\n   - Third level: Use strategic questions to prompt change\n\n• Observing: Reflect observations neutrally and validate with the person involved; this may lead to coaching.'),
(7, 'Professionalism', 'We work in a diverse community with various cultures and individuals with special needs or disabilities. Describe the principles of communication for these groups and how you would apply these principles with your team.', '• Ethical integrity: Doing the right things for the right reasons.\n• Building trust: Earned through respectful actions.\n• Bringing others along: Helping others discover their strengths.\n• Inspiring: Motivating people with a vision, passion, and values.\n• Decision-making: Making firm decisions with authority and confidence.\n• Rewarding achievement: Recognizing hard work and fulfilling promises.'),
(8, 'Workplace Contingencies', 'Cohesive teams are better able to accomplish tasks, solve problems, and innovate. Describe strategies for developing team cohesion and effectiveness.', '• Code of Conduct: Details organizational, ethical, and professional behaviors that employees must follow.\n• Corporate Social Responsibility: Defines social responsibilities, accountability, and community focus.\n• Equity and Diversity Policy: Promotes equal opportunity, diversity, and a discrimination-free environment per various acts.\n• OSH Policy: Outlines responsibilities and duties for safety and health at work.'),
(9, 'Teamwork Challenges', 'When conflict is resolved effectively, it leads to benefits like accomplishing goals and strengthening relationships. Outline a strategy for resolving team conflict.', '1. Prioritize tasks based on team and organization goals.\n2. Evaluate skills for task assignment to ensure quality and morale.\n3. Provide performance management and transparency for development; communicate that advancement is possible but not guaranteed.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `emaillog`
--
ALTER TABLE `emaillog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `knowledgebase`
--
ALTER TABLE `knowledgebase`
  ADD PRIMARY KEY (`QuestionID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `emaillog`
--
ALTER TABLE `emaillog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `knowledgebase`
--
ALTER TABLE `knowledgebase`
  MODIFY `QuestionID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
