<div id="footer"><!--footer Begin-->
    <div class="container"><!--container Begin-->
        <div class="row"><!--row Begin-->
            <div class="col-sm-6 col-md-3"><!--col-sm-6 col-md-3 Begin-->
                
                <h4 style="color: #F20202">Pages</h4>
                
                <ul><!--ul Begin-->
                    <li><a href="../cart.php">Shopping Cart</a></li>
                    <li><a href="../contact.php">Contact us</a></li>
                    <li><a href="../shop.php">Shop</a></li>
                    <li><a href="../customer/my_account.php">My Account</a></li>
                </ul><!--ul Begin-->
                
                <hr>
                
                <h4 style="color: #F20202">User Section</h4>
                
                
                    <ul><!--ul Begin-->
                    <?php 
                           
                           if(!isset($_SESSION['customer_email'])){
                               
                               echo"<a href='../checkout.php'>Login</a>";
                           }else{
                               
                               echo"<a href='my_account.php?my_orders'>My Account</a>";
                           }
                           
                           ?>
                    
                        <li>
                            <?php 
                           
                           if(!isset($_SESSION['customer_email'])){
                               
                               echo"<a href='../checkout.php'>Login</a>";
                           }else{
                               
                               echo"<a href='my_account.php?edit_account'>Edit Account</a>";
                           }
                           
                           ?>
                            
                        </li>
                        <li><a href="../terms.php">Terms & Conditions</a></li>
                </ul><!--ul Begin-->
                
                <hr class="hidden-md hidden-lg hidden-sm">
                
            </div><!--col-sm-6 col-md-3 Begin-->
            
            <div class="col-sm-6 col-md-3"><!--col-sm-6 col-md-3 Begin-->
                
                <h4 style="color: #F20202">Tops Products Categories</h4>
                
                <ul><!--ul Begin-->
                    
                                        <?php 
                    
                        $get_p_cats = "select * from product_categories";
                    
                        $run_p_cats = mysqli_query($con,$get_p_cats);
                    
                        while($row_p_cats=mysqli_fetch_array($run_p_cats)){
                            
                            $p_cat_id = $row_p_cats['p_cat_id'];
                            
                            $p_cat_title = $row_p_cats['p_cat_title'];
                            
                            echo "
                            
                                <li>
                                
                                    <a href='../shop.php?p_cat=$p_cat_id'>
                                    
                                        $p_cat_title
                                    
                                    </a>
                                
                                </li>
                            
                            ";
                            
                        }
                    
                    ?>
                    
                </ul><!--ul Begin-->
                
                <hr class="hidden-md hidden-lg">
            </div><!--col-sm-6 col-md-3 Finish-->
            
            
            <div class="col-sm-6 col-md-3"><!--col-sm-6 col-md-3 Begin-->
                
                <h4 style="color: #F20202">Find Us:</h4>
                
                <p style="color: #848484"><!--p Begin-->
                    <strong>JY Store Sdn.Bhd</strong>
                    <br/>MidValley Mega Mall
                    <br/>Selangor,Malaysia
                    <br/>03-3348-6801
                    <br/>JYstore@gmail.com
                    <br/><strong>MrTang/MrYeoh</strong>
                </p><!--p Finish-->
                
                <a href="../contact.php">Check Our Contact Page</a>
                
                <hr class="hidden-md hidden-lg">
            </div><!--col-sm-6 col-md-3 Finsih-->
            
            <div class="col-sm-6 col-md-3"><!--col-sm-6 col-md-3 Begin-->
                
                
                <h4 style="color: #F20202">Keep In Touch</h4>
                
                <p class="social">
                    
                    <a href="https://www.facebook.com/confessionstarc" class="fa fa-facebook"></a><br>
                    <a href="https://www.youtube.com/channel/UCqjsPpVnwjCRT5mgAgFo1ng" class="fa fa-youtube"></a><br>
                    <a href="https://www.instagram.com/tarc_confessions/?hl=zh-cn" class="fa fa-instagram"></a><br>
                    <a href="https://www.google.com/search?q=google+plus&oq=google+plus&aqs=chrome..69i57j0l7.4551j0j7&sourceid=chrome&ie=UTF-8" class="fa fa-google-plus"></a><br>                  
                    <a href="https://www.gmail.com" class="fa fa-envelope"></a>
                    
                </p>
                    
            </div><!--col-sm-6 col-md-3 Finsih-->
        </div><!--row Begin-->
    </div><!--container Finish-->
    
</div><!--footer Finish-->

<div id="copyright"><!--copyright Begin-->
    <div class="container"><!--container Begin-->
        <div class="col-md-6"><!--col-md-6 Begin-->
            
            <p class="pull-left">&copy; 2020 JY Store All Right Reserve</p>
            
        </div><!--col-md-6 Finish-->
        <div class="col-sm-6"><!--col-md-6 Begin-->
            <p class="pull-right">&hearts; Kin Seng & Xiong Keat</p>
        </div><!--col-md-6 Finish-->
    </div><!--container Finish-->
</div><!--copyright Finish-->
