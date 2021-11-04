<!DOCTYPE html>
<html>
<head>
	<title></title>
	<script type="text/javascript" src="../assets/js/Chart.js"></script>
    <link rel="stylesheet" type="text/css" href="../assets/css/bootstrap.css">
</head>
<body>
	<style type="text/css">
	body{
		padding: 5%;
	}
	</style>

	<?php 
	    include('koneksi.php');
        $Nomer = "";
        $Reason = "";
        while ($row = mysqli_fetch_array($query)) {
            $No=$row['No'];
            $Nomer .= "$No". ", ";

            $Rea=$row['Reason'];
            $Reason .= "$Rea". ", ";
         }
	?>

    <img class="mb-4" src="../assets/img/logo.png" width="120" height="95">
    <p id="date" style="text-align: right;"></p>

	<div style="width: 800px;margin: 0px auto;">
		<canvas id="myChart"></canvas>
	</div>

    <a href="table.php" class="btn btn-warning btn-lg" style="margin: 20px;">Table</a>

	<script>
		var ctx = document.getElementById("myChart").getContext('2d');
		var myChart = new Chart(ctx, {
			type: 'bar',
			data: {
                labels: [<?php echo $Nomer; ?>],
                datasets: [{
                    label:'Trend Of Reason',
                    data: [<?php echo $Reason; ?>]
                }]
            },
			options: {
				scales: {
					yAxes: [{
						ticks: {
							beginAtZero:true
						}
					}]
				}
			}
		});
	</script>
</body>
</html>

<script>
    n =  new Date();
    y = n.getFullYear();
    m = n.getMonth() + 1;
    d = n.getDate();
    document.getElementById("date").innerHTML = m + "/" + d + "/" + y;
</script>