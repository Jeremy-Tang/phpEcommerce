<?php


$active='Home';
include("include/header.php");

?>
<head>
    <meta charset="UTF-8">
    <title>Home</title>
    <link rel="stylesheet" href="styles/style.css">
</head>
   
<div id="three-container"></div>
    <div id="instructions"></div>
    
        <script src='js/three.min.js'></script>
        <script src='js/TweenMax.min.js'></script>
        <script src='js/bas.js'></script>
        <script src='js/OrbitControls-2.js'></script>
        <script src="js/index.js"></script>
   
   <div id="advantages"><!-- advantages Begin -->
       <div class="container"><!-- container Begin -->
           <div class="same-height-row"><!-- same-height-row Begin -->
               
               <?php 
           
           $get_boxes = "select * from boxes_section";
           $run_boxes = mysqli_query($con,$get_boxes);

           while($run_boxes_section=mysqli_fetch_array($run_boxes)){

            $box_id = $run_boxes_section['box_id'];
            $box_title = $run_boxes_section['box_title'];
            $box_desc = $run_boxes_section['box_desc'];
           
           ?>
               
               
              
               <div class="col-sm-4"><!-- col-sm-4 Begin -->
                   
                   <div class="box same-height"><!-- box same-height Begin -->
                       
                       <div class="icon"><!-- icon Begin -->
                           
                           <i class="fa fa-heart"></i>
                           
                       </div><!-- icon Finish -->
                       
                       <h3><a href="#"><?php echo $box_title; ?></a></h3>
                       
                       <p> <?php echo $box_desc; ?> </p>
                       
                   </div><!-- box same-height Finish -->
                   
               </div><!-- col-sm-4 Finish -->
               
               <?php    } ?>
           </div><!-- same-height-row Finish -->  
       </div><!-- container Finish -->
   </div><!-- advantages Finish -->
   
   <div id="hot"><!-- hot Finish -->
       <div class="box"><!--box Finish -->
           <div class="container"><!--container Finish -->
               <div class="col-md-12"><!--col-md-12 Finish -->
                   
                   <h2>
                       Introduction
                   </h2>
                   
               </div><!--col-md-12 Finish -->
           </div><!--container Finish -->
       </div><!-- box Finish -->
   </div><!-- hot Finish -->
   <br> <br> <br> <br> <br> <br> <br> <br> <br> <br> <br> <br> <br> <br>
   <div class="box2">
       <div class="imgBx">
           <img src="images/admin1.jpg">
       </div>
       <div class="content">
           <h2>JY Store CEO's</h2>
           <p>Hi! guys i am the CEO of the JY company and also i hope customer can shop out ecommerce Site happy and enjoyable.Thanks You! Yap We Are The Top Commerce Site!</p>
           
       </div>
       
   </div>
   <br><br> <br> <br> <br> <br> <br> <br> <br> <br> <br> <br> <br> 
      <div class="box2">
       <div class="imgBx">
           <img src="images/admin2.jpg">
       </div>
       <div class="content">
           <h2>JY Store Project Manager</h2>
           <p>Hi! guys i am the CEO of the JY company and also i hope customer can shop out ecommerce Site happy and enjoyable.Thanks You! Yap We Are The Top Commerce Site!</p>
           
       </div>
       
   </div>
   
   <?php 
   include("include/footer.php");
   ?>

        
        <script src="js/jquery-331.min.js"></script>
        <script src="js/bootstrap-337.min.js"></script>

    </body>
</html>
