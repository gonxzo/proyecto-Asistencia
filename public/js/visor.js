var icono_casa = L.icon({
    iconUrl: "./img/casaverde.png",
    iconSize: [25, 40]
});
var icono_casaverde = L.icon({
    iconUrl: "./img/casa.png",
    iconSize: [25, 40]
});
var icono_persona = L.icon({
    iconUrl: "./img/personaverde.png",
    iconSize: [20, 30]
});
var icono_auto1 = L.icon({
    iconUrl: "./img/personaroja.png",
    iconSize: [20, 30]
});



var map = L.map('map', { center: new L.LatLng(-16.499957537926285, -68.12999725341797), zoom: 11, zoomAnimation: true });
var derechos = "";
//var ggl = new L.Google('HYBRID', { attribution: derechos });
var googleHybrid = L.tileLayer('http://{s}.google.com/vt/lyrs=s,h&x={x}&y={y}&z={z}', {
    maxZoom: 20,
    subdomains: ['mt0', 'mt1', 'mt2', 'mt3']
});
googleStreets = L.tileLayer('http://{s}.google.com/vt/lyrs=m&x={x}&y={y}&z={z}', {
    maxZoom: 20,
    subdomains: ['mt0', 'mt1', 'mt2', 'mt3']
});
googleSat = L.tileLayer('http://{s}.google.com/vt/lyrs=s&x={x}&y={y}&z={z}', {
    maxZoom: 20,
    subdomains: ['mt0', 'mt1', 'mt2', 'mt3']
});
var osmUrl = 'http://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png';
var osmAttrib = 'Map_OpenLayers © <a href="http://openstreetmap.org">OpenStreetMap   </a> contributors';
var osmOL = new L.TileLayer(osmUrl, { attribution: osmAttrib });
var fsControl = new L.Control.FullScreen();

map.addControl(fsControl);
//map.addLayer(ggl);
map.addLayer(osmOL);
map.addControl(new L.Control.Layers({ 'G - Hibrido': googleHybrid, 'G - Calles': googleStreets, 'G - Satelital': googleSat, 'OP - Calles': osmOL }, {}));

var Marker_Auto = [];

function Position_Dinamic() {
    var aux = [];
    $.getJSON('/Conexion/conexion2.php?callback=parseResponse?', function(data) {
        for (var geoloc in data) {
            console.log(data);
            var ubicacion = parseInt(data[geoloc]['id']);
            var latitude = parseFloat(data[geoloc]['latitud']);
            var longitude = parseFloat(data[geoloc]['longitud']);
            var text = "Obrero :";
            var text1 = "Cargo :";
            var text2 = "Proyecto :";
            var text3 = "Proyecto :";
            var text4 = "Localidad :";
            var datos = "<div style='font-size:13px;color:black; font-family: Helvetica'> " + text + data[geoloc]['nombre'] + "<br />" + text2 + data[geoloc]['proyecto'] + "<br />";
            var datos1 = "<div style='font-size:13px;color:black; font-family: Helvetica'> " + text3 + data[geoloc]['nombre'] + "<br />" + text4 + data[geoloc]['cargo'] + "<br />";
            /*  var datos = "hola"; */


            if (!Marker_Auto[ubicacion]) {
                if (data[geoloc]['tipo'] == 'proyecto') {
                    if (data[geoloc]['idusuario'] == 1) {
                        Marker_Auto[ubicacion] = L.marker([latitude, longitude], { icon: icono_casa }).addTo(map).bindPopup(datos1).addTo(map);
                    } else {
                        Marker_Auto[ubicacion] = L.marker([latitude, longitude], { icon: icono_casaverde }).addTo(map).bindPopup(datos1).addTo(map);
                    }


                } else {
                    Marker_Auto[ubicacion] = L.marker([latitude, longitude], { icon: icono_persona }).addTo(map).bindPopup(datos).addTo(map);
                }
            }

            aux[ubicacion] = Marker_Auto[ubicacion];
            Marker_Auto[ubicacion].setLatLng([latitude, longitude]).update();
        }
        for (var x in Marker_Auto) {
            var y = aux.indexOf(Marker_Auto[x]);
            if (y === -1) {
                map.removeLayer(Marker_Auto[x]);
            }
        }
        Marker_Auto = aux;

        setTimeout(Position_Dinamic, 3000);
    });

}
Position_Dinamic();

/* function Position_Dinamic1() {
    var aux = [];
    $.getJSON('/Conexion/conexion2.php?callback=parseResponse?', function(data) {
        for (var geoloc in data) {
            console.log(data);
            var ubicacion = parseInt(data[geoloc]['id']);
            var latitude = parseFloat(data[geoloc]['latitud']);
            var longitude = parseFloat(data[geoloc]['longitud']);
            var text = "Nombre : ";
            var text1 = "Cargo :";
            var text2 = "Proyecto :";
            var datos = "<div style='font-size:13px;color:black; font-family: Helvetica'> " + text + data[geoloc]['nombre'] + " " + data[geoloc]['apellidos'] + "<br />" + text1 + data[geoloc]['cargo'] + "<br />" + "<br />" + text2 + data[geoloc]['proyectonombre'] + "<br />";
            //var datos = "hola";


            if (!Marker_Auto[ubicacion]) {
                Marker_Auto[ubicacion] = L.marker([latitude, longitude], { icon: icono_auto1 }).addTo(map).bindPopup(datos).addTo(map);


            }

            aux[ubicacion] = Marker_Auto[ubicacion];
            Marker_Auto[ubicacion].setLatLng([latitude, longitude]).update();
        }
        for (var x in Marker_Auto) {
            var y = aux.indexOf(Marker_Auto[x]);
            if (y === -1) {
                map.removeLayer(Marker_Auto[x]);
            }
        }
        Marker_Auto = aux;

        setTimeout(Position_Dinamic1, 3000);
    });
}
Position_Dinamic1(); */