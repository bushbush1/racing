-- conf.lua is loaded before the game is started
function love.conf(t)
    t.console = true
    t.window.title = "muckign around with lua love2d with windoield phsics"

    -- Using 1080p (for now)
    t.window.width = 1280 
    t.window.height = 720

    -- window display
    t.window.display = 2
    t.window.fullscreen = false
    t.window.borderless = false


    t.window.title = "Resizable Window"
    t.window.resizable = true
end