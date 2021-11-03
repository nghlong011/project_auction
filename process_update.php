<?php 
session_start(); 

if(!isset($_SESSION['userid'])){
    header('Location: index.php');
}  
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="robots" content="all,follow">
    <meta name="googlebot" content="index,follow,snippet,archive">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Obaju e-commerce template">
    <meta name="author" content="Ondrej Svestka | ondrejsvestka.cz">
    <meta name="keywords" content="">

    <title>
        Đấu giá TLU
    </title>

    <meta name="keywords" content="">

    <link href='http://fonts.googleapis.com/css?family=Roboto:400,500,700,300,100' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css" integrity="sha512-YWzhKL2whUzgiheMoBFwW8CKV4qpHQAEuvilg9FAn5VJUDwKZZxkJNuGM4XkWuk94WCrrwslk8yWNGmY1EduTA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    
    <!-- styles -->
    <link href="css/font-awesome.css" rel="stylesheet">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/animate.min.css" rel="stylesheet">
    <link href="css/owl.carousel.css" rel="stylesheet">
    <link href="css/owl.theme.css" rel="stylesheet">

    <!-- theme stylesheet -->
    <link href="css/style.default.css" rel="stylesheet" id="theme-stylesheet">

    <!-- your stylesheet with modifications -->
    <link href="css/custom.css" rel="stylesheet">

    <link rel="stylesheet" href="css/update.css">

    <script src="js/respond.min.js"></script>

    <link rel="shortcut icon" href="favicon.png">
</head>
<body>
    <?php 
        ob_start();
        include("header.php");
        $ItemID=$_GET["ItemID"];
        $db = mysqli_connect('localhost','root','','shop');
        if(!$db){
            die('Kết nối thất bại');
        }
        $sql = "SELECT * FROM item where ItemID='$ItemID'";
        $result = mysqli_query($db,$sql);
        $info = mysqli_fetch_array($result);

    ?>
    <div class="content d-flex">
        <i class="fas fa-edit fa-2x"></i>
        <h2>Chỉnh sửa thông tin</h2>
    </div>
    <form method="POST" action="" class="form">
        <div class="info">
            <label for="">
                <span>Tên sản phẩm: </span>
                <input type="text" value="<?php echo $info['ItemName']; ?>" name="ItemName">
            </label><br/>
            <label for="">
                <span>Giá khởi điểm: </span>
                <input type="text" value="<?php echo $info['StartingPrice']; ?>" name="StartingPrice">
            </label><br/>
            <label for="">
                <span>Giá mua đứt: </span>
                <input type="text" value="<?php echo $info['ExpectedPrice']; ?>" name="ExpectedPrice">
            </label><br/>
            <label for="">
                <span>Giá đấu giá: </span>
                <input type="text" value="<?php echo $info['CurrentPrice']; ?>" name="CurrentPrice">
            </label><br/>
            <label for="">
                <span >Thông tin: </span>
                <textarea type="text" name="Description" cols="40" rows="6"><?php echo $info['Description']; ?></textarea>
            </label><br/>
            <label for="">
                <span>Thời gian kết thúc: </span>
                <input type="datetime-local" value="<?php echo $info['EndTime']; ?>" name="EndTime">
            </label><br/>
            <input type="submit" value="Thay đổi" name="update-btn" class="update-btn">

            <?php
                if(isset($_POST['update-btn'])){
                    $ItemID = $_GET['ItemID'];
                    $ItemName = $_POST['ItemName'];
                    $StartingPrice = $_POST['StartingPrice'];
                    $ExpectedPrice = $_POST['ExpectedPrice'];
                    $CurrentPrice = $_POST['CurrentPrice'];
                    $Description = $_POST['Description'];
                    $EndTime = $_POST['EndTime'];
                    
                    $db = mysqli_connect('localhost','root','','shop');
                    if(!$db){
                        die('Kết nối thất bại');
                    }
                    $sql2 = "UPDATE `item` SET ItemName='$ItemName',StartingPrice = '$StartingPrice', ExpectedPrice='$ExpectedPrice', CurrentPrice='$CurrentPrice', Description='$Description', EndTime='$EndTime' WHERE ItemID='$ItemID'";
                    if(mysqli_query($db,$sql2)){
                        echo "Thay đổi thành công";
                    }else{
                        echo "Thay đổi thất bại";
                    }
                    mysqli_close($db);

                    header('location:userItems.php?CategoryID='.$info['CategoryID']);
                }

            ?>
        </div>
    </form>
    
    <?php include 'footer.php';?>
    


    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

    <script src="js/jquery-1.11.0.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.cookie.js"></script>
    <script src="js/waypoints.min.js"></script>
    <script src="js/modernizr.js"></script>
    <script src="js/bootstrap-hover-dropdown.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/front.js"></script>
</body>
</html>
