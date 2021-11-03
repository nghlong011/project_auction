<?php
    
    $db = mysqli_connect('localhost','root','','shop');
    if(!$db){
        die("Kết nối thất bại !");
    }
    if(isset($_GET['ItemID'])){
        $ItemID = $_GET['ItemID'];
        $sql2 = "SELECT * from item where ItemID='$ItemID'";
        $result2 = mysqli_query($db,$sql2);
        $infoItem = mysqli_fetch_array($result2);
        echo $infoItem['CategoryID'];
        if($infoItem['CategoryID']){
            $sql = "DELETE FROM item WHERE ItemID='$ItemID'";
            $result = mysqli_query($db,$sql);
            
            
            if($result){
                echo "Xóa thành công";
            }else{
                echo "Xóa thất bại";
            }
        }

        
        
        mysqli_close($db);

        header('location:userItems.php?CategoryID='.$infoItem['CategoryID']);
        
    }



?>