<?php
    $row = $db->get_row("SELECT * FROM tb_tempat WHERE id_tempat='$_GET[ID]'");
?>
<div class="page-header">
    <h1><?=$row->nama_tempat?></h1>
</div>
<div class="row">
    <div class="col-md-6">
        <h3>Data Kemiskinan di <?=$row->nama_tempat?></h3>
        <?php  if ($row->nama_tempat == "Lampung Barat") {
                    $get_db = "tb_lampung_barat";
                } else if ($row->nama_tempat == "Tanggamus") {
                    $get_db = "tb_tanggamus";
                } else if ($row->nama_tempat == "Lampung Selatan") {
                    $get_db = "tb_lampung_selatan";
                } else if ($row->nama_tempat == "Lampung Timur") {
                    $get_db = "tb_lampung_timur";
                } else if ($row->nama_tempat == "Lampung Tengah") {
                    $get_db = "tb_lampung_tengah";
                } else if ($row->nama_tempat == "Lampung Utara") {
                    $get_db = "tb_lampung_utara";
                } else if ($row->nama_tempat == "Way Kanan") {
                    $get_db = "tb_way_kanan";
                } else if ($row->nama_tempat == "Tulang Bawang") {
                    $get_db = "tb_tulang_bawang";
                } else if ($row->nama_tempat == "Pesawaran") {
                    $get_db = "tb_pesawaran";
                } else if ($row->nama_tempat == "Pringsewu") {
                    $get_db = "tb_pringsewu";
                } else if ($row->nama_tempat == "Mesuji") {
                    $get_db = "tb_mesuji";
                } else if ($row->nama_tempat == "Tulang Bawang Barat") {
                    $get_db = "tb_tulang_bawang_barat";
                } else if ($row->nama_tempat == "Pesisir Barat") {
                    $get_db = "tb_pesisir_barat";
                } else if ($row->nama_tempat == "Bandar Lampung") {
                    $get_db = "tb_bandar_lampung";
                } else if ($row->nama_tempat == "Metro") {
                    $get_db = "tb_metro";
                }
        ?>

        <table border="2px" id="table">
                <?php
                    $sql = "SELECT * FROM $get_db";
                    $outs = $db->get_results($sql);                
                ?>
                <tr>
                    <td>   </td>
                    <td>Garis Kemiskinan(Rupiah/Kapita/Bulan)</td>
                    <td>Jumlah Penduduk Miskin(Ribu)</td>
                    <td>Presentase Kemiskinan</td>
                        <?php foreach($outs as $out): ?>
                </tr>
                <tr>
                    <td><?=$out->id_kemiskinan?></td>
                    <td><?=$out->garis_kemiskinan?></td>
                    <td><?=$out->jumlah_penduduk_miskin?></td>
                    <td><?=$out->presentase_kemiskinan?></td>
            <?php endforeach;?>
                </tr>
        </table>
    </div>
    <div class="col-md-6">
        <p>
            <a href="?m=tempat_list" class="btn btn-primary btn-sm"><span class="glyphicon glyphicon-chevron-left"></span> Kembali ke Maps</a>
            <span style="padding-left: 10px;"></span>
            <?php if($_SESSION['login']):?>
                <a href="?m=donasi" class="btn btn-primary btn-sm"><span class="glyphicon glyphicon-credit-card"></span> Donasi</a>
            <?php else: ?>
                <script>
                    confirm("Silahkan Login Terlebih Dahulu")
                </script>
                    <a href="?m=login">
            <?php endif ?>            
        </p>
        <div id="map" style="height: 500px;"></div>
    </div>
    </div>
</div>

<script>

var origin_pos  = {
    lat : default_lat,
    lng : default_lng
};
var dst_pos = {
        lat : <?=$row->lat?>,
        lng : <?=$row->lng?>
    };
var errorRoute = false;
var map_detail;
var dragged = false;
var directionsDisplay;
var routeDisplayed = 0;

//menampilkan map detail
function tampilDetail(){          
    
    
    map_detail = new google.maps.Map(document.getElementById('map'), {
        zoom: default_zoom,
        center: dst_pos
    });  
    
    directionsDisplay = new google.maps.DirectionsRenderer({map: map_detail});
    
    addMarker(dst_pos, map_detail, '<?=$row->nama_tempat?>');    
    
    infoWindow = new google.maps.InfoWindow;
    
    if (navigator.geolocation) {
        navigator.geolocation.getCurrentPosition(function(position) {
            var pos = {
                lat: position.coords.latitude,
                lng: position.coords.longitude
            };
            
            
            origin_pos = pos;

            infoWindow.setPosition(pos);
            infoWindow.setContent('Lokasi anda');
            infoWindow.open(map_detail);
            map_detail.setCenter(pos);
        }, function() {
            handleLocationError(true, infoWindow, map_detail.getCenter());
        });
    } else {          
        handleLocationError(false, infoWindow, map_detail.getCenter());
    }
}

function handleLocationError(browserHasGeolocation, infoWindow, pos) {
    infoWindow.setPosition(pos);
    infoWindow.setContent(browserHasGeolocation ?
                          'Error: The Geolocation service failed.' :
                          'Error: Your browser doesn\'t support geolocation.');
    infoWindow.open(map);
}

//menampilkan rute lokasi
function showRoute(){                               
    var directionsService = new google.maps.DirectionsService;
    var directionsDisplay = new google.maps.DirectionsRenderer;
    directionsDisplay.setMap(map_detail);    
    calculateAndDisplayRoute(directionsService, directionsDisplay);       
    console.log('Route displayed ' + ++routeDisplayed);
}

function calculateAndDisplayRoute(directionsService, directionsDisplay) {
    directionsService.route({
          origin: origin_pos,
          destination: dst_pos,
          travelMode: 'DRIVING'
    }, function(response, status) {
      if (status === 'OK') {
        directionsDisplay.setDirections(response);
      } else {
        window.alert('Directions request failed due to ' + status);
      }
    });
}

$(function(){
    tampilDetail();    
})

$(document).ready(function(){

    loadGallery(true, 'a.thumbnail');

    //This function disables buttons when needed
    function disableButtons(counter_max, counter_current){
        $('#show-previous-image, #show-next-image').show();
        if(counter_max == counter_current){
            $('#show-next-image').hide();
        } else if (counter_current == 1){
            $('#show-previous-image').hide();
        }
    }

    /**
     *
     * @param setIDs        Sets IDs when DOM is loaded. If using a PHP counter, set to false.
     * @param setClickAttr  Sets the attribute for the click handler.
     */

    function loadGallery(setIDs, setClickAttr){
        var current_image,
            selector,
            counter = 0;

        $('#show-next-image, #show-previous-image').click(function(){
            if($(this).attr('id') == 'show-previous-image'){
                current_image--;
            } else {
                current_image++;
            }

            selector = $('[data-image-id="' + current_image + '"]');
            updateGallery(selector);
        });

        function updateGallery(selector) {
            var $sel = selector;
            current_image = $sel.data('image-id');
            $('#image-gallery-caption').text($sel.data('caption'));
            $('#image-gallery-title').text($sel.data('title'));
            $('#image-gallery-image').attr('src', $sel.data('image'));
            disableButtons(counter, $sel.data('image-id'));
        }

        if(setIDs == true){
            $('[data-image-id]').each(function(){
                counter++;
                $(this).attr('data-image-id',counter);
            });
        }
        $(setClickAttr).on('click',function(){
            updateGallery($(this));
        });
    }
});
</script>