(function ($) {
    window.BravoMapEngine = function (id,configs) {
        switch (bookingCore.map_provider) {
            case "osm":
                return new OsmMapEngine(id,configs);
                break;
            case "gmap":
                return new GmapEngine(id,configs);
                break;
        }
    };

    function BaseMapEngine(id,options){
        var defaults = {};
    }

    BaseMapEngine.prototype.getOption = function (key) {

        if(typeof this.options[key] == 'undefined'){

            if(typeof this.defaults[key] != 'undefined'){
                return this.defaults[key];
            }
            return null;

        }
        return this.options[key];

    };


    function OsmMapEngine(id,options){
        this.defaults = {
            fitBounds:true
        };
        var el = {};
        this.map = null;
        this.id = id;
        this.options = options;
        this.markers = [];
        this.bounds = null;

        this.init();

        return this;
    }

    OsmMapEngine.prototype = new BaseMapEngine();

    OsmMapEngine.prototype.initScripts = function (func) {
        func();
        return;

        if(typeof window.bc_osm_script_inited != 'undefined') return;
        if(this.getOption('disableScripts')){
            func();
            return;
        }

        var head= document.getElementsByTagName('head')[0];
        var script= document.createElement('script');
        script.type= 'text/javascript';
        script.src= bookingCore.url_root+'/libs/leaflet1.4.0/leaflet.js';
        head.appendChild(script);

        var link = document.createElement('link');
        link.rel = 'stylesheet';
        link.href = bookingCore.url_root+'/libs/leaflet1.4.0/leaflet.css';
        head.appendChild(link);

        window.bc_osm_script_inited = true;


        script.onload = function(){
            func();
        }
    };

    OsmMapEngine.prototype.init = function () {

        var me = this;

        this.el  = $('#'+this.id);

        this.initScripts(function () {

            var center = me.getOption('center');
            var zoom = me.getOption('zoom');

            me.map = L.map(me.id).setView(center, zoom);

            L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
                attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
            }).addTo(me.map);

            var rd = me.getOption('ready');
            if(typeof rd == "function"){
                rd(me);
            }

        });

    };

    OsmMapEngine.prototype.addMarker = function (latLng,options) {

        // if(typeof options.icon_options.iconUrl == 'undefined'){
        //     options.icon_options.iconUrl = bookingCore.url+'/images/favicon.png';
        // }
        // if(options.icon_options){
        //     options.icon = L.icon(options.icon_options);
        // }

        var m = L.marker(latLng,options).addTo(this.map);

        this.markers.push(m);

    };
    OsmMapEngine.prototype.addMarker2 = function (marker) {

        var options = {
        	mapTypeControl: false,
            icon_options:{
                iconUrl:''
            }
        };
            options.icon_options.iconUrl = marker.marker
        if(options.icon_options){
            options.icon = L.icon(options.icon_options);
        }

        var m = L.marker([marker.lat,marker.lng],options).addTo(this.map);

        this.markers.push(m);

    };

    OsmMapEngine.prototype.addMarkers = function (markers) {

        for(var i = 0 ; i < markers.length; i++){

            this.addMarker(markers[i][0],markers[i][1]);

        }

        if(this.getOption('fitBounds'))
        {
            this.bounds = [];
            for (var key in this.markers) {
                var marker = this.markers[key];
                this.bounds.push([ marker._latlng.lat , marker._latlng.lng ])
            }
            try {
                this.map.fitBounds(this.bounds);
            }catch (e) {
                console.log(e);
            }
            this.map.invalidateSize();
        }

    };
    OsmMapEngine.prototype.addMarkers2 = function (markers) {
        for(var i = 0 ; i < markers.length; i++){
            this.addMarker2(markers[i]);
        }
        if(this.getOption('fitBounds'))
        {
            this.bounds = [];
            for (var key in this.markers) {
                var marker = this.markers[key];
                this.bounds.push([ marker._latlng.lat , marker._latlng.lng ])
            }
            try {
                this.map.fitBounds(this.bounds);
            }catch (e) {
                console.log(e);
            }
            this.map.invalidateSize();
        }
    };


   


    OsmMapEngine.prototype.clearMarkers = function (markers) {

        for(var i = 0; i < this.markers.length; i++){

            this.map.removeLayer(this.markers[i]);

        }

        this.markers = [];

    };

    OsmMapEngine.prototype.on = function (type,func) {

        switch (type) {
            case "click":
                return this.map.on(type,function(e){
                    func([
                        e.latlng.lat,
                        e.latlng.lng,
                    ])
                });
            case "zoom_changed":
                return this.map.on('zoomend',function(e){
                    func(e.target.getZoom())
                });
            break;
        }

    };

    OsmMapEngine.prototype.searchBox = function (classSearchBox ,func) {
        classSearchBox.hide();
    }

    function GmapEngine(id,options){

		this.defaults = {
            fitBounds:true
        };
        var el = {};
        this.map = null;
        this.id = id;
        this.options = options;
        this.markersPositions = [];
        this.markers = [];
        var bounds = null;
        this.infoboxs = [];

        this.init();

        return this;

    }

    GmapEngine.prototype = new BaseMapEngine();

    GmapEngine.prototype.initScripts = function (func) {

        func();
        return;
        if(typeof window.bc_gmap_script_inited != 'undefined') return;
        if(this.getOption('disableScripts')){
            func();
            return;
        }

        var head= document.getElementsByTagName('head')[0];
        var script= document.createElement('script');
        script.type= 'text/javascript';
        script.src= 'https://maps.googleapis.com/maps/api/js?key='+bookingCore.map_gmap_key+'&libraries=places';
        head.appendChild(script);

		var script2 = document.createElement('script');
		script2.type= 'text/javascript';
		script2.src= bookingCore.url+'/libs/infobox.js';
		head.appendChild(script2);

        window.bc_gmap_script_inited = true;

        script.onload = function(){
            func();
        }
    };

    function addYourLocationButton(map, marker) 
{
	var controlDiv = document.createElement('div');
	
	var firstChild = document.createElement('button');
	firstChild.style.backgroundColor = '#fff';
	firstChild.style.border = 'none';
	firstChild.style.outline = 'none';
	firstChild.style.width = '28px';
	firstChild.style.height = '28px';
	firstChild.style.borderRadius = '2px';
	firstChild.style.boxShadow = '0 1px 4px rgba(0,0,0,0.3)';
	firstChild.style.cursor = 'pointer';
	firstChild.style.marginRight = '10px';
	firstChild.style.padding = '0px';
	firstChild.title = 'Your Location';
	controlDiv.appendChild(firstChild);
	
	var secondChild = document.createElement('div');
	secondChild.style.margin = '5px';
	secondChild.style.width = '18px';
	secondChild.style.height = '18px';
	secondChild.style.backgroundImage = 'url(https://maps.gstatic.com/tactile/mylocation/mylocation-sprite-1x.png)';
	secondChild.style.backgroundSize = '180px 18px';
	secondChild.style.backgroundPosition = '0px 0px';
	secondChild.style.backgroundRepeat = 'no-repeat';
	secondChild.id = 'you_location_img';
	firstChild.appendChild(secondChild);
	
	google.maps.event.addListener(map, 'dragend', function() {
		$('#you_location_img').css('background-position', '0px 0px');
	});

	firstChild.addEventListener('click', function() {
		var imgX = '0';
		var animationInterval = setInterval(function(){
			if(imgX == '-18') imgX = '0';
			else imgX = '-18';
			$('#you_location_img').css('background-position', imgX+'px 0px');
		}, 500);
		if(navigator.geolocation) {
			navigator.geolocation.getCurrentPosition(function(position) {
				var latlng = new google.maps.LatLng(position.coords.latitude, position.coords.longitude);
				marker.setPosition(latlng);
				map.setCenter(latlng);
				clearInterval(animationInterval);
				$('#you_location_img').css('background-position', '-144px 0px');
			});
		}
		else{
			clearInterval(animationInterval);
			$('#you_location_img').css('background-position', '0px 0px');
		}
	});
	
	controlDiv.index = 1;
	map.controls[google.maps.ControlPosition.RIGHT_BOTTOM].push(controlDiv);
}


    GmapEngine.prototype.init = function () {

        var me = this;

        this.el  = $('#'+this.id);

        this.initScripts(function () {

            var center = me.getOption('center');
            var zoom = me.getOption('zoom');

            me.map = new google.maps.Map(document.getElementById(me.id), {
                center: {lat:center[0],lng:center[1]},
                zoom: zoom,
                //maxZoom:15,
                clickableIcons: false
            });

            map = me.map;

            var svg = [
                '<?xml version="1.0" standalone="no"?>',
                '<svg xmlns="http://www.w3.org/2000/svg" height="1000" width="1000" xmlns:xlink="http://www.w3.org/1999/xlink">',
                '<glyph glyph-name="user-alt-1" unicode="&#xecfb;" horiz-adv-x="1000" fill="#151493" />',
                '<path d="M400.1 849.7c0-36.90000000000009-0.10000000000002274-73.90000000000009 0.0999999999999659-110.80000000000007 0-4.2999999999999545-1.3999999999999773-6.5-4.899999999999977-8.799999999999955-30.600000000000023-20.200000000000045-61-40.60000000000002-91.5-60.80000000000007-2.6999999999999886-1.7999999999999545-4-3.7999999999999545-4.400000000000034-7-9.099999999999966-73.09999999999991-18.19999999999999-146.19999999999993-27.399999999999977-219.29999999999995-1.6000000000000227-13-3.1000000000000227-26.100000000000023-4.899999999999977-39.10000000000002-0.5-3.2999999999999545 0.39999999999997726-4.2999999999999545 3.5-5 33.099999999999966-7.7999999999999545 66.29999999999995-14.399999999999977 99.89999999999998-19.899999999999977 40.10000000000002-6.600000000000023 80.39999999999998-11.5 121.10000000000002-12.300000000000011 29-0.5999999999999659 57.89999999999998 1.6000000000000227 86.60000000000002 5.100000000000023 50.89999999999998 6.099999999999966 101.19999999999993 15.5 151.19999999999993 27.099999999999966 3.2000000000000455 0.8000000000000114 4.2000000000000455 1.7000000000000455 3.7000000000000455 5.300000000000011-5.300000000000068 41.30000000000001-10.399999999999977 82.60000000000002-15.600000000000023 123.90000000000003-5.5 44-11.100000000000023 87.89999999999998-16.399999999999977 131.89999999999998-0.6000000000000227 5.100000000000023-2.6000000000000227 8-6.7000000000000455 10.799999999999955-30.100000000000023 19.800000000000068-60 39.90000000000009-90.10000000000002 59.80000000000007-3.099999999999909 2.1000000000000227-4.099999999999909 4.199999999999932-4.099999999999909 7.899999999999977 0.09999999999990905 74.29999999999995 0 148.60000000000002 0.1999999999999318 222.89999999999998 0 4.100000000000023-1.3999999999999773 6.300000000000068-4.7999999999999545 8.300000000000068-23.600000000000023 13.599999999999909-48.30000000000007 24.199999999999932-75.30000000000007 28.699999999999932-22.999999999999943 3.8999999999999773-45.299999999999955 0.7000000000000455-67.19999999999993-6.600000000000023-17.200000000000045-5.699999999999932-33.400000000000034-13.299999999999955-49-22.5-3.1000000000000227-1.7999999999999545-4.100000000000023-3.8999999999999773-4.100000000000023-7.399999999999977 0.10000000000002274-37.39999999999998 0.10000000000002274-74.79999999999995 0.10000000000002274-112.19999999999993z m-66.80000000000001-683.1c0-92.20000000000002 74.69999999999999-166.60000000000002 167.09999999999997-166.60000000000002 91.89999999999998 0 166.60000000000002 74.8 166.5 166.7-0.10000000000002274 92.10000000000002-74.89999999999998 166.7-167.09999999999997 166.60000000000002-92 0-166.5-74.69999999999999-166.5-166.70000000000002z"/>',
                '</svg>'].join('\n');

            //var icon = { url: 'data:image/svg+xml;charset=UTF-8,' + encodeURIComponent(svg), scaledSize: new google.maps.Size(40, 40) };
            //var icon = {url: "/images/icons/png/blue_dot.png", origin:  new google.maps.Point(0, 0)};
            var icon = new google.maps.MarkerImage('/images/icons/png/blue_dot.png',
                new google.maps.Size(17, 17),
                new google.maps.Point(0, 0),
                new google.maps.Point(8.5, 8.5));
            const marker = new google.maps.Marker({ map });


            var rd = me.getOption('ready');
            if(typeof rd == "function"){
                rd(me);
            }

            

                

            if ('geolocation' in navigator) {
                    let circle = new google.maps.Circle({
                        map: map,          
                        fillColor: '#187af7',
                        fillOpacity: 0.3,
                        strokeColor: "#FFF",
                        strokeWeight: 0         // DON'T SHOW CIRCLE BORDER.
                    });
                navigator.geolocation.watchPosition(
                position => {
                    let pos = new google.maps.LatLng(position.coords.latitude, position.coords.longitude);
                    marker.setPosition(pos);
                    marker.setIcon(icon);
                    accuracy = parseFloat(position.coords.accuracy);
                    circle.setCenter(pos);
                    circle.setRadius(accuracy);
                    
                },
                err => alert(`Error (${err.code}): ${err.message}`));
                
            } else {
                alert('Geolocation is not supported by your browser.');
            }

            addYourLocationButton(map, marker);
            // Allow us to hide infoboxes once the user has clicked on the map (outside the infobox)
            google.maps.event.addListener(map, 'click', function() {
                document.getElementById('marker_details').innerHTML = "";
                    if($('div.infoBox').is(":visible")) {
                        // it was necessary to loop through the whole array of infoboxes
                        for(var i = 0 ; i < me.infoboxs.length ; i++){
                            me.infoboxs[i].close();
                        }
                        if(window.lazyLoadInstance){
                            window.lazyLoadInstance.update();
                        }
                    }
                });    

        });

        

    };

    GmapEngine.prototype.addMarker = function (latLng,options) {


        var m = new google.maps.Marker({
            position: {
                lat:latLng[0],
                lng:latLng[1]
            },
            map: this.map,
            icon: options.icon_options.iconUrl
        });

        this.markers.push(m);

    };


    GmapEngine.prototype.addMarker2 = function (marker) {

        var m = new google.maps.Marker({
            position: {
                lat:marker.lat,
                lng:marker.lng
            },
            map: this.map,
            icon: { 
                url: marker.marker,
                labelOrigin: new google.maps.Point(24, 8)
            },
            label: {
                text: marker.price ? '$' + parseFloat(marker.price).toFixed().replace('.', ',').replace(/(\d)(?=(\d{3})+(?!\d))/g, '$1.') : ' ',
                fontFamily: "'Open Sans', sans-serif",
                fontSize: "11px",
                color: "#fff"
            }
        });

        if(marker.infobox){
			var ibOptions = {
				content: '',
				disableAutoPan: true
				, maxWidth: 0
				, pixelOffset: new google.maps.Size(-135, -35)
				, zIndex: null
				, boxStyle: {
					padding: "0px 0px 0px 0px",
					//width: "270px",
				},
				closeBoxURL: "/images/icons/png/close.png",
				cancelBubble: true,
				infoBoxClearance: new google.maps.Size(1, 1),
				isHidden: false,
				pane: "floatPane",
				enableEventPropagation: true,
                alignBottom: true, 
                position: "bottom:0; right:0;"
			};

			var boxText = document.createElement("div");

			// if (window.matchMedia("(min-width: 768px)").matches) {
			// 	if (popupPos == 'right') {
			// 		boxText.classList.add("right-box");
			// 	}
			// }
			//
			// $(window).resize(function () {
			// 	if (window.matchMedia("(min-width: 768px)").matches) {
			// 		if (popupPos == 'right') {
			// 			boxText.classList.add("right-box");
			// 		}
			// 	} else {
			// 		boxText.classList.remove("right-box");
			// 	}
			// });

			boxText.style.cssText = "border-radius: 5px; background: #fff; padding: 0px;";
			boxText.innerHTML = marker.infobox;

			ibOptions.content = boxText;

            // Close Old
			for(var i = 0 ; i < this.infoboxs.length; i++){

				this.infoboxs[i].close();
			}

            var ib =  new InfoBox(ibOptions);
            this.infoboxs.push(ib);

			// google.maps.event.addListener(ib, 'domready', function () {
			// 	var closeInfoBox = document.getElementById("close-popup-on-map");
			// 	google.maps.event.addDomListener(closeInfoBox, 'click', function () {
			// 		ib.close();
			// 	});
			// });

            var styleInfoWindow='<style>.gm-style-iw{max-width: 340px!important;padding: 0 !important;width: 419px;} .gm-style-iw .location-default, .gm-style-iw .service-review, .gm-style-iw .info-normal, .gm-style-iw .content-map{margin-top:10px} .gm-style-iw .item-loop{margin-bottom:0px !important}.gm-style-iw-d{max-width:100% !important} .has-search-map .bravo_search_map .results_map .item-loop .list-star .booking-item-rating-stars li .fa{ font-size: 11px; color:#fa5636; } .has-search-map .has-search-map .bravo_search_map .results_map .item-loop .thumb-image{ width:100%; padding-bottom: 0% !important;}</style>'

			// var me = this;
			// m.addListener('click', function() {
   //              //
   //              for(var i = 0 ; i < me.infoboxs.length ; i++){
   //                  me.infoboxs[i].close();
   //              }
                
   //              document.getElementById('marker_details').innerHTML = marker.infobox;
   //              me.map.panTo(ib.getPosition());

   //              if(window.lazyLoadInstance){
   //                  window.lazyLoadInstance.update();
   //              }
   //          });

            //  m.addListener('mouseover', function() {
            //      if ($("#aloja_"+marker.id).prop("innerHTML")!=undefined) {
            //         infowindow.setContent($("#aloja_"+marker.id).prop("innerHTML")+styleInfoWindow);

            //         setTimeout(function(){ 
            //             infowindow.open(map,m);
            //         }, 120);
            //     }

            // });

            // m.addListener('mouseout', function() {
            //     setTimeout(function(){ 
            //         infowindow.close();
            //     }, 120);
            // });


            	m.addListener('click', function() {
            		console.log(marker.id)
            		if ($(document).width()<768) {
		                 if ($("#aloja_"+marker.id).prop("innerHTML")!=undefined) {
		                    infowindow.setContent($("#aloja_"+marker.id).prop("innerHTML")+styleInfoWindow);

		                    setTimeout(function(){ 
		                        infowindow.open(map,m);
		                    }, 120);
		                }
	                }
            	});


            var infowindow = new google.maps.InfoWindow({
            });


        }

        this.markers.push(m);
        this.markersPositions.push(m.getPosition());

    };

    GmapEngine.prototype.addMarkers = function (markers) {

        for(var i = 0 ; i < markers.length; i++){

            this.addMarker(markers[i][0], markers[i][1]);
        }

        if(this.getOption('fitBounds'))
        {
            this.bounds = new google.maps.LatLngBounds();

            for(var i = 0; i < this.markers.length; i++){

                this.bounds.extend(this.markers[i]);

            }

            this.map.fitBounds(this.bounds);
        }

    };
    GmapEngine.prototype.addMarkers2 = function (markers) {

        for(var i = 0 ; i < markers.length; i++){

            this.addMarker2(markers[i]);

        }

        if(this.getOption('fitBounds'))
        {
            this.bounds = new google.maps.LatLngBounds();

            for(var i = 0; i < this.markersPositions.length; i++){

                this.bounds.extend(this.markersPositions[i]);

            }

            this.map.fitBounds(this.bounds);
        }

    };

    GmapEngine.prototype.clearMarkers = function (markers) {

        if(this.markers.length > 0){
            for(var i = 0; i < this.markers.length; i++){
                this.markers[i].setMap(null);
            }
        }

        this.markers = [];
        this.markersPositions = [];

        this.infoboxs = [];

    };

    GmapEngine.prototype.on = function (type,func) {
        switch (type) {
            case "click":
                return this.map.addListener(type,function(e){
                    let zoom = this.getZoom();
                    func([
                        e.latLng.lat(),
                        e.latLng.lng(),
                        zoom,
                    ])
                });
            break;
            case "zoom_changed":
                return this.map.addListener(type,function(e){
                    let zoom = this.getZoom();
                    func(
                        zoom
                    )
                });
            break;
        }
    };

    GmapEngine.prototype.searchBox = function (classSearchBox ,func) {
        var me = this;
        var searchBox = new google.maps.places.SearchBox(classSearchBox[0]);
        google.maps.event.addListener(searchBox, 'places_changed', function() {
            var places = searchBox.getPlaces();
            if (places.length == 0) {
                console.log("Uh oh");
                return;
            }
            var bounds = new google.maps.LatLngBounds();
            for (var i = 0, place ; place = places[i]; i++) {
                if (!place.geometry) {
                    console.log("Returned place contains no geometry");
                    return;
                }
                if (place.geometry.viewport) {
                    bounds.union(place.geometry.viewport);
                } else {
                    bounds.extend(place.geometry.location);
                }
                if(i===0){
                    func([
                        place.geometry.location.lat(),
                        place.geometry.location.lng(),
                        me.map.getZoom()]
                    );
                }
            }
            me.map.fitBounds(bounds);
        });
    }

    

    

})(jQuery);
