<?php
        $product_name = 'product_title';
        $output = '';


// connect to database
        $con = mysqli_connect("localhost", "root", "", "jy_store");

        if (isset($_POST['submit'])) {
            $search = mysqli_real_escape_string($con, $_POST['search']);
            $sql = "SELECT * FROM products WHERE product_title LIKE '%$search%'";
            $result = mysqli_query($con, $sql);
            $queryResults = mysqli_num_rows($result);

            echo "There are " . $queryResults . " results!" . "<br>";

            if ($queryResults > 0) {
                while ($row = mysqli_fetch_assoc($result)) {

                    echo ".<img src='admin_area/product_images/" . $row['product_img1'] . "'width='30' height='30' > ";
                    
                    echo $row["product_title"] . "RM" . $row["product_price"] . "<br>";
                }
            } else {
                echo "There are no results matching your search.";
            }
        }
        ?>