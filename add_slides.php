<?php
session_start();
if(isset($_SESSION['username']))
{
?>

<?php include("header.php"); ?>

<?php include("left_sidebar.php"); ?>

<?php

include("config.php");

?>

        <div id="page-wrapper">

            <div class="container-fluid">

                <!-- Page Heading -->
                <div class="row">
                    <div class="col-lg-9">
                        <h1 class="page-header">
                            Dashboard <small>Add Slider</small>
                        </h1>
                        <ol class="breadcrumb">
                            <li class="active">
                                <i class="fa fa-dashboard"></i> Add Slider                            </li>
                        </ol>
                    </div>
                    <div class="col-lg-3">
                      <h1 class="page-header">
                          <a href="view_slides.php"><button class="btn btn-success">View Slider</button></a>
                      </h1>
                    </div>
                </div>
                <!-- /.row -->


				<br>


                                <!-- Add Slide form -->
                                <div class="row">
                                    <form action="" method="post" id="addProductForm" enctype="multipart/form-data">
                                       <div class="col-md-12">
                                              <center>Upload Slide Images<input type="file" name="slideImages[]" class="form-control" style="width:50%" multiple></center><br><br>
                                        </div>
                                        <div class="col-md-12">
                                              <center><input type="submit" value="Submit" name="submit" class="btn btn-success"></center><br><br>
                                        </div>
                                    </form>
                                </div>
                                <!-- /.row -->

                            </div>
                            <!-- /.container-fluid -->

                        </div>
                        <!-- /#page-wrapper -->

                    </div>
                    <!-- /#wrapper -->
<?php

if(isset($_POST['submit']))
{

$uploads_dir = 'slides/';

$imageArr = array();

foreach ($_FILES["slideImages"]["error"] as $key => $error) {

if ($error == UPLOAD_ERR_OK) {
    $tmp_name = $_FILES["slideImages"]["tmp_name"][$key];
    $name = $_FILES["slideImages"]["name"][$key];
    move_uploaded_file($tmp_name, "$uploads_dir/$name");
    array_push($imageArr,$name);
}

}


	 $imageArr=serialize($imageArr);


          $sql=mysqli_query($conn,"insert into slides(slide_images) values('$imageArr')");

          if($sql)
          {
                echo ("<script LANGUAGE='javascript'>
            		alert('Slides Added!');
            		window.location='view_slides.php';
            		</script>");

          }

          else
          {
                echo ("<script LANGUAGE='javascript'>
                alert('Something went wrong. Try again!');
                window.location='add_slides.php';
                </script>");
          }


}

?>


<?php include("footer.php"); ?>
<?php
}
else
{
   header("location:index.php");
}
?>
