playsound block.tripwire.click_on player @s ~ ~ ~ 1 1 0

tellraw @s [{"text":"[redlaser]","color":"gold"},{"text":": Config Menu","color":"white"},{"text":"","clickEvent":{"action":"run_command","value":"/say a"}}]
tellraw @s [{"text":"・発射時の音が鳴るか","color":"gray","clickEvent":{"action":"run_command","value":"/function ui:tmw/263/menu2/toggle_silentmode"}}]
tellraw @s [{"text":"・命中したモブをキルするか","color":"gray","clickEvent":{"action":"run_command","value":"/function ui:tmw/263/menu2/toggle_killmode"}}]
tellraw @s [{"text":"・常に保持するか","color":"gray","clickEvent":{"action":"run_command","value":"/function ui:tmw/263/menu2/toggle_keephold"}}]
tellraw @s [{"text":"・ゲームモード変更可能か","color":"gray","clickEvent":{"action":"run_command","value":"/function ui:tmw/263/menu2/toggle_gamemode"}}]
tellraw @s [{"text":"・このメニューを表示するか","color":"gray","clickEvent":{"action":"run_command","value":"/function ui:tmw/263/menu2/toggle_showmenu"}}]
