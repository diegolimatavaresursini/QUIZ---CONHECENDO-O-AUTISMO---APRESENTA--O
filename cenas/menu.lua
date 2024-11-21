local composer = require("composer")

local scene = composer.newScene()

function scene:create( event )
  local cenaMenu = self.view

  audio.play ( audioMusica, {channel = 32, loops = 0})
  audio.setVolume( 1, {channel = 32} )

  local x = display.contentWidth
  local y = display.contentHeight
  

  local fundo = display.newImageRect( cenaMenu, "Imagens/azul.png", x*1, y*1)
  fundo.x = x*0.5
  fundo.y = y*0.5

  local logo = display.newImageRect( cenaMenu, "Imagens/logomapa.png", x*0.60, y*0.85)
  logo.x = x*0.485
  logo.y = y*0.598


  local textoTitulo = display.newText( cenaMenu,"QUIZ: CONHECENDO O AUTISMO", x*0.5, y*0.08, "recursos/fontes/Gamtex.ttf",145 )
  textoTitulo:setFillColor(1, 1, 0)

  local textoSubTitulo = display.newText( cenaMenu,"Transtorno do Espectro Autista - TEA", x*0.5, y*0.20, "recursos/fontes/Gamtex.ttf",105 )
  textoSubTitulo:setFillColor(1, 1, 0)

 local quadradoInformacoes = display.newRoundedRect( cenaMenu, x*0.150, y*0.93, x*0.18, 80, 90 )
  
  local informacoes = display.newText(  cenaMenu, "SOBRE O QUIZ", x*0.150, y*0.93, "recursos/fontes/GROBOLD.ttf", 50 )
  informacoes:setFillColor(1, 0, 0)

  informacoes:addEventListener("tap", function()
    composer.gotoScene("cenas.informacoes")
    
  end)
  
  local quadradoIniciar = display.newRoundedRect( cenaMenu, x*0.51, y*0.93, x*0.15, 80, 90 )
  local Iniciar = display.newText(  cenaMenu, "J O G A R", x*0.51, y*0.93, "recursos/fontes/GROBOLD.ttf", 60 )
  Iniciar:setFillColor(0, 0, 0.6)
  
  Iniciar:addEventListener("tap", function()
    composer.gotoScene("cenas.jogo")
    
  end)
  
  local quadradoSair = display.newRoundedRect( cenaMenu, x*0.87, y*0.93, x*0.13, 80, 90)
  local sair = display.newText( cenaMenu, "S  A  I  R", x*0.87, y*0.93, "recursos/fontes/GROBOLD.ttf", 50  )
  sair:setFillColor(0, 0.6, 0)

  sair:addEventListener("tap", function()
  composer.gotoScene("cenas.sair")

  end)

























  -- local quadradoComunidades = display.newRoundedRect( cenaMenu, x*0.85, y*0.38, x*0.25, 90, 80 )
  -- local comunidades = display.newText( cenaMenu, "COMUNIDADES", x*0.85, y*0.380, "recursos/fontes/GROBOLD.ttf", 50 )
  -- comunidades:setFillColor(1, 0, 0)

  -- comunidades:addEventListener("tap", function()
  --   composer.gotoScene("cenas.comunidades")

  -- end)

  -- local quadradoVideos = display.newRoundedRect( cenaMenu, x*0.85, y*0.50, x*0.25, 90, 80 )
  -- local videos = display.newText( cenaMenu, "VIDEOS", x*0.85, y*0.50, "recursos/fontes/GROBOLD.ttf", 50  )
  -- videos:setFillColor(0, 0.7, 0)

  -- videos:addEventListener("tap", function()
  --   composer.gotoScene("cenas.videos")

  -- end)

  -- local quadradoLivros = display.newRoundedRect( cenaMenu, x*0.85, y*0.62, x*0.25, 90, 80 )
  -- local livros = display.newText( cenaMenu, "LIVROS", x*0.85, y*0.620, "recursos/fontes/GROBOLD.ttf", 50  )
  -- livros:setFillColor(0, 0, 1)

  -- livros:addEventListener("tap", function()
  -- composer.gotoScene("cenas.livros")

  -- end)

  -- local quadradoCreditos = display.newRoundedRect( cenaMenu, x*0.85, y*0.74, x*0.25, 90, 80 )
  -- local creditos = display.newText( cenaMenu, "CREDITOS", x*0.85, y*0.740, "recursos/fontes/GROBOLD.ttf", 50  )
  -- creditos:setFillColor(1, 0.55, 0.90)

  -- creditos:addEventListener("tap", function()
  --   composer.gotoScene("cenas.creditos")

  -- end)




  function SAIR (event)
  if event.phase == "began" then
  native.requestExit()
  os.exit()
  end
end
quadradoSair:addEventListener("touch", SAIR)




end

scene:addEventListener( "create", scene )
return scene