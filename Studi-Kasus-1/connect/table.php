<html>
<head>
    <title>Table</title>
    <link rel="stylesheet" type="text/css" href="style.css">
    <link rel="stylesheet" type="text/css" href="../assets/css/bootstrap.css">
</head>
<body>
    <img class="mb-4" src="../assets/img/logo.png" width="120" height="95">
    <p id="date"></p>
    <table class="data-table">
        <thead>
            <tr>
                <th>No</th>
                <th>On</th>
                <th>Off</th>
                <th>Ack by</th>
                <th>Reason</th>
                <th>Description</th>
            </tr>
        </thead>
        <tbody>
            <?php
                include('koneksi.php');
                while ($row = mysqli_fetch_array($query))
                {
                echo '<tr>
                <td>'.$row['No'].'</td>
                <td>'.$row['On'].'</td>
                <td>'.$row['Off'].'</td>
                <td>'.$row['Ack by'].'</td>
                <td>'.$row['Reason'].'</td>
                <td>'.$row['Description'].'</td>
                </tr>';
            }?>
        </tbody>
    </table>
    <a href="../action-logout.php" class="btn btn-danger btn-lg">Logout</a>
    <a href="barchartsjs.php" class="btn btn-warning btn-lg">Graph</a>
</body>
</html>
<script>
    n =  new Date();
    y = n.getFullYear();
    m = n.getMonth() + 1;
    d = n.getDate();
    document.getElementById("date").innerHTML = m + "/" + d + "/" + y;
</script>
