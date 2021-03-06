<?php
include_once('mapsKey.php');

include_once('CloudSQL.php');
// $db = new mysqli('localhost', 'root', 'root', 'northeastholiday');

$db->select_db('northeastholiday');
$result = $db->query("SELECT * FROM attractions");
?>
<!DOCTYPE html>
<html>
	<head>
		<style type="text/css">
			body, html, #map-canvas {
				height: 100%;
				margin: 0;
				padding: 0;
			}
			h2 {
				font-size: 14px;
			}
			ul {
				display: inline-block;
				margin: 0;
				padding: 0;
			}
			ul li {
				list-style: none inside;
				display: block;
				float: left;
				margin: 0 10px;
			}
		</style>
		<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=<?php echo $mapsApiKey;?>"></script>
		<script type="text/javascript">
            function initialize() {
                var mapOptions = {
                    center: {lat: 55.0023721, lng: -1.6568434},
                    zoom: 9
                };
				
                var map = new google.maps.Map(document.getElementById('map-canvas'), mapOptions);
				
				<?php
				for ($i = 0; $i < $result->num_rows; $i++) {
					$place = $result->fetch_assoc();

					switch ($place['type']) {
						case 'Art Gallery':
							$image = 'img/art.png';
							break;
						case 'Beach':
							$image = 'img/umbrella.png';
							break;
						case 'Castle':
							$image = 'img/tower.png';
							break;
						case 'Cathedral':
							$image = 'img/church.png';
							break;
						case 'Monument':
							$image = 'img/library.png';
							break;
						case 'Museum':
							$image = 'img/house.png';
							break;
						case 'Outdoors':
							$image = 'img/tree.png';
							break;
						case 'Railway':
							$image = 'img/train.png';
							break;
						case 'Roman':
							$image = 'img/monument.gif';
							break;
					}
					?>

					var marker = new google.maps.Marker({
						position: new google.maps.LatLng(<?= str_replace(' ', '', $place['latlng']);?>),
						map: map,
						title: "<?= addslashes($place['name']);?>",
						icon: "<?= $image;?>"
					});

					var infowindow = new google.maps.InfoWindow();

					google.maps.event.addListener(marker, 'click', function() {
						infowindow.setContent("<h2><?= $place['name'];?></h2><ul><li>Cost: <b><?= ((float)$place['price'] > 0)? '&pound;' . $place['price'] : 'Free' ;?></b></li><li>Trip Advisor: <b><?= $place['rating'];?>%</b></li></ul>");
						infowindow.open(map, this);
					});
							
					<?php
				}
				?>

				var marker = new google.maps.Marker({
					position: new google.maps.LatLng(55.517351,-1.633380),
					map: map,
					title: "Caravan",
					icon: "img/caravan.png"
				});
				var circle = new google.maps.Circle({
					map: map,
					center: new google.maps.LatLng(55.517351,-1.633380),
					radius: 8050 // Meters
				});

				var marker = new google.maps.Marker({
					position: new google.maps.LatLng(54.969868,-2.253040),
					map: map,
					title: "Carvan",
					icon: "img/caravan.png"
				});
				var circle = new google.maps.Circle({
					map: map,
					center: new google.maps.LatLng(54.969868,-2.253040),
					radius: 8050 // Meters
				});
            }
            google.maps.event.addDomListener(window, 'load', initialize);
		</script>
	</head>
	<body>
		<div id="map-canvas"></div>
	</body>
</html>	