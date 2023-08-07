local composer = require( "composer" )
local py = require("physics")
local menuGuiBuilder = require("menuGuiBuilder")
local settings = require("settings")
 
local scene = composer.newScene()
 
function scene:create( event )
 
  local sceneGroup = self.view
  
  menuGuiBuilder.createTitleGui()
  menuGuiBuilder.showUser()
 
end
 
function scene:show( event )
 
    local sceneGroup = self.view
    local phase = event.phase
 
    if ( phase == "will" ) then
      if not menuGuiBuilder.inEditor then
        menuGuiBuilder.usernameTextbox.x = 300
      end
 
    elseif ( phase == "did" ) then
        -- Code here runs when the scene is entirely on screen
 
    end
end
 
 
-- hide()
function scene:hide( event )
 
    local sceneGroup = self.view
    local phase = event.phase
 
    if ( phase == "will" ) then
      -- Code here runs when the scene is on screen (but is about to go off screen)
 
    elseif ( phase == "did" ) then
      -- Code here runs immediately after the scene goes entirely off screen
 
    end
end
 
function scene:destroy( event )
 
    local sceneGroup = self.view
    -- Code here runs prior to the removal of scene's view
 
end
 
scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )
scene:addEventListener( "destroy", scene )
 
return scene