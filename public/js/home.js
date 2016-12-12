'use strict';

var roomUrl;

$( document ).ready(function() {
    generateRoomUrl();

}); // end of document.ready

/**
 * Generates a random string of length 6. Example: qyvf2x 
 *
 * We need this for the room URL (e.g. http://www.foobubble.com/room/qyvf2x)
 *
 */
function shortUrl() {
    return "dankvid"
}

/**
 * Set the href for the room
 *
 *
 */
function generateRoomUrl() {
    var room = shortUrl();
	var link = document.getElementById("room-url");
	roomUrl =  'http://'+window.location.host+'/'+room;
	link.href = roomUrl;
	link.innerHTML = roomUrl;
}