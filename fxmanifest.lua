fx_version 'cerulean'
game 'gta5'

author 'reynahd.xyz'
description 'Team HUD'
version '1.0.0'

-- Client-Skripte
client_script 'client.lua'  -- Ändere den Dateinamen entsprechend deinem Client-Skript
-- Server-Skripte
server_script 'server.lua'   -- Ändere den Dateinamen entsprechend deinem Server-Skript

-- NUI Ressourcen
ui_page 'html/index.html'         -- Deine Haupt-HTML-Datei

-- Dateien für NUI
files {
    'html/index.html',         -- Die HTML-Datei
    'html/js/script.js',       -- Der Pfad zur JavaScript-Datei
    --'html/style.css'           -- Falls du ein externes Stylesheet hast
}
