#tellraw @a[scores={ui_tmw601_accessory=5007}] ["",{"text":"> ","color":"gray","bold": true},{"selector":"@s"},{"text":"がマッチに敗北しました"}]

tellraw @a[tag=ui_temp_players] ["",{"selector":"@s"},{"text": "が戦線離脱しました"}]

#scoreboard players reset @s ui_tmw272_link_id
#tag @s remove tmw272_active

execute if entity @s[type=player] at @s run function ui:tmw/272/match/player/death.player
execute if entity @s[type=!player] at @s run function ui:tmw/272/match/player/death.entity