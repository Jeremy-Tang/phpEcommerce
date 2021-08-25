<?php 
    
    if(!isset($_SESSION['admin_email'])){
        
        echo "<script>window.open('login.php','_self')</script>";
        
    }else{

?>

<div class="row"><!-- row 1 begin -->
    <div class="col-lg-12"><!-- col-lg-12 begin -->
        <ol class="breadcrumb"><!-- breadcrumb begin -->
            <li class="active"><!-- active begin -->
                
                <i class="fa fa-dashboard"></i> Dashboard / View Shipping Status
                
            </li><!-- active finish -->
        </ol><!-- breadcrumb finish -->
    </div><!-- col-lg-12 finish -->
</div><!-- row 1 finish -->

<div class="row"><!-- row 2 begin -->
    <div class="col-lg-12"><!-- col-lg-12 begin -->
        <div class="panel panel-default"><!-- panel panel-default begin -->
            <div class="panel-heading"><!-- panel-heading begin -->
               <h3 class="panel-title"><!-- panel-title begin -->
               
                   <i class="fa fa-tags"></i>  View Shipping Status
                
               </h3><!-- panel-title finish --> 
            </div><!-- panel-heading finish -->
            
            <div class="panel-body"><!-- panel-body begin -->
                <div class="table-responsive"><!-- table-responsive begin -->
                    <table class="table table-striped table-bordered table-hover"><!-- table table-striped table-bordered table-hover begin -->
                        
                        <thead><!-- thead begin -->
                            <tr><!-- tr begin -->
                                <th> ON: </th>
                                <th> Invoice No: </th>
                                <th> Qty: </th>
                                <th> Size: </th>
                                <th> Order Date:</th>
                                <th> Paid / Unpaid: </th>
                                <th> shipping Status: </th>
                                <th> Edit Status: </th>
                            </tr><!-- tr finish -->
                        </thead><!-- thead finish -->
                        
                        <tbody><!-- tbody begin -->
                            
                            <?php 

                                $get_orders = "select * from customer_orders where order_status ='Complete'";

                                $run_orders = mysqli_query($con,$get_orders);

                                $i = 0;

                                while($row_orders = mysqli_fetch_array($run_orders)){

                                    $order_id = $row_orders['order_id'];

                                    $invoice_no = $row_orders['invoice_no'];

                                    $qty = $row_orders['qty'];

                                    $size = $row_orders['size'];

                                    $order_date = substr($row_orders['order_date'],0,11);

                                    $order_status = $row_orders['order_status'];

                                    $shipping_status = $row_orders['s_id'];

                                    $i++;
                            
                            ?>
                            
                            <tr><!-- tr begin -->
                                <th> <?php echo $i; ?> </th>
                                <td> <?php echo $invoice_no; ?> </td>
                                <td> <?php echo $qty; ?> </td>
                                <td> <?php echo $size; ?> </td>
                                <td> <?php echo $order_date; ?> </td>
                                <td> <?php echo $order_status; ?> </td>
                                <td> <?php echo $shipping_status; ?> </td>
                                <td> 
                                     
                                     <a href="admin_menu.php?edit_fufill=<?php echo $order_id; ?>">
                                     
                                        <i class="fa fa-trash-o"></i> Edit
                                    
                                     </a> 
                                     
                                </td>
                            </tr><!-- tr finish -->
                            
                            <?php } ?>
                            
                        </tbody><!-- tbody finish -->
                        
                    </table><!-- table table-striped table-bordered table-hover finish -->
                </div><!-- table-responsive finish -->
            </div><!-- panel-body finish -->
            
        </div><!-- panel panel-default finish -->
    </div><!-- col-lg-12 finish -->
</div><!-- row 2 finish -->

<?php } ?>