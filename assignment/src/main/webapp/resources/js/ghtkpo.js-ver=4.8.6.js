"use strict";
var ghtkpo_var = ghtkpo_var || {};

(function ($) {

    function initMap(id, lat, lng) {

        var officeMapID = 'map-data-id-'+id;
        var mapOptions = {
            zoom: 18,
            center: {lat: lat, lng: lng}
        };

        var map = new google.maps.Map(document.getElementById(officeMapID), mapOptions);
        var image = ghtkpo_var.url_marker;

        var icon = {
            url: image,
            scaledSize: new google.maps.Size(40, 40), // scaled size
            origin: new google.maps.Point(0,0), // origin
            anchor: new google.maps.Point(0, 0) // anchor
        };

        var marker = new google.maps.Marker({
            position: new google.maps.LatLng(lat, lng),
            map: map,
            icon: icon
        });

       /* var infowindow = new google.maps.InfoWindow();
        google.maps.event.addListener(marker, 'click', function() {
            infowindow.setContent(id);
            infowindow.open(map, marker);
        });*/

    }

    var pos = {};
    if (navigator.geolocation) {
        navigator.geolocation.getCurrentPosition(function(position) {
            pos.lat =  position.coords.latitude;
            pos.lng =  position.coords.longitude
        });
    }
    $(document).ready(function () {
        $.ajax({
            url: ghtkpo_var.get_provinces_url,
            type: 'get',
            dataType: 'json',
            success: function (data) {
                var htmlAdd = [{id: '', text: "Chọn tỉnh thành"}];
                for (var i = 0; i < data.length; i++) {
                    htmlAdd.push({"id": data[i]['id'], "text": data[i]['name']});
                }
                $('#ghtkpo-list-provinces').select2({data: htmlAdd, allowClear: true, placeholder: 'Chọn tỉnh thành'});

            }
        });


        $('.ghtkpo-btn-search').on('click', function (e) {
            e.preventDefault();

            var province = $('#ghtkpo-list-provinces').val();
            var $searchBox = $(this).closest('.search-post-offices');
            var $shortCode = $searchBox.parents('.shortcode-ghtkpo');
            var $postOffices = $('#show-post-office');
            $postOffices.empty();
            $.ajax({
                url: ghtkpo_var.getcode_url,
                type: 'GET',
                data: {
                    provinceId: province,
                    position: pos
                },
                dataType: 'json',
                beforeSend: function() {
                    $shortCode.addClass('loading');
                   // $searchBox.find('.default-title').css('visibility', 'hidden');
                },
                success: function (data) {
                   var content = '';
                   if(data.length > 0) {
                       for (var i = 0; i < data.length; i++) {
                           var distance = '';
                           if (data[i].distance) {
                               distance = '<span class="distance"><i class="fa fa-map-marker" aria-hidden="true"></i>' + data[i].distance + 'km</span>';
                           }
                           content += '<li class="item-post-office">' +
                               '<div class="info-post-office">' +
                               '<img class="post-office-img" alt="' + data[i].content + '" src="' + data[i].image + '"/> ' +
                               '<div class="box-info-office">' +
                               '<h3 class="office-title">' +
                               '<span class="office-name">' + data[i].name + '</span>' +
                               '<span class="office-phone">' + data[i].phone + '</span>' +
                               '</h3>' +
                               '<span class="office-address">' + data[i].content + '</span>' +
                               '<div class="office-info">' +
                               '<span class="office-status ' + data[i].working + ' ">' + data[i].status + '</span>' +
                               '<span class="time-work">(' + data[i].time_work + ')</span>' +
                               '</div>' + distance +
                               '<a class="btn-view-more ghtkpo-btn-detail" href="#" data-map_id="' + data[i].id + '" data-coords_lng="' + data[i].coords.lng + '"  data-coords_lat="' + data[i].coords.lat + '">Xem chi tiết</a>' +
                               '</div>' +
                               '</div>' +

                               '<div class="box-detail-office row">' +
                               '<div class="tabbable col-tab">' +
                               '<ul class="nav nav-pills nav-stacked">' +
                               '<li class="active"><a href="#map-data-id-' + data[i].id + '" data-toggle="tab" >Bản đồ</a></li>' +
                               '<li><a href="#img-data-id-' + data[i].id + '" data-toggle="tab" >Ảnh</a></li>' +
                               '<li><a href="#time-data-id-' + data[i].id + '" data-toggle="tab" >Giờ làm việc</a></li>' +
                               '</ul>' +
                               '</div>' +
                               '<div class="tab-content col-content">' +
                               '<div class="tab-pane map-content active" id="map-data-id-' + data[i].id + '"></div>' +
                               '<div class="tab-pane" id="img-data-id-' + data[i].id + '">' +
                               '<img class="post-office-full" alt="' + data[i].content + '" src="' + data[i].image + '"/> ' +
                               '</div>' +
                               '<div class="tab-pane" id="time-data-id-' + data[i].id + '">' +
                               '<table class="all-times">' +
                               '<tr><td class="time-work-day">Thứ 2</td><td>' + data[i].all_time.monday + '</td></tr>' +
                               '<tr><td class="time-work-day">Thứ 3</td><td>' + data[i].all_time.tuesday + '</td></tr>' +
                               '<tr><td class="time-work-day">Thứ 4</td><td>' + data[i].all_time.wednesday + '</td></tr>' +
                               '<tr><td class="time-work-day">Thứ 5</td><td>' + data[i].all_time.thursday + '</td></tr>' +
                               '<tr><td class="time-work-day">Thứ 6</td><td>' + data[i].all_time.friday + '</td></tr>' +
                               '<tr><td class="time-work-day">Thứ 7</td><td>' + data[i].all_time.saturday + '</td></tr>' +
                               '<tr><td class="time-work-day">Chủ nhật</td><td>' + data[i].all_time.sunday + '</td></tr>' +
                               '</table>'
                           '</div>' +
                           '</div>' +
                           '</div>' +
                           '</li>';
                       }
                   } else {
                       content += '<li class="no-post">[Đang cập nhật...]</li>'
                   }
                   $postOffices.append(content);
                   $postOffices.find('.box-detail-office').hide();
                   $searchBox.find('.list-post-offices').slideDown("slow", function () {
                       $shortCode.removeClass('loading');
                   });
                }
            });
        });


        $(document).on('click', '.btn-view-more', function (e) {
            e.preventDefault();
            var $this = $(this);
            var id = $this.data('map_id');
            var lng = $this.data('coords_lng');
            var lat = $this.data('coords_lat');
            var item = $this.closest('.item-post-office');
            if( !item.hasClass('opened') ) {
                $('#map-data-id'+id).empty();
                initMap(id, lat, lng);
                item.addClass('opened');
                item.find('.box-detail-office').slideDown();
                $this.text('Thu gọn');
            } else {
                item.removeClass('opened');
                item.find('.box-detail-office').slideUp();
                $this.text('Xem chi tiết');
            }

        });

        $('.close-list-po').on('click', function (e) {
            e.preventDefault();
            var $this = $(this);
            var $searchBox = $(this).closest('.search-post-offices');
            $searchBox.find('.list-post-offices').slideUp("slow", function () {
                $searchBox.find('.default-title').css('visibility', 'visible');
            });
        });


        $(document).click(function(e) {
            var popup = $('.search-post-offices');
            if (!popup.is(e.target) && popup.has(e.target).length === 0) {
                $('.close-list-po').click();
            }
        });

    });

}(jQuery));