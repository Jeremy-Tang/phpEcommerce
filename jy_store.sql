-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 18, 2020 at 06:58 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jy_store`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `admin_id` int(10) NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `admin_email` varchar(255) NOT NULL,
  `admin_pass` varchar(255) NOT NULL,
  `admin_image` text NOT NULL,
  `admin_country` text NOT NULL,
  `admin_about` text NOT NULL,
  `admin_contact` varchar(255) NOT NULL,
  `admin_job` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`admin_id`, `admin_name`, `admin_email`, `admin_pass`, `admin_image`, `admin_country`, `admin_about`, `admin_contact`, `admin_job`) VALUES
(1, 'Jeremy Tang', 'jeremy@gmail.com', '123456', 'admin1.jpg', 'Malaysia', '<P>\r\nI am the CEO of the company JY Store. Feel free to contact me if needed. I will try my best !!\r\n<br>\r\nEducation Level : DIPLOMA\r\n<br>\r\nCourse : DIT\r\n</P>', '010-2029999', 'CEO'),
(2, 'Xion Keat', 'xk@gmail.com', '123456', 'admin2.jpg', 'Malaysia', '<p>\r\nI am the Top Manager of the company JY Store , fell free to contact me if needed. I will do my best!!\r\n<br>\r\nEducation Level : DIPLOMA\r\n<br>\r\nCourse : DIT\r\n</P>', '012-2899999', 'TOP MANAGER');

-- --------------------------------------------------------

--
-- Table structure for table `boxes_section`
--

CREATE TABLE `boxes_section` (
  `box_id` int(10) NOT NULL,
  `box_title` text NOT NULL,
  `box_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `boxes_section`
--

INSERT INTO `boxes_section` (`box_id`, `box_title`, `box_desc`) VALUES
(1, 'Best Price', '<P>\r\nWe having the world better price!!bla bla bla bla bla bla bla bla bla bla blablabla bla bla v bla bla bla blabla blabla bla blabla bla bla bla bla bla bla bla bla bla blablabla bla bla v bla bla bla blabla blabla bla bla bla bla bla bla bla bla bla bla bla bla blablabla bla bla v bla bla bla blabla blabla bla bla\r\n</P>'),
(2, 'Customer Care', '<p>\r\nWe love our customer , we are like to hear any command from you!!bla bla bla bla bla bla bla bla bla bla blablabla bla bla v bla bla bla blabla blabla bla blabla bla bla bla bla bla bla bla bla bla blablabla bla bla v bla bla bla blabla blabla bla bla bla bla bla bla bla bla bla bla bla bla blablabla bla bla v bla bla bla blabla blabla bla bla\r\n</P>'),
(3, 'Good Quality', '<p>\r\nWe provide all good quality products to customer . No any fact!!bla bla bla bla bla bla bla bla bla bla blablabla bla bla v bla bla bla blabla blabla bla blabla bla bla bla bla bla bla bla bla bla blablabla bla bla v bla bla bla blabla blabla bla bla bla bla bla bla bla bla bla bla bla bla blablabla bla bla v bla bla bla blabla blabla bla bla\r\n</P>');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(255) NOT NULL,
  `qty` int(10) NOT NULL,
  `size` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(10) NOT NULL,
  `cat_title` text NOT NULL,
  `cat_top` text NOT NULL,
  `cat_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`, `cat_top`, `cat_image`) VALUES
(1, 'Man', 'no', 'mens.jpg'),
(2, 'Women', 'no', 'women.jpg'),
(3, 'Kids', 'no', 'kids.jpg'),
(4, 'Others', 'no', 'baby.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(10) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_pass` varchar(255) NOT NULL,
  `customer_country` text NOT NULL,
  `customer_city` text NOT NULL,
  `customer_contact` varchar(255) NOT NULL,
  `customer_address` text NOT NULL,
  `customer_image` text NOT NULL,
  `customer_ip` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `customer_name`, `customer_email`, `customer_pass`, `customer_country`, `customer_city`, `customer_contact`, `customer_address`, `customer_image`, `customer_ip`) VALUES
(1, 'test', 'test@gmail.com', '123456', 'wad', 'aawdaw', '123', 'awdawd', 'Jackvin.jpg', '::1');

-- --------------------------------------------------------

--
-- Table structure for table `customer_orders`
--

CREATE TABLE `customer_orders` (
  `order_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `due_amount` int(100) NOT NULL,
  `invoice_no` int(100) NOT NULL,
  `qty` int(10) NOT NULL,
  `size` text NOT NULL,
  `order_date` date NOT NULL,
  `order_status` text NOT NULL,
  `s_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_orders`
--

INSERT INTO `customer_orders` (`order_id`, `customer_id`, `due_amount`, `invoice_no`, `qty`, `size`, `order_date`, `order_status`, `s_id`) VALUES
(2, 1, 80, 1365168968, 1, 'Medium', '2020-08-29', 'Complete', 2),
(3, 1, 55, 940343486, 1, 'Large', '2020-08-29', 'Complete', 1),
(10, 1, 49, 151374735, 1, 'Medium', '2020-09-16', 'Complete', 0),
(11, 1, 169, 636922239, 1, 'Medium', '2020-09-16', 'pending', 0),
(12, 1, 149, 1461996834, 1, 'Medium', '2020-09-18', 'Complete', 0);

-- --------------------------------------------------------

--
-- Table structure for table `manufacturers`
--

CREATE TABLE `manufacturers` (
  `manufacturer_id` int(10) NOT NULL,
  `manufacturer_title` text NOT NULL,
  `manufacturer_top` text NOT NULL,
  `manufacturer_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manufacturers`
--

INSERT INTO `manufacturers` (`manufacturer_id`, `manufacturer_title`, `manufacturer_top`, `manufacturer_image`) VALUES
(1, 'H&M', 'no', 'h&m.png'),
(2, 'PADINI', 'no', 'padini.jpg'),
(3, 'POLO', 'no', 'polo.png'),
(4, 'UNIQLO', 'yes', 'uniqlo.png'),
(5, 'ZARA', 'no', 'zara.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `payment_id` int(10) NOT NULL,
  `invoice_no` int(10) NOT NULL,
  `amount` int(10) NOT NULL,
  `payment_mode` text NOT NULL,
  `ref_no` int(10) NOT NULL,
  `code` int(10) NOT NULL,
  `payment_date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`payment_id`, `invoice_no`, `amount`, `payment_mode`, `ref_no`, `code`, `payment_date`) VALUES
(2, 1365168968, 80, 'Back Code', 0, 0, 'dwdad21323'),
(3, 151374735, 49, 'Back Code', 0, 0, '13/10/2020'),
(4, 1461996834, 149, 'Paypall', 0, 0, '03/01/2020');

-- --------------------------------------------------------

--
-- Table structure for table `pending_orders`
--

CREATE TABLE `pending_orders` (
  `order_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `invoice_no` int(10) NOT NULL,
  `product_id` text NOT NULL,
  `qty` int(10) NOT NULL,
  `size` text NOT NULL,
  `order_status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pending_orders`
--

INSERT INTO `pending_orders` (`order_id`, `customer_id`, `invoice_no`, `product_id`, `qty`, `size`, `order_status`) VALUES
(2, 1, 1365168968, '20', 1, 'Medium', 'Complete'),
(3, 1, 940343486, '27', 1, 'Large', 'pending'),
(10, 1, 151374735, '33', 1, 'Medium', 'Complete'),
(11, 1, 636922239, '65', 1, 'Medium', 'pending'),
(12, 1, 1461996834, '64', 1, 'Medium', 'Complete');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(10) NOT NULL,
  `p_cat_id` int(10) NOT NULL,
  `cat_id` int(10) NOT NULL,
  `manufacturer_id` int(10) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `product_title` text NOT NULL,
  `product_img1` text NOT NULL,
  `product_img2` text NOT NULL,
  `product_img3` text NOT NULL,
  `product_price` int(10) NOT NULL,
  `product_keywords` text NOT NULL,
  `product_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `p_cat_id`, `cat_id`, `manufacturer_id`, `date`, `product_title`, `product_img1`, `product_img2`, `product_img3`, `product_price`, `product_keywords`, `product_desc`) VALUES
(1, 2, 1, 4, '2020-09-18 15:50:16', 'MEN KANDO Jacket (Pattern)', 'product1.jpg', 'product1a.jpg', 'product1b.jpg', 250, 'jackets', '<p>It`s light and easy to move in and doesn\'t get musty. Make everyday a relaxing day with this easy-to-find, high-performance jacket.\r\n<br><br>\r\n- With quick-drying features for when you sweat or even after machine washing.<br>\r\n- It\'s very light, stretchy and easy to move in<br>\r\n<br>\r\nMATERIALShell: 100% Polyester/ Lining: 100% Polyester\r\n<br>\r\nCARE Hand wash cold\r\n</p>'),
(2, 6, 1, 4, '2020-09-18 15:51:22', 'MEN Long Sleeve Sweat Shirt', 'product2.jpg', 'product2a.jpg', 'product2b.jpg', 80, 'long sleeve shirt', '<p>This item has a modern look but the comfortable feel of sweats.<br><br>\r\n- The item has a relaxed silhouette inspired by vintage sweats. Wear it in your true size, or go one size up for an oversized look.<br>\r\n- Paid particular attention to the details, and used a thick yarn so it is more durable.<br>\r\n- Used herringbone tape at the collar, so it is more durable and stays sharp even when worn for a long time.<br>\r\n- Goes with various styles.\r\n<br><br>\r\nMATERIALBody: 100% Cotton/ Rib: 86% Cotton, 14% Polyester\r\n<br>\r\nCARE Machine wash cold\r\n</p>'),
(3, 2, 1, 4, '2020-09-18 15:51:59', 'MEN Ultra Light Down Jacket', 'product3.jpg', 'product3a.jpg', 'product3b.jpg', 250, 'jackets', '<p>A thin, light, and warm down jacket. Attention has been paid to the design and comfort of each part.<br>\r\n- Pocketable design that is compact in size and can be carried around. <br>\r\n- Durable water-repellent coating. <br>\r\n- Uses a special inner-lining to prevent static electricity. <br>\r\n- This season’s updates includes a wider quilt for a more casual look. <br>\r\n- In response to customer feedback, we changed the size to make it look neat and not too tight. <br>\r\n- The collar stands up firmly and looks sharp. <br>\r\n- Three-dimensional gusset under the armpit makes it easy to move your arms. <br>\r\n- In a stylish matte finish. \r\n<br><br>\r\nMATERIALFace: 100% Nylon [Filling] Body: 90% Down, 10% Waterfowl feathers [Shoulder] Inner Layer: 90% Down, 10% Waterfowl feathers [Shoulder] Outer Layer: 100% Polyester/ Back: 100% Nylon\r\n<br><br>\r\nCARE Hand wash cold\r\n</p>'),
(4, 6, 1, 4, '2020-09-18 15:52:32', 'MEN Flannel Long Sleeve Shirt', 'product4.jpg', 'product4a.jpg', 'product4b.jpg', 80, 'long sleeve shirt', '<p>Brushed on both sides so it feels fluffy, soft, and warm. A length that looks nice styled as an outer layer as well.<br>\r\n- Brushed 100% cotton is light, soft, and has great heat retention. <br>\r\n- This season, we made the front slightly shorter for a balanced look when the shirt is worn untucked. <br>\r\n- The sleeves were slightly thickened with threads from under the arms to the sides. By applying double stitching, the stitches were sewn with puckering to create a casual look. <br>\r\n- The shoulder width and the body are moderately loose, but the arms and around the chest provide a sleek cut. <br>\r\n- A regular fit is universally easy to style. <br>\r\n- The front and back have different lengths, and the design makes it easy to move your arms. <br>\r\n- Durable buffalo horn-looking plastic buttons. <br>\r\n- The pockets are balanced to flatter in a size that fits ID cards and passports.\r\n<br><br>\r\nMATERIAL100% Cotton\r\n<br><br>\r\nCARE Machine wash cold\r\n</p>'),
(5, 1, 1, 4, '2020-09-18 15:53:34', 'MEN Packaged Dry V Neck Short Sleeve T-Shirt', 'product5.jpg', 'product5a.jpg', 'product5b.jpg', 20, 'T-shirt', '<p>Simple and versatile. Stays dry, giving it a comfortable and dry feeling against the skin.<br>\r\n- Quick-drying technology makes this item dry quickly even after sweating or washing. <br>\r\n- Can be worn by itself or as innerwear thanks to its neckline and overall fit.\r\n<br><br>\r\nMATERIAL67% Cotton, 33% Polyester\r\n<br><br>\r\nCARE Machine wash cold\r\n</p>'),
(6, 4, 2, 4, '2020-09-18 15:54:30', 'WOMEN Light Cotton Sleeveless Lounge Dress', 'product6.jpg', 'product6a.jpg', 'product6b.jpg', 80, 'dress', '<p>You can relax with a refreshing texture and a relaxed silhouette. It also features cute colors and patterns.<br>\r\n- Made with 100% cotton cut dobby fabric with a rough surface and a lightweight feel. <br>\r\n- It is cool because it doesn\'t stick to your skin and you can relax with its loose-fitting silhouette. <br>\r\n- It\'s a cute design with a polka-dot pattern print on a textured material. <br>\r\n- Gathers at the waist for an on-trend design.\r\n<br><br>\r\n\r\nMATERIAL\r\nBody: 100% Cotton/ Lace: 100% Cotton\r\n\r\n\r\n<br><br>\r\nCARE \r\nMachine wash cold, gentle cycle\r\n</p>'),
(7, 3, 1, 4, '2020-09-18 15:54:57', 'MEN Trench Coat', 'product7.jpg', 'product7a.jpg', 'product7b.jpg', 500, 'coats', '<p>Every inch is carefully designed, from the fabric, to the fit, to the functionality. This item looks simple but has been meticulously perfected.<br>\r\n- Made of premium cotton twill fabric with a firm texture and authentic, stylish look. <br>\r\n- Durable water-repellent coating keeps you dry in the rain. <br>\r\n- Well-structured for a flattering shape and cutesear. <br>\r\n- This item looks authentic thanks to research into the original trench coat and paying attention to the details. <br>\r\n- The simple design and perfect length make it easy to match with any style.\r\n<br><br>\r\n\r\nMATERIAL\r\n[32Beige] Shell: 70% Cotton, 30% Polyester/ Lining: 100% Polyester [69Navy] Shell: 80% Cotton, 20% Polyester/ Lining: 100% Polyester\r\n\r\n<br><br>\r\n\r\nCARE\r\nDry Clean\r\n</p>'),
(8, 5, 2, 4, '2020-09-18 15:55:24', 'WOMEN Pocketable UV Cut Printed Parka', 'product8.jpg', 'product8a.jpg', 'product8b.jpg', 100, 'parkast', '<p>Compact and easy to carry around. Keep it in your bag, and it will come in handy to protect you from strong UV rays or a sudden downpour.<br>\r\n- Added water-repellent coating that repels light rain. <br>\r\n- It’s pocketable so you can keep it in your bag to use it anywhere, anytime. <br>\r\n- Placed the hood stopper on the inside, for a design that is not too sporty. <br>\r\n- The inner sleeves and side body were made using one fabric, so it is easy to move your arms. <br>\r\n- UV cut (UPF40) feature for UV ray protection.\r\n<br><br>\r\n\r\nMATERIAL\r\n100% Polyester\r\n\r\n<br><br>\r\n\r\nCARE\r\nMachine wash cold, gentle cycle\r\n</p>'),
(9, 1, 3, 4, '2020-09-18 16:01:50', 'GIRLS Random Ribbed Short Sleeve T-Shirt', 'product9.jpg', 'product9a.jpg', 'product9b.jpg', 30, 'T-shirt', '<p>A T-shirt made in stylish, ribbed fabric.<br>\r\n- Asymmetrically ribbed fabric. <br>\r\n- Streamlined silhouette with a perfectly fitted feel. <br>\r\n- This versatile design looks great on its own or layered. <br>\r\n- Available in matching designs for parents and kids.\r\n\r\n<br><br>\r\nMATERIAL\r\n96% Cotton, 4% Spandex\r\n\r\n\r\n<br><br>\r\nCARE\r\nMachine wash cold\r\n</p>'),
(10, 2, 2, 4, '2020-09-18 16:02:23', 'WOMEN Stretch Jacket', 'product10.jpg', 'product10a.jpg', 'product10b.jpg', 250, 'jackets', '<p>Has a sleek look, but with stretch so you can wear it comfortably. Perfect for work or play.<br>\r\n- Good stretch, so very comfortable when worn.\r\n<br><br>\r\nMATERIALShell: 69% Polyester, 29% Rayon, 2% Spandex/ Lining: 100% Polyester\r\n<br><br>\r\nCARE Do not Dry Clean\r\n</p>'),
(11, 6, 2, 4, '2020-09-18 16:04:27', 'WOMEN 3D Cotton V Neck Puff Half Sleeve Sweater', 'product11.jpg', 'product11a.jpg', 'product11b.jpg', 130, 'long sleeve shirt', '<p>A trendy item with a beautiful three-dimensional silhouette and puff sleeves that you can only get with 3D knit.<br>\r\n- 100% cotton with a soft texture. <br>\r\n- A knit that utilizes the three-dimensional manufacturing method of 3D knit technology. <br>\r\n- For the puff sleeves, placed tension on the cuffs to get a voluminous shape.\r\n<br>\r\n- A silhouette that is loose but still looks sleek. It features a shallow V-neck that makes the décolletage look beautiful.\r\n<br><br>\r\nMATERIAL100% Cotton\r\n<br><br>\r\nCARE Hand wash colda\r\n</p>'),
(12, 6, 2, 4, '2020-09-18 16:04:44', 'WOMEN Rayon Skipper Collar 3/4 Sleeve Blouse', 'product12.jpg', 'product12a.jpg', 'product12b.jpg', 100, 'long sleeve shirt', '<p>Smooth and elegant material makes it easy for you to use it for both casual and formal occasions. Wrinkle-resistant for easy care.<br>\r\n- Easy care that is wrinkle-resistant even after washing. <br>\r\n- Moderately open neck line, so you can use it in a variety of situations, from business to casual.\r\n<br><br>\r\nMATERIAL76% Rayon, 24% Polyester\r\n<br><br>\r\nCARE Machine wash cold, gentle cycle\r\n</p>'),
(13, 6, 2, 4, '2020-09-18 16:05:25', 'WOMEN Flannel Check Oversized Long Sleeve Shirt', 'product13.jpg', 'product13a.jpg', 'product13b.jpg', 80, 'long sleeve shirt', '<p>Our soft and cozy flannel shirt. In an on-trend relaxed silhouette.\r\n- Oversized cut covers the midsection.<br>\r\n<br><br>\r\nMATERIAL100% Cotton\r\n<br><br>\r\nCARE Machine wash cold\r\n</p>'),
(14, 6, 2, 4, '2020-09-18 16:06:39', 'WOMEN Flannel Check Oversized Long Sleeve Shirt', 'product14.jpg', 'product14a.jpg', 'product14b.jpg', 80, 'long sleeve shirtt', '<p>The double-sided brush offers a fluffy texture. Sensible color pattern is key.<br>\r\n- Updated to be fluffier and softer by brushing both sides of the best 100% cotton flannel material. <br>\r\n- Plaid based on traditional Scottish design combined with UNIQLO’s color palette for a modern interpretation. <br>\r\n- Can be worn on its own, as outerwear, or tied around the waist.\r\n<br><br>\r\nMATERIAL100% Cotton\r\n<br><br>\r\nCARE Machine wash cold\r\n</p>'),
(15, 5, 1, 4, '2020-09-18 16:07:25', 'MEN Reversible Parka', 'product15.jpg', 'product15a.jpg', 'product15b.jpg', 150, 'parkas', '<p>You can style it two different ways. A must-have item that can be used for all sorts of styling.<br>\r\n- Crisp nylon outer can be styled up or down with ease. <br>\r\n- Smooth jersey material lining allows it to be worn comfortably over a T-shirt or on its own. <br>\r\n- Reversible design for either a sporty and casual look. <br>\r\n- Durable water-repellent coating. <br>\r\n- Curved sleeves allow for easy movement. <br>\r\n- Hood maintains a contoured shape even with an open zipper. <br>\r\n- A simple design that complements any outfit. <br>\r\n- The pockets on the side lined with jersey have been angled so they’re easy to slip your hands in.\r\n<br><br>\r\n\r\nMATERIAL\r\nFace: 100% Polyester/ Back: 60% Cotton, 40% Polyester\r\n\r\n<br><br>\r\n\r\nCARE\r\nHand wash cold\r\n</p>'),
(16, 3, 2, 4, '2020-09-18 16:07:49', 'WOMEN Blocktech Coat', 'product16.jpg', 'product16a.jpg', 'product16b.jpg', 350, 'coats', '<p>Stay-fresh comfort whatever the weather. Keeps you dry and comfortable anywhere, anytime.<br>\r\n- Durable water-repellent coating. <br>\r\n- Exceptional stretch for easy movement. <br>\r\n- Windproof, water-resistant, and moisture-permeable for stay-fresh comfort. <br>\r\n- Adjustable stoppers on the inside allow you to find your perfect fit. <br>\r\n- Windproof outer and taped seams help block out the elements. <br>\r\n- Smooth lining. <br>\r\n- Front placket design ensures easy movement. <br>\r\n- Seamless construction at the sides and sleeves for excellent freedom of movement through the arms. <br>\r\n- Hidden ventilation eyelets under the arms for added breathability. <br>\r\n- A-line cut with a back panel to shape the waist. <br>\r\n- The care label is inside the left pocket.\r\n<br><br>\r\n\r\nMATERIAL\r\n100% Polyester\r\n\r\n<br><br>\r\n\r\nCARE\r\nHand wash cold\r\n</p>'),
(17, 1, 2, 4, '2020-09-18 16:11:37', 'WOMEN Crepe Jersey Stand Collar Short Sleeve T-Shirt', 'product17.jpg', 'product17a.jpg', 'product17b.jpg', 60, 'T-shirt', '<p>Chic style in easy-care fabric. This statement top makes styling easy.<br>\r\n- Crepe jersey material has a unique, crisp feel. <br>\r\n- High-performance fabric that is breathable, quick-drying, and wrinkle-resistant. <br>\r\n- The drape of the fabric creates an elegant, blouse-like look. <br>\r\n- Small, stand collar for an on-trend style. <br>\r\n- The sleeve covers the upper arm. <br>\r\n- Features convenient buttons on the back for easy outfit changes.\r\n<br><br>\r\n\r\nMATERIAL\r\n100% Polyester\r\n\r\n<br><br>\r\n\r\nCARE\r\nMachine wash cold\r\n</p>'),
(18, 2, 3, 4, '2020-09-18 16:11:53', 'GIRLS Collarless Jacket', 'product18.jpg', 'product18a.jpg', 'product18b.jpg', 60, 'jackets', '<p>A clean jacket for casual or formal occasions. It\'s easy to wear.<br>\r\n- This jersey-material is soft, comfortable and low maintenance.\r\n<br><br>\r\n\r\nMATERIAL\r\n56% Cotton, 44% Polyester\r\n\r\n<br><br>\r\n\r\nCARE\r\nHand wash cold\r\n</p>'),
(19, 5, 3, 4, '2020-09-18 16:12:08', 'GIRLS Light Warm Padded Parka', 'product19.jpg', 'product19a.jpg', 'product19b.jpg', 80, 'parkas', '<p>Padded parka that\'s elastic, warm and light enough for your child to wear.<br>\r\n- Durable water-repellent outerwear that keeps you dry in the rain.\r\n\r\n<br><br>\r\nMATERIAL\r\nShell: 100% Nylon/ Filling: 100% Polyester/ Lining: 100% Polyester\r\n\r\n\r\n<br><br>\r\nCARE\r\nMachine wash cold, gentle cycle\r\n</p>'),
(20, 6, 4, 4, '2020-09-18 16:12:29', 'BABIES TODDLER Flannel Long Sleeve Dress', 'product20.jpg', 'product20a.jpg', 'product20b.jpg', 80, 'dress', '<p>A complete look, all on its own. This dress makes outfit changes a cinch.<br>\r\n- Fitted through the body, with an airy, flared skirt. <br>\r\n- The skirt features decorative buttons.\r\n<br><br>\r\n\r\nMATERIAL\r\n100% Cotton\r\n\r\n<br><br>\r\n\r\nCARE\r\nMachine wash cold, gentle cycle\r\n</p>'),
(21, 4, 2, 1, '2020-09-18 16:14:02', 'Imitation leather dress', 'product21.jpg', 'product21a.jpg', 'product21b.jpg', 130, 'dress', '<p>Short dress in imitation leather with a collar, covered press-studs down the front, a chest pocket, short sleeves and a detachable tie belt. Lined.</p>'),
(22, 2, 1, 1, '2020-09-18 16:14:21', 'Corduroy shacket', 'product22.jpg', 'product22a.jpg', 'product22b.jpg', 130, 'jackets', '<p>Shacket in soft cotton corduroy with a collar, zip down the front and flap chest pockets with concealed press-studs. Long sleeves with plackets and buttoned cuffs.</p>'),
(23, 4, 3, 1, '2020-09-18 16:14:46', 'Corduroy dungaree dress', 'product23.jpg', 'product23a.jpg', 'product23b.jpg', 70, 'dress', '<p>Dungaree dress in soft cotton corduroy. Adjustable straps with a metal fastener, elastication at the sides of the waist and gathered tiers on the skirt for added width and soft draping. Partly lined.</p>'),
(24, 5, 1, 1, '2020-09-18 16:15:12', 'Cotton parka', 'product25.jpg', 'product25a.jpg', 'product25b.jpg', 250, 'parkas', '<p>Lightly padded parka in a cotton weave with a pile-lined drawstring hood, zip and wind flap with press-studs down the front, and inner ribbing at the cuffs. Flap front pockets with a press-stud, and concealed side pockets. Quilted lining.</p>'),
(25, 5, 3, 1, '2020-09-18 16:15:30', 'Cotton twill parka', 'product26.jpg', 'product26a.jpg', 'product26b.jpg', 130, 'parkas', '<p>Parka in soft cotton twill with a stand-up collar, detachable, lined hood with concealed press-studs, and a zip down the front with a chin guard. Handwarmer pockets at the top and patch front pockets with a flap and press-stud. Adjustable elastication at the waist and covered elastication at the cuffs. Slightly longer and rounded at the back. Lined.</p>'),
(26, 5, 2, 1, '2020-09-18 16:23:14', 'Padded parka', 'product27.jpg', 'product27a.jpg', 'product27b.jpg', 158, 'parkas', '<p>Short, lightly padded parka in a cotton weave with a lined hood, high collar, and zip and concealed buttons down the front. Chest pockets with a concealed press-stud, flap front pockets with a press-stud, a drawstring at the waist and inner ribbing at the cuffs. Lined.</p>'),
(27, 1, 2, 1, '2020-09-18 16:23:29', 'One-shoulder sweatshirt', 'product28.jpg', 'product28a.jpg', 'product28b.jpg', 55, 'T-shirt', '<p>One-shoulder top in sweatshirt fabric made from a cotton blend with a wide neckline and long sleeves. Ribbing around the neckline, cuffs and hem. Soft brushed inside. The polyester content of the sweatshirt is partly recycled.</p>'),
(28, 1, 4, 1, '2020-09-18 16:23:45', '3-piece cotton set', 'product24.jpg', 'product24a.jpg', 'product24b.jpg', 40, 'T-shirt', '<p>Set with a long-sleeved bodysuit, pair of trousers and a hat in soft, organic cotton jersey. Bodysuit with press-studs on the shoulders and at the crotch. Trousers with wide, foldover ribbing at the waist. Hat with a ribbed hem.</p>'),
(29, 1, 2, 2, '2020-09-18 16:24:40', 'Portofino Active Wear Short Sleeve Knit Tee', 'product29.jpg', 'product29a.jpg', 'product29b.jpg', 30, 'T-shirt', '<p>Active wear tee, Round neckline, Short sleeve, Split cut, Light reflective effect, Stretchable, Quick dry, Solid tone.<br><br>\r\nMaterial<br>\r\n90% Polyester<br>\r\n10% Spandex<br>\r\n</p>'),
(30, 1, 1, 2, '2020-09-18 16:25:18', 'Portofino Casual Short Sleeve Knit Men Tee', 'product30.jpg', 'product30a.jpg', 'product30b.jpg', 30, 'T-shirt', '<p>Active wear tee, Round neckline, \"Run\" letter print, Short sleeve, Quick dry effect, Texture effect, Solid tone.<br><br>\r\nMaterial<br>\r\n100% Polyester<br>\r\n</p>'),
(31, 1, 4, 2, '2020-09-18 16:26:57', 'Miki Casual Rompers Girl', 'product31.jpg', 'product31a.jpg', '', 33, 'T-shirt', '<p>Newborn girl rompers, Round neckline, Short sleeve, Keyhole button closure, Polka dot pattern print, Embroidered on graphic detail, Bow detail, Solid tone.<br><br>\r\n<strong>Care Label</strong><br>\r\nDo Not Bleach<br>\r\nDo Not Soak<br>\r\nWash Separetely<br>\r\nCool Iron<br>\r\nDry Flat<br>\r\nMachine Wash, Cold<br>\r\n<strong>Material</strong><br>\r\n100% Cotton<br>\r\n</p>'),
(32, 1, 4, 2, '2020-09-18 16:29:07', 'Miki Casual Rompers Boy Short Sleeve Romper', 'product32.jpg', 'product32a.jpg', '', 33, 'T-shirt', '<p>Newborn boy romper, Round neckline with tab button closure, Short sleeve, Stripe pattern print, Embroidered on graphic detail, Solid tone. \r\n<br><br>\r\n<strong>Care Label</strong><br>\r\nDo Not Bleach<br>\r\nDo Not Soak<br>\r\nWash Separetely<br>\r\nCool Iron<br>\r\nDry Flat<br>\r\nMachine Wash, Cold<br>\r\n<strong>Material</strong><br>\r\n100% Cotton<br>\r\n</p>'),
(33, 4, 2, 2, '2020-09-18 16:30:48', 'Padini Authentics Essential Short Dress Ladies', 'product33.jpg', 'product33a.jpg', 'product33b.jpg', 49, 'dress', '<p>Casual dress, V-neckline, Long sleeve with elastic cuff, Tie waist, Yellow hue.\r\n<br><br>\r\n\r\n<strong>Care Label</strong><br>\r\nDo Not Bleach<br>\r\nDo Not Soak<br>\r\nWash Separetely<br>\r\nWarm Iron<br>\r\nTumble Dry<br>\r\nMachine Wash, Cold<br>\r\n<strong>Material</strong><br>\r\n100% Polyester<br>\r\n</p>'),
(34, 6, 2, 2, '2020-09-18 16:31:54', 'Filanto Casual Long Sleeve Blouse', 'product34.jpg', 'product34a.jpg', 'product34b.jpg', 30, 'long sleeve shirt', '<p>Casual top, Round neckline, Keyhole button closure, Long sleeve, Stripe pattern detailing, Solid tone.<br><br>\r\n<strong>Care Label</strong><br>\r\nHand Wash<br>\r\nIron Lukewarm Only<br>\r\nDo Not Bleach<br>\r\nDo Not Soak Overnight<br>\r\nDry Flat<br>\r\nHand Wash Recommended<br>\r\n<strong>Material</strong><br>\r\n100% Polyester<br>\r\n</p>'),
(35, 1, 3, 2, '2020-09-18 16:33:02', 'PDI Casual Polo Tee Boy', 'product35.jpg', 'product35a.jpg', 'product35b.jpg', 19, 'T-shirt', '<p>Boys polo tee, Collar neckline, Pique knit, Color block effect, Embroidered letter and graphic detail, Two button placket, Solid tone. \r\n<br><br>\r\nCare Label<br>\r\nDo Not Tumble Dry<br>\r\nDo Not Bleach<br>\r\nDo Not Soak<br>\r\nWash Separetely<br>\r\nCool Iron<br>\r\nMachine Wash, Cold<br>\r\nMaterial<br>\r\n100% Cotton<br>\r\n</p>'),
(36, 6, 1, 2, '2020-09-18 16:33:33', 'Padini Casual Long Sleeve Shirt', 'product36.jpg', 'product36a.jpg', 'product36b.jpg', 89, 'long sleeve shirt', '<p>Formal shirt, Mandarin collar, Long sleeve, Front button placket, One chest pocket, Solid tone<br><br>\r\nCare Label<br>\r\nDo Not Bleach<br>\r\nDo Not Soak<br>\r\nWarm Iron<br>\r\nTumble Dry<br>\r\nMachine Wash, Cold<br>\r\nMaterial<br>\r\n100% Cotton<br>\r\n</p>'),
(37, 2, 1, 2, '2020-09-18 16:34:12', 'PDI Active Wear Hoodie', 'product37.jpg', 'product37a.jpg', 'product37b.jpg', 59, 'jackets', '<p>Casual hoodie, Drawstring hood, Long sleeve, Full zip placket, Front pockets, Texture effect, Solid tone.<br><br>\r\nCare Label<br>\r\nDo Not Tumble Dry<br>\r\nDo Not Bleach<br>\r\nDo Not Soak<br>\r\nWash Separetely<br>\r\nCool Iron<br>\r\nMachine Wash, Cold<br>\r\nMaterial<br>\r\n30% Cotton<br>\r\n70% Polyester<br>\r\n</p>'),
(38, 3, 1, 2, '2020-09-18 16:35:13', 'Padini Traveler Trench Coat ', 'product38.jpg', 'product38a.jpg', 'product38b.jpg', 159, 'coats', '<p>Traveler Series. Coat, Long sleeves, Long silhouette, Hood with toggle fastening, Tab button closure, Full zip placket, Front pocket, Solid tone, 50% Wool and 50% Polyester.<br><br>\r\nCare Label<br>\r\nDo Not Wash<br>\r\nDo Not Tumble Dry<br>\r\nDry Clean <br>\r\nDo Not Bleach<br>\r\nCool Iron<br>\r\nDry Clean Recommended<br>\r\nMaterial<br>\r\n50% Polyester<br>\r\n50% Wool<br>\r\nItem Not Valid for Exchange.<br>\r\n</p>'),
(39, 2, 1, 3, '2020-09-18 16:36:09', 'Edwin Men’s Denim Jacket', 'product39.jpg', 'product39a.jpg', 'product39b.jpg', 217, 'jackets', '<p>98.5% cotton 1.5% spandex<br><br>\r\nLong sleeve denim jacket<br><br>\r\nEnzyme wash<br>\r\n</p>'),
(40, 2, 1, 3, '2020-09-18 16:36:47', 'Edwin Men’s Denim Jacket', 'product40.jpg', 'product40a.jpg', 'product40b.jpg', 160, 'jackets', '<p>100% cotton<br><br>\r\nSleeveless denim jacket<br><br>\r\nWashed effect<br><br>\r\nFrayed sleeve<br>\r\n</p>'),
(41, 2, 1, 3, '2020-09-18 16:37:53', 'Edwin Men’s Denim Jacket (2)', 'product41.jpg', 'product41a.jpg', 'product41b.jpg', 189, 'jackets', '<p>100% Cotton<br><br>\r\nLong sleeve denim jacket<br><br>\r\nEnzyme wash<br>\r\n</p>'),
(42, 1, 1, 3, '2020-09-18 16:38:50', 'Body Glove Men’s Basic Tee', 'product42.jpg', 'product42a.jpg', 'product42b.jpg', 39, 'T-shirt', '<p>95% cotton 5% spandex<br>\r\nRound neck collar band made with soft touch <br><br>material<br>\r\nSemi Gloss printed<br>\r\nShoulder to shoulder taping<br>\r\nShort sleeves<br>\r\nSlim fit\r\n</p>'),
(43, 6, 2, 3, '2020-09-18 16:42:47', 'Body Glove Women’s Premium Tee', 'product43.jpg', 'product43a.jpg', 'product43b.jpg', 50, 'long sleeve shirt', '<p>95% cotton 5% spandex<br><br>\r\nPlastiso printed<br><br>\r\nShoulder to shoulder taping<br><br>\r\nLong sleeve\r\n</p>'),
(44, 1, 2, 3, '2020-09-18 16:43:31', 'Body Glove Women’s Premium Tee', 'product44.jpg', 'product44a.jpg', 'product44b.jpg', 46, 'T-shirt', '<p>100% cotton<br>\r\nRound neck collar band made with soft touch <br><br>material<br>\r\nHeat foil printed<br>\r\nMatte printed<br>\r\nPlastiso printed<br>\r\nShoulder to shoulder taping<br>\r\nShort sleeves<br>\r\n</p>'),
(45, 1, 3, 3, '2020-09-18 16:44:16', 'Body Glove Kids Polo Tee', 'product45.jpg', 'product45a.jpg', 'product45b.jpg', 34, 'T-shirt', '<p>3 – 4 Years ( S Size )<br>\r\n5 – 6 Years ( M Size )<br>\r\n7 – 8 Years ( L Size )<br>\r\n9 – 10 Years ( XL Size )<br>\r\n</p>'),
(46, 1, 2, 3, '2020-09-18 16:44:42', 'Body Glove Women’s Polo Tee', 'product46.jpg', 'product46a.jpg', 'product46b.jpg', 34, 'T-shirt', '<p>100% cotton pique<br>\r\nSoft feel ribbed cuffs and collar<br>\r\nEmbroidered Logo<br>\r\nTwo buttons<br>\r\nFlat seams for extra comfort<br>\r\nRegular fit and easy care<br>\r\n</p>'),
(47, 6, 2, 3, '2020-09-18 16:45:42', 'Edwin Women’s Tee', 'product47.jpg', 'product47a.jpg', 'product47b.jpg', 54, 'long sleeve shirt', '<p>100% cotton<br>\r\nRound neck long sleeve tee with matte printed<br>\r\nShoulder to shoulder taping<br>\r\nLong sleeve<br>\r\n</p>'),
(48, 2, 1, 3, '2020-09-18 16:46:28', 'Body Glove Men’s Activate Hoodie', 'product48.jpg', 'product48a.jpg', 'product48b.jpg', 60, 'jackets', '<p>Front: 100% cotton (French Terry)<br>\r\nEmbroidered logo<br>\r\nEmbroidery and patch<br>\r\nDrawstring at hood<br>\r\nCuff and waistband made of rib material<br>\r\nComfortable & warm<br>\r\n</p>'),
(49, 3, 2, 5, '2020-09-18 16:47:23', 'WOOL BLEND COAT WITH BELTDETAILS', 'product49.jpg', 'product49a.jpg', 'product49b.jpg', 759, 'coats', '<p>BLACK - 8343/744<br><br>\r\nCoat made of a wool blend with a lapel collar. Long sleeves and pronounced shoulders. Front pockets. Back vent at the hem. Belt in the same fabric with a buckle. Metal button fastening on the front.\r\n</p>'),
(50, 3, 2, 5, '2020-09-18 16:47:49', 'WOOL BLEND COAT WITH BELTDETAILS', 'product50.jpg', 'product50a.jpg', 'product50b.jpg', 759, 'coats', '<p>LIGHT SAND - 8412/744<br><br>\r\nWool blend coat featuring a lapel collar, long sleeves, side welt pockets and a back vent. Tied belt in the same fabric.\r\n</p>'),
(51, 2, 2, 5, '2020-09-18 16:48:22', 'WATER-REPELLENT OVERSHIRT TRFDETAILS', 'product51.jpg', 'product51a.jpg', 'product51b.jpg', 199, 'jackets', '<p>BLACK - 3427/739<br><br>\r\nPadded overshirt with a lapel collar and long cuffed sleeves. Featuring patch pockets at the front, side vents at the hem and snap-button fastening at the front.\r\n</p>'),
(52, 2, 2, 5, '2020-09-18 16:49:08', 'WOOL BLEND OVERSHIRT TRFDETAILS', 'product52.jpg', 'product52a.jpg', 'product52b.jpg', 439, 'jackets', '<p>BLACK - 8091/003<br><br>\r\nLoose-fitting overshirt with a regular collar. Made of a wool blend. Long cuffed sleeves. Side pockets and false welt front pockets. Side vents at the hem. Button-up front.<br><br>\r\nJOIN LIFE Care for fiber: at least 50% recycled wool & 25% recycled polyester.\r\nRecycled wool is created using the wool from other garments. By turning this waste into a resource, we reduce the consumption of water, energy and natural resources. Recycled polyester is made from reclaimed PET plastic, thus reducing the consumption of water, energy and natural resources. \r\n</p>'),
(53, 4, 2, 5, '2020-09-18 16:49:33', 'KNIT DRESSDETAILS', 'product53.jpg', 'product53a.jpg', 'product53b.jpg', 259, 'dress', '<p>BROWN / TAUPE - 0014/115<br><br>\r\nKnit V-neck midi dress with thin straps. Vents at the back. A-line hem.\r\n</p>'),
(54, 4, 2, 5, '2020-09-18 16:50:01', 'BELTED SHIRT DRESSDETAILS', 'product54.jpg', 'product54a.jpg', 'product54b.jpg', 439, 'dress', '<p>NAVY BLUE - 7927/457<br><br>\r\nCollared dress featuring loose-fitting long sleeves with cuffs. Belt with a buckle lined in the same fabric. Button-up front.\r\n</p>'),
(55, 6, 2, 5, '2020-09-18 16:50:35', 'RIBBED TOP WITH TIED DETAILDETAILS', 'product55.jpg', 'product55a.jpg', 'product55b.jpg', 100, 'long sleeve shirt', '<p>BROWN - 0858/110<br><br>\r\nTop with a surplice neckline and long sleeves. Bow at the hem in the same fabric.<br><br>\r\nJOIN LIFE Care for fiber: at least 95% organic cotton.\r\nCotton grown using natural fertilisers and pesticides. Moreover, no genetically modified seeds are used during its cultivation, thus helping to preserve seed biodiversity and soil fertility.\r\n</p>'),
(56, 2, 1, 5, '2020-09-18 16:51:07', 'UTILITY PRINTED JACKETDETAILS', 'product56.jpg', 'product56a.jpg', 'product56b.jpg', 479, 'jackets', '<p>TYEAMARILLO - 8574/326<br><br>\r\nJacket with lightly padded interior. High neck, long sleeves and cuffs with adjustable hook-and-loop tabs. Patch pockets with flaps on the chest and hip. Inside pocket detail. Zip-up front hidden by a placket with hook-and-loop tabs.\r\n</p>'),
(57, 3, 1, 5, '2020-09-18 16:53:19', 'TEXTURED COATDETAILS', 'product57.jpg', 'product57a.jpg', 'product57b.jpg', 899, 'coats', '<p>BLACK - 5884/626<br><br>\r\nStraight fit coat with pointed lapels. Long sleeves with buttoned cuffs. Front welt pockets and an inside pocket. Central back vent. Front fastening with buttons hidden by a placket.\r\n<br><br>\r\nJOIN LIFE Care for fiber: at least 15% recycled wool.\r\nThis fibre is created using the wool reclaimed from other wool garments. By transforming this waste into a new resource, we reduce the production of virgin raw materials and the consumption of water, energy and natural resources.\r\n</p>'),
(58, 6, 1, 5, '2020-09-18 16:53:06', 'LONG SLEEVE COMPACT T-SHIRTDETAILS', 'product58.jpg', 'product58a.jpg', 'product58b.jpg', 119, 'long sleeve shirt', '<p>NAVY / WHITE - 9240/308<br><br>\r\nLoose-fitting round neck T-shirt with long sleeves.<br><br>\r\nJOIN LIFE Care for fiber: 100% organic cotton.\r\nCotton grown using natural fertilisers and pesticides. Moreover, no genetically modified seeds are used during its cultivation, thus helping to preserve seed biodiversity and soil fertility.\r\n</p>'),
(59, 1, 1, 5, '2020-09-18 16:53:50', 'PRINTED T-SHIRT OLIVER AND BENJI © FILMS TV TOKYODETAILS', 'product59.jpg', 'product59a.jpg', 'product59b.jpg', 119, 'T-shirt', '<p>WHITE - 0962/305<br><br>\r\nLoose-fitting T-shirt with a round neckline and short sleeves. Featuring a front comic strip print from Oliver and Benji © Films TV Tokyo\r\n</p>'),
(60, 2, 3, 5, '2020-09-18 16:54:36', 'OVERSHIRT WITH POCKETSDETAILS', 'product60.jpg', 'product60a.jpg', 'product60b.jpg', 259, 'jackets', '<p>NATURAL - 5854/720<br><br>\r\nCollared overshirt with long sleeves. Featuring button fastening and patch pockets with flaps on the front.<br><br>\r\nJOIN LIFE Care for fiber: at least 25% recycled wool.<br>\r\nThis fibre is created using the wool reclaimed from other wool garments. By transforming this waste into a new resource, we reduce the production of virgin raw materials and the consumption of water, energy and natural resources.\r\n</p>'),
(61, 4, 3, 5, '2020-09-18 16:55:00', 'CHECK DRESSDETAILS', 'product61.jpg', 'product61a.jpg', 'product61b.jpg', 119, 'dress', '<p>BLACK - 0046/700<br><br>\r\nRound neck dress with short puff sleeves. Features a buttoned teardrop opening at the back. Flounce hem.\r\n</p>'),
(62, 2, 3, 5, '2020-09-18 16:55:24', 'COLOUR BLOCK FAUX SHEARLING JACKETDETAILS', 'product62.jpg', 'product62a.jpg', 'product62b.jpg', 169, 'jackets', '<p>ECRU - 1792/751<br><br>\r\nFaux shearling jacket with a contrast hood and long sleeves. Front zip fastening and pockets. Fleece lining.\r\n</p>'),
(63, 3, 3, 5, '2020-09-18 16:55:55', 'WOOL BLEND PEACOATDETAILS', 'product63.jpg', 'product63a.jpg', 'product63b.jpg', 329, 'coats', '<p>BLACK - 6617/270<br><br>\r\nCoat with lapel collar and long sleeves. Double-breasted button fastening and front pockets. Made of 53% wool fabric.<br><br>\r\nJOIN LIFE Care for fiber: at least 15% recycled wool.<br>\r\nThis fibre is created using the wool reclaimed from other wool garments. By transforming this waste into a new resource, we reduce the production of virgin raw materials and the consumption of water, energy and natural resources.\r\n</p>'),
(64, 2, 4, 5, '2020-09-18 16:56:33', 'LIGHTWEIGHT PUFFER JACKETDETAILS', 'product64.jpg', 'product64a.jpg', 'product64b.jpg', 149, 'jackets', '<p>GREEN - 5644/564<br><br>\r\nLightweight quilted jacket with a hood and long sleeves. Zip-up front and snap buttons on the collar. Front pockets.,br><br>\r\nJOIN LIFE Care for fiber: at least 50% recycled polyamide.<br>\r\nThis fibre is created using the waste product reclaimed from other polyamide products. By transforming this waste into a new resource, we reduce the production of virgin raw materials and the consumption of water, energy and natural resources.\r\n</p>'),
(65, 4, 4, 5, '2020-09-18 16:57:20', 'ESSENTIALS DRESS WITH FLORAL EMBROIDERYDETAILS', 'product65.jpg', 'product65a.jpg', 'product65b.jpg', 169, 'dress', '<p>DARK TURQUOISE - 5770/551<br><br>\r\nRound neck dress with long sleeves and elastic trims. Featuring floral embroidery motifs and button fastening at the back.\r\n</p>');

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `p_cat_id` int(10) NOT NULL,
  `p_cat_title` text NOT NULL,
  `p_cat_top` text NOT NULL,
  `p_cat_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`p_cat_id`, `p_cat_title`, `p_cat_top`, `p_cat_image`) VALUES
(1, 'T-Shirts', 'no', 'tshirt.jpg'),
(2, 'JACKET', 'no', 'jackets.jpg'),
(3, 'COATS', 'no', 'coats.jpg'),
(4, 'DRESS', 'no', 'dress.jpg'),
(5, 'PARKAS', 'no', 'parkas.jpg'),
(6, 'LONG SLEEVE SHIRT', 'no', 'lss.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `shipping_status`
--

CREATE TABLE `shipping_status` (
  `s_id` int(10) NOT NULL,
  `s_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shipping_status`
--

INSERT INTO `shipping_status` (`s_id`, `s_title`) VALUES
(1, 'processing'),
(2, '2-6 days'),
(3, '7-12 days'),
(4, 'complete');

-- --------------------------------------------------------

--
-- Table structure for table `terms`
--

CREATE TABLE `terms` (
  `term_id` int(10) NOT NULL,
  `term_title` varchar(100) NOT NULL,
  `term_link` varchar(100) NOT NULL,
  `term_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `terms`
--

INSERT INTO `terms` (`term_id`, `term_title`, `term_link`, `term_desc`) VALUES
(1, 'Introduction', 'forfun', '<p>This following sets out the terms and conditions on which you may use the content onjy_store.com website, jy_store.com\'s mobile browser site, Business Standard instore Applications and other digital publishing services (www.smartinvestor.in, www.bshindi.com and www.bsmotoring,com) owned by Business Standard Private Limited, all the services herein will be referred to as Business Standard Content Services.\r\n</p>'),
(2, 'Registration Access and Use', 'forfun1', '<p>We welcome users to register on our digital platforms. We offer the below mentioned registration services which may be subject to change in the future. All changes will be appended in the terms and conditions page and communicated to existing users by email.\r\n<br>\r\nRegistration services are offered for individual subscribers only. If multiple individuals propose to access the same account or for corporate accounts kindly contact or write in to us. Subscription rates will vary for multiple same time access.\r\n<br>\r\nThe nature and volume of Business Standard content services you consume on the digital platforms will vary according to the type of registration you choose, on the geography you reside or the offer you subscribe to.\r\n<br>\r\na) Free Registration\r\n<br>\r\nb) Premium Registration\r\n<br>\r\nc) Special Offers\r\n<br>\r\nd) Combo registrations with partners\r\n<br>\r\nThe details of the services and access offered for each account have been listed on\r\nwww.business-standard.com/subscription-cart/product\r\n<br>\r\nWe may in exceptional circumstances cease to provide subscription services. We will give you at least 7 days notice of this, if possible. If we do so, then we will have no further obligation to you.</p>'),
(3, 'Privacy Policy and Registration', 'forfun2', '<p>All information received by us from your registration on business-standard.com or other digital products of Business Standard will be used by Business Standard in accordance with our Privacy Policy. Kindly read the below mentioned details.\r\n<br>\r\nOn registration, we expect you to provide Business Standard with an accurate and complete information of the compulsory fields. We also expect you to keep the information secure, specifically access passwords and payment information. Kindly update the information periodically to keep your account relevant. Business Standard will rely on any information you provide to us.\r\n<br>\r\nEach registration is for a single user only. On registration, you will choose a user name and password (\"ID\"). You are not allowed to share your ID or give access to your account to anyone else. Business Standard Premium subscription does not allow multiple users on a network or within an organization to use the same ID.\r\n<br>\r\nOn knowledge, Business Standard may cancel or suspend your access to Business Standard premium services if it comes across you sharing your personal access without further obligation to you.\r\n<br>\r\nYou are responsible for all the use of business-standard.com premium service made by you or anyone else using your ID and for preventing unauthorised use of your ID. If you believe there has been any breach of security such as the disclosure, theft or unauthorised use of your ID or any payment information, you must notify Business Standard immediately by e-mailing us at assist@bsmail.in. We recommend that you do not select an obvious user password (such as your name) and that you change it regularly.\r\n<br>\r\nIf you provide Business Standard with an email address that will result in any messages Business Standard may send you being sent to you via a network or device operated or owned by a third party (e.g. your employer or college) then you promise that you are entitled to receive those messages. To ensure email\'s land in your inbox, you will add the bsmail receipt id to your safe list. You also agree that Business Standard may stop sending messages to you without notifying you.</p>'),
(4, 'Third Party Sites and Services', 'forfun3', '<p>Business-standard.com may contain links to other Internet websites or online and mobile services provided by independent third parties, including websites of our advertisers and sponsors (what we call \"Third Party Sites\"), either directly or through frames. Third Party Sites also include co-branded with Business Standard and so include Business Standard\'s trade marks.\r\n<br>\r\nIt is your decision whether you purchase or use any third party products or services made available on or via Third Party Sites and you should read Section 9 below carefully. Our Privacy Policy does not apply to Third Party Sites.\r\n<br>\r\nBusiness-Standard.com contains advertising and sponsorship. Advertisers and sponsors are responsible for ensuring that material submitted for inclusion on Business-standard.com complies with international and national law. Business Standard is not responsible for any error or inaccuracy in advertising, incorrect links or sponsorship material.\r\n<br>\r\nCopyright in any software that is made available for download from Business-standard.com belongs to Business Standard or its suppliers or contributors. Your use of the software is governed by the terms of any licence agreement that may accompany or be included with the software. Do not install or use any of this software unless you agree to such licence agreement. Business Standard is not responsible for any technical or other issues that may happen if you download third party software.</p>'),
(5, 'General', 'forfun4', '<p>You may not license or transfer any of your rights under these terms and conditions. We may transfer any of our rights or obligations under these terms and conditions to any individual, organization or entity but if we do so we will ensure that any company/individual/entity to whom we transfer our rights or obligations will continue to honour your rights under them. Any resultant changes to the terms and conditions will be intimated to you via email and updated on this website.\r\n<br>\r\nIf any provision of these terms and conditions is found to be invalid by any court having competent jurisdiction, the invalidity of that provision will not affect the validity of the remaining provisions of these terms and conditions, which will remain in full force and effect.\r\n<br>\r\nFailure by either party to exercise any right or remedy under these terms and conditions does not constitute a waiver of that right or remedy. Headings in these terms and conditions are for convenience only and will have no legal meaning or effect.\r\n<br>\r\nThese terms and conditions constitute the entire agreement between you and Business Standard Private Limited for your use of the Business Standard website, Business Standard mobile and other digital products and services from Business Standard. They supersede all previous communications, representations and arrangements, either written or oral.</p>'),
(6, 'Content ownership', 'forfun5', '<p>\r\nAll Content created and published on the digital platforms under the url https://www.business-standard.com the mobile browser site, applications, Business Standard E-paper belong to Business Standard Private Limited and its licensors who own all intellectual property rights (including copyright and database rights) No intellectual property rights in any of the content are transferred to you while you consume the content on this platform. \"BS\" and \"Business Standard\" are registered trade marks of Business Standard Private Limited and you may not use them without prior written permission from Business Standard. You are permitted to use the content on this platform only as set out in our Copyright Policy.</p>');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `boxes_section`
--
ALTER TABLE `boxes_section`
  ADD PRIMARY KEY (`box_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `customer_orders`
--
ALTER TABLE `customer_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `manufacturers`
--
ALTER TABLE `manufacturers`
  ADD PRIMARY KEY (`manufacturer_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `pending_orders`
--
ALTER TABLE `pending_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`p_cat_id`);

--
-- Indexes for table `shipping_status`
--
ALTER TABLE `shipping_status`
  ADD PRIMARY KEY (`s_id`);

--
-- Indexes for table `terms`
--
ALTER TABLE `terms`
  ADD PRIMARY KEY (`term_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `admin_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `boxes_section`
--
ALTER TABLE `boxes_section`
  MODIFY `box_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `customer_orders`
--
ALTER TABLE `customer_orders`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `manufacturers`
--
ALTER TABLE `manufacturers`
  MODIFY `manufacturer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `payment_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pending_orders`
--
ALTER TABLE `pending_orders`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `p_cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `shipping_status`
--
ALTER TABLE `shipping_status`
  MODIFY `s_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `terms`
--
ALTER TABLE `terms`
  MODIFY `term_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
