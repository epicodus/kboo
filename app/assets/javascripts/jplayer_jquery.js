$(document).ready(function(){
  $('.jp-jplayer').jPlayer({
    ready: function () {
      $(this).jPlayer("setMedia", {
        m4a: $(this).data('audio-url'),
        // oga: "http://www.jplayer.org/audio/ogg/Miaow-07-Bubble.ogg"
      });
    },
    swfPath: "js",
    supplied: "m4a, oga"
  });
});
