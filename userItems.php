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

    <script src="js/respond.min.js"></script>

    <link rel="shortcut icon" href="favicon.png">



</head>

<body>

        <?php $db = mysqli_connect('localhost','root','','shop')
            or die('Error connecting to MySQL server.'); 

            $query1 = "SELECT * FROM category ";
            $result1 = mysqli_query($db, $query1);
            $categories = mysqli_fetch_array($result1);


             include 'header.php';?>

             <?php  
                $userID=$_SESSION['userid'];
             ?>




    <div id="all">

        <div id="content">
            <div class="container">

                <div class="col-md-12">

                    <ul class="breadcrumb">
                        <li><a href="#">Trang chủ</a>
                        </li>
                        <li>Admin</li>
                    </ul>

                </div>

                <div class="col-md-3">
                    <!-- *** MENUS AND FILTERS ***
 _________________________________________________________ -->
                   <div class="panel panel-default sidebar-menu">

                        <div class="panel-heading">
                            <h3 class="panel-title">Thể loại</h3>
                        </div>

                        <div class="panel-body">
                            <ul class="nav nav-pills nav-stacked category-menu">
                            <?php
                             $result1 = mysqli_query($db, $query1);
                             $categories = mysqli_fetch_array($result1);
                             
                             while($categories) { 
                        
                               ?>
                    
                                <li>
                                    <a href="userItems.php?CategoryID=<?php echo $categories['CategoryID'] ?>"><?php echo $categories['Category'];?> </a>
                                    
                                </li>
                                <?php $categories = $result1->fetch_assoc();} ?>
                                
                            

                            </ul>

                        </div>
                    </div>


                    <!-- *** MENUS AND FILTERS END *** -->

                    <div class="banner">
                        <a href="#">
                            <img src="img/banner.jpg" alt="sales 2014" class="img-responsive">
                        </a>
                    </div>
                </div>

                <div class="col-md-9">
                    <div class="box">
                        <h1>Admin</h1>
                        <p>Quản lý danh mục sản phẩm</p>
                    </div>
                    
                    <?php
                        $idItem = $_GET['CategoryID'];

                    ?>

                    <?php
                        if($idItem!='admin'){
                            $query2="SELECT * FROM item where CategoryID = $idItem";
                            $result2 = mysqli_query($db, $query2);
                            $infoItem = mysqli_fetch_array($result2);
                            ?>
                            <a href="process_create.php"><button class="create-btn">+ Thêm mới</button></a>
                            <table class="table table-bordered tableNew">
                                    <thead class="">
                                        <tr>
                                            <th scope="col" width="1%">ID</th>
                                            <th scope="col" width="14%">Tên Sản phẩm</th>
                                            <th scope="col" width="13%">Giá khởi điểm</th>
                                            <th scope="col" width="13%">Giá mua đứt</th>
                                            <th scope="col" width="35%">Thông tin</th>
                                            <th scope="col" width="13%">Ngày kết thúc</th>
                                            <th scope="col" width="11%">Chức năng</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php
                                        $i=1;
                                        while($infoItem){
                                        ?>
                                        <tr>
                                            <th scope="row"><?php echo $i; ?> </th>
                                            <td><?php echo $infoItem['ItemName']; ?> </td>
                                            <td><?php echo $infoItem['StartingPrice']; ?> </td>
                                            <td><?php echo $infoItem['ExpectedPrice']; ?> </td>
                                            <td><?php echo $infoItem['Description']; ?> </td>
                                            <td><?php echo $infoItem['EndTime']; ?> </td>
                                            <td class="d-flex">
                                                <a href="process_delete.php?ItemID=<?php echo $infoItem['ItemID']; ?>"><button style="margin-left:4px;"><i class="fas fa-trash-alt"></i></button></a>
                                                <a href="process_update.php?ItemID=<?php echo $infoItem['ItemID']; ?>"><button><i class="fas fa-edit"></i></button></a>
                                            </td>
                                        </tr>
                                        <?php
                                            $infoItem = mysqli_fetch_array($result2);
                                            $i++;
                                        }
                                        ?>
                                    </tbody>
                                </table>

                        <?php
                        }
                        else{
                            $query2="SELECT * FROM item";
                            $result2 = mysqli_query($db, $query2);
                            $infoItem = mysqli_fetch_array($result2);
                            ?>
                                <a href="process_create.php"><button class="create-btn">+ Thêm mới</button></a>
                                <table class="table table-bordered tableNew">
                                    <thead class="">
                                        <tr>
                                        <th scope="col" width="1%">ID</th>
                                            <th scope="col" width="14%">Tên Sản phẩm</th>
                                            <th scope="col" width="13%">Giá khởi điểm</th>
                                            <th scope="col" width="13%">Giá mua đứt</th>
                                            <th scope="col" width="35%">Thông tin</th>
                                            <th scope="col" width="13%">Ngày kết thúc</th>
                                            <th scope="col" width="11%">Chức năng</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php
                                        $i=1;
                                        while($infoItem){
                                        ?>
                                        <tr>
                                            <th scope="row"><?php echo $i; ?> </th>
                                            <td><?php echo $infoItem['ItemName']; ?> </td>
                                            <td><?php echo $infoItem['StartingPrice']; ?> </td>
                                            <td><?php echo $infoItem['ExpectedPrice']; ?> </td>
                                            <td><?php echo $infoItem['Description']; ?> </td>
                                            <td><?php echo $infoItem['EndTime']; ?> </td>
                                            <td class="d-flex">
                                                <a href="process_delete.php?ItemID=<?php echo $infoItem['ItemID']; ?>"><button style="margin-left:4px;"><i class="fas fa-trash-alt"></i></button></a>
                                                <a href="process_update.php?ItemID=<?php echo $infoItem['ItemID']; ?>"><button><i class="fas fa-edit"></i></button></a>
                                            </td>
                                        </tr>
                                        <?php
                                            $infoItem = mysqli_fetch_array($result2);
                                            $i++;
                                        }
                                        ?>
                                    </tbody>
                                </table>
                        <?php
                        }
                        ?>


                </div>

            </div>
            <!-- /.container -->
        </div>
        <!-- /#content -->


        <?php include 'footer.php';?>



    </div>
    <!-- /#all -->


    

    <!-- *** SCRIPTS TO INCLUDE ***
 _________________________________________________________ -->
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