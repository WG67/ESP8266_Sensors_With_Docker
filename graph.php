<?php
    include_once('esp-database.php');
    if ($_GET["readingsCount"]){
      $data = $_GET["readingsCount"];
      $data = trim($data);
      $data = stripslashes($data);
      $data = htmlspecialchars($data);
      $readings_count = $_GET["readingsCount"];
    }
    // default readings count set to 20
    else {
      $readings_count = 20;
    }

    $last_reading = getLastReadings();
    $last_reading_temp = $last_reading["value1"];
    $last_reading_Turbidity = $last_reading["value2"];
    $last_reading_time = $last_reading["reading_time"];


    $min_temp = minReading($readings_count, 'value1');
    $max_temp = maxReading($readings_count, 'value1');
    $avg_temp = avgReading($readings_count, 'value1');

    $min_Turbidity = minReading($readings_count, 'value2');
    $max_Turbidity = maxReading($readings_count, 'value2');
    $avg_Turbidity = avgReading($readings_count, 'value2');
?>

<!DOCTYPE html>
<html>
    <style><?php include '/var/www/html/sensordata/style.css'; ?></style>

    <head><meta http-equiv="Content-Type" content="text/html; charset=utf-8">

        <link rel="stylesheet" type="text/css" href="esp-style.css">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    </head>
    <header class="header">
        <h1>ESP Command 📊 </h1>
        <form method="get">
            <input type="number" name="readingsCount" min="1" placeholder="Number of readings (<?php echo $readings_count; ?>)">
            <input type="submit" value="UPDATE">
        </form>
    </header>
<body>
    <p>Lastest reading: <?php echo $last_reading_time; ?></p>
    <section class="content">
	    <div class="box gauge--1">
	    <h3>TURBIDITY💧</h3>
              <div class="mask">
			  <div class="semi-circle"></div>
			  <div class="semi-circle--mask"></div>
			</div>
		    <p colspan="3"> <?php echo $last_reading_temp = $last_reading["value1"]; ?> PPM</p>
		    <table cellspacing="5" cellpadding="5">
		        <tr>
		            <th colspan="3">Turbidity <?php echo $readings_count; ?> readings</th>
	            </tr>
		        <tr>
		            <td>Min</td>
                    <td>Max</td>
                    <td>Average</td>
                </tr>
                <tr>
                    <td><?php echo $min_temp['min_amount']; ?> PPM</td>
                    <td><?php echo $max_temp['max_amount']; ?> PPM</td>
                    <td><?php echo round($avg_temp['avg_amount'], 2); ?> PPM</td>
                </tr>
            </table>
        </div>
        <div class="box gauge--2">
            <h3>TEMPRATURE🌡</h3>
            <div class="mask">
                <div class="semi-circle"></div>
                <div class="semi-circle--mask"></div>
            </div>
            <p  colspan="3"><?php echo $last_reading_temp = $last_reading["value2"]; ?> &deg;C</p>
            <table cellspacing="5" cellpadding="5">
                <tr>
                    <th colspan="3">Temperature <?php echo $readings_count; ?> readings</th>
                </tr>
                <tr>
                    <td>Min</td>
                    <td>Max</td>
                    <td>Average</td>
                </tr>
                <tr>
                    <td><?php echo $min_Turbidity['min_amount']; ?> &deg;C</td>
                    <td><?php echo $max_Turbidity['max_amount']; ?> &deg;C</td>
                    <td><?php echo round($avg_Turbidity['avg_amount'], 2); ?> &deg;C</td>
                </tr>
            </table>
        </div>
    </section>
<?php
    echo   '<h2> View Latest ' . $readings_count . ' Readings</h2>
            <table cellspacing="5" cellpadding="5" id="tableReadings">
                <tr>
                    <th>ID</th>
                    <th>Sensor</th>
                    <th>Location</th>
                    <th>Turbidity</th>
                    <th>Temprature</th>
                    <th>Value 3</th>
                    <th>Timestamp</th>
                </tr>';

    $result = getAllReadings($readings_count);
        if ($result) {
        while ($row = $result->fetch_assoc()) {
            $row_id = $row["id"];
            $row_sensor = $row["sensor"];
            $row_location = $row["location"];
            $row_value1 = $row["value1"];
            $row_value2 = $row["value2"];
            $row_value3 = $row["value3"];
            $row_reading_time = $row["reading_time"];


            echo '<tr>
                    <td>' . $row_id . '</td>
                    <td>' . $row_sensor . '</td>
                    <td>' . $row_location . '</td>
                    <td>' . $row_value1 . '</td>
                    <td>' . $row_value2 . '</td>
                    <td>' . $row_value3 . '</td>
                    <td>' . $row_reading_time . '</td>
                  </tr>';
        }
        echo '</table>';
        $result->free();
    }
?>

<script>
    var value1 = <?php echo $last_reading_temp; ?>;
    var value2 = <?php echo $last_reading_Turbidity; ?>;
    setTemperature(value1);
    setTurbidity(value2);

    function setTemperature(curVal){
    	//set range for Temperature in Celsius -5 Celsius to 38 Celsius
    	var minTemp = -5.0;
    	var maxTemp = 38.0;
        //set range for Temperature in Fahrenheit 23 Fahrenheit to 100 Fahrenheit
    	//var minTemp = 23;
    	//var maxTemp = 100;

    	var newVal = scaleValue(curVal, [minTemp, maxTemp], [0, 180]);
    	$('.gauge--1 .semi-circle--mask').attr({
    		style: '-webkit-transform: rotate(' + newVal + 'deg);' +
    		'-moz-transform: rotate(' + newVal + 'deg);' +
    		'transform: rotate(' + newVal + 'deg);'
    	});
    	$("#temp").text(curVal + ' ºC');
    }

    function setTurbidity(curVal){
    	//set range for Turbidity percentage 0 % to 100 %
    	var minTurbidity = 0;
    	var maxTurbidity = 100;

    	var newVal = scaleValue(curVal, [minTurbidity, maxTurbidity], [0, 180]);
    	$('.gauge--2 .semi-circle--mask').attr({
    		style: '-webkit-transform: rotate(' + newVal + 'deg);' +
    		'-moz-transform: rotate(' + newVal + 'deg);' +
    		'transform: rotate(' + newVal + 'deg);'
    	});
    	$("#Turbidity").text(curVal + ' %');
    }

    function scaleValue(value, from, to) {
        var scale = (to[1] - to[0]) / (from[1] - from[0]);
        var capped = Math.min(from[1], Math.max(from[0], value)) - from[0];
        return ~~(capped * scale + to[0]);
    }
</script>
</body>
</html>