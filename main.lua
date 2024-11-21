audioMusica = audio.loadStream( "recursos/áudio/musicaAbertura.mp3" )


-- video = media.playVideo("recursos/videos/videoAberturaVisaoAutista.mp4.mp4")

local videoAbertura = media.playVideo("recursos/videos/videoAberturaVisaoAutista.mp4", true)




local composer = require("composer")
composer.gotoScene("cenas.menu")