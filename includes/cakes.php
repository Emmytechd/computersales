<div style="border: 4px solid black; width: 100%: padding: 1px;">
          <marquee behavior="alternate"­><h2 style="color: black; font-family: cursive; font-size: 40px;padding-top: 6px;padding-bottom: 0px;margin-bottom: 1px;">Ralph Computers Shop</h2></marquee>
     </div><br>

     <?php 
if (isset($_POST["add_to_cart"])) 
{
  $av = $_POST['av'];
$qq = $_POST["quant"];
  if ($av > $qq) {

  if (isset($_SESSION["cart"])) 
{
  $itemarrayid = array_column($_SESSION["cart"], "ids");
  if (!in_array($_GET["id"], $itemarrayid)) {
   
    $count=count($_SESSION["cart"]);
    $itemarray = array(
     'ids' => $_GET["id"],
     'name' => $_POST["hiddenname"],
     'price' => $_POST["hiddenprice"],
     'quantity' => $_POST["quant"]);
     $_SESSION["cart"][$count] = $itemarray;
    echo "<script>alert('Product is added to your cart!')</script>";
    echo "<script>window.location = 'index.php'</script>";
  }else{
    echo "<script>alert('Item Already Added')</script>";
    echo "<script>window.location = 'index.php'</script>";
  }
}
else
{
  $itemarray = array(
  'ids' => $_GET["id"], 
  'name' => $_POST["hiddenname"],
  'price' => $_POST["hiddenprice"],
  'quantity' => $_POST["quant"]);
  $_SESSION['cart'][0] = $itemarray;
  echo "<script>alert('Product is added to your cart!')</script>";
    echo "<script>window.location = 'index.php'</script>";
}
}else{
        echo '<script>alert("Invalid Quantity")</script>';
      echo '<script>window.location="index.php"</script>';
}
}


 ?>

<!DOCTYPE html>
<html>
<head>
  <title></title> 

</head>
<body>
 
<div class="row">

  <?php 
  $query = "SELECT * FROM tblproducts WHERE status='available' GROUP BY product_code";
$result = mysqli_query($db,$query);
if (mysqli_num_rows($result)>0) 
{
 while ($row=mysqli_fetch_array($result)) 
{
    $_SESSION['zero'] = $row["available"];
    $_SESSION['one'] = $row["product_code"];
if ($_SESSION['zero']==1) {
   $sqls = "UPDATE tblproducts SET status = 'Unavailable' WHERE product_code='".$_SESSION['one']."'";
     mysqli_query($db,$sqls)or die(mysqli_error($db));
}
   ?>
<div class="col-lg-3">
  <div class="card mb-3">
   <div class="card-body" style="background-image: url('<?php echo $row["img_location"]; ?>')"style="width: 100%">
          <form method="post" action="index.php?action=add&id=<?php echo $row["product_code"]; ?>">
         <center><img src="<?php echo $row["img_location"]; ?>" style="width: 100%">
         <h6 class="text-info"><?php echo $row["product_name"]; ?></h6>
         <h6 class="text-info"><?php echo $row["model"]; ?></h6>
         <h6 class="text-info">Available Qty:(<?php echo $row["available"]; ?>)</h6>
         <h6 class="text-danger">N <?php echo $row["selling_price"]; ?>.00</h6>
       <input class="form-control" type="hidden" placeholder="Quantity" name="quant" value="1">
       <input class="form-control" type="hidden" name="av" value="<?php echo $row["available"]; ?>">
       <input class="form-control" type="hidden" name="hiddenname" value="<?php echo $row["product_name"]; ?>">
       <input class="form-control" type="hidden" name="hiddenprice" value="<?php echo $row["selling_price"]; ?>">
       <input class="btn btn-success" type="submit" name="add_to_cart" value="Add to Cart" style="margin-top: 10px"></center>
     </form>
    </div>
  </div>
</div>
<?php
}
}
?>
</div>

</body>
</html>