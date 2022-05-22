<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sim Look-Up</title>
    <style>
        html, body {
            background-color: powderblue;
            height: 100%;
        }
        body {
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .main {
            
        }
        </style>
</head>
<body>
    <div class="main">
        <div>
        <form method="post">
            <input type="text" name="search-number" required/>
            <input type="submit" value="Search">
        </form>
        </div>
    </div>

    <?php
    if(isset($_POST['search-number'])){
        require "search.php";
        if($results > 0 ){
            echo $results['courier_name'];
        }else{
            echo "no result";
        }
    }
    ?>

</body>
</html>