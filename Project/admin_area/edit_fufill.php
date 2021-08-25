<?php 
    
    if(!isset($_SESSION['admin_email'])){
        
        echo "<script>window.open('login.php','_self')</script>";
        
    }else{

?>

<?php 

    if(isset($_GET['edit_fufill'])){
        
        $edit_id = $_GET['edit_fufill'];
        
        $get_order = "select * from customer_orders where order_id='$edit_id'";
        
        $run_edit = mysqli_query($con,$get_order);
        
        $row_edit = mysqli_fetch_array($run_edit);
        
        $order_id = $row_edit['order_id'];
        
        $s_id = $row_edit['s_id'];
        
    }
    
        $get_status = "select * from shipping_status where s_id='$s_id'";
        
        $run_status = mysqli_query($con,$get_status);
        
        $row_status = mysqli_fetch_array($run_status);
        
        $status_id = $row_status['s_id'];
        
        $status_title = $row_status['s_title'];

?>

<div class="row"><!-- row 1 begin -->
    <div class="col-lg-12"><!-- col-lg-12 begin -->
        <ol class="breadcrumb"><!-- breadcrumb begin -->
            <li>
                
                <i class="fa fa-dashboard"></i> Dashboard / Edit Shipping Status
                
            </li>
        </ol><!-- breadcrumb finish -->
    </div><!-- col-lg-12 finish -->
</div><!-- row 1 finish -->

<div class="row"><!-- row 2 begin -->
    <div class="col-lg-12"><!-- col-lg-12 begin -->
        <div class="panel panel-default"><!-- panel panel-default begin -->
            <div class="panel-heading"><!-- panel-heading begin -->
                <h3 class="panel-title"><!-- panel-title begin -->
                
                    <i class="fa fa-pencil fa-fw"></i> Edit Category
                
                </h3><!-- panel-title finish -->
            </div><!-- panel-heading finish -->
            
            <div class="panel-body"><!-- panel-body begin -->
                <form action="" class="form-horizontal" method="post" enctype="multipart/form-data"><!-- form-horizontal begin -->
                    
                    
                   
                   <div class="form-group"><!-- form-group Begin -->
                       
                      <label class="col-md-3 control-label"> Shipping Status </label> 
                      
                      <div class="col-md-6"><!-- col-md-6 Begin -->
                          
                          <select name="shipping_status" class="form-control"><!-- form-control Begin -->

                              <option disabled value="Select Status">Select Status</option>
                              
                              <option selected value="<?php echo $status_id; ?>"> <?php echo $status_title; ?> </option>
                              
                              <?php 
                              
                              $get_status = "select * from shipping_status";
                              $run_status = mysqli_query($con,$get_status);
                              
                              while ($row_status=mysqli_fetch_array($run_status)){
                                  
                                  $status_id = $row_status['s_id'];
                                  $status_title = $row_status['s_title'];
                                  
                                  echo "
                                  
                                  <option value='$status_id'> $status_title </option>
                                  
                                  ";
                                  
                              }
                              
                              ?>
                              
                          </select><!-- form-control Finish -->
                          
                      </div><!-- col-md-6 Finish -->
                       
                   </div><!-- form-group Finish -->
                
                
                <div class="form-group"><!-- form-group Begin -->
                       
                      <label class="col-md-3 control-label"></label> 
                      
                      <div class="col-md-6"><!-- col-md-6 Begin -->
                          
                          <input name="update" value="Update Shipping Status" type="submit" class="btn btn-primary form-control">
                          
                      </div><!-- col-md-6 Finish -->
                       
                   </div><!-- form-group Finish -->
                   
                    </form><!-- form-horizontal finish -->
                
            </div><!-- panel-body finish -->
            
        </div><!-- panel panel-default finish -->
    </div><!-- col-lg-12 finish -->
</div><!-- row 2 finish -->

<?php  

          if(isset($_POST['update'])){
              
              $status_id = $_POST['shipping_status'];
                
                $update_shipping = "update customer_orders set s_id='$status_id' where order_id='$order_id'";
                
                $run_shipping = mysqli_query($con,$update_shipping);
                
                if($run_shipping){
                    
                    echo "<script>alert('Your shiiping status Has Been Updated')</script>";
                    
                    echo "<script>window.open('admin_menu.php?view_fufill','_self')</script>";
                    
                }
          }

              

?>

<?php } ?>