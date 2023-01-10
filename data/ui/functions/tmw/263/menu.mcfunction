playsound block.tripwire.click_on player @s ~ ~ ~ 1 1 0

tellraw @s [{"text":"[redlaser]","color":"gold"},{"text":": Active Menu","color":"white"},{"text":"","clickEvent":{"action":"run_command","value":"/say a"}}]
tellraw @s [{"text":"・体力と満腹度完全回復","color":"gray","clickEvent":{"action":"run_command","value":"/function ui:tmw/263/menu1/1"}}]
tellraw @s [{"text":"・最寄りのエンティティをキル","color":"gray","clickEvent":{"action":"run_command","value":"/function ui:tmw/263/menu1/2"}}]
tellraw @s [{"text":"・エフェクトクリア","color":"gray","clickEvent":{"action":"run_command","value":"/function ui:tmw/263/menu1/3"}}]
tellraw @s [{"text":"・データ取得","color":"gray","clickEvent":{"action":"suggest_command","value":"/data get entity @e[type=!player,sort=nearest,limit=1]"}}]
tellraw @s [{"text":"・5m以内に不可壊付与","color":"gray","clickEvent":{"action":"run_command","value":"/function ui:tmw/263/menu1/5"}}]
tellraw @s [{"text":"・落とし物回収","color":"gray","clickEvent":{"action":"run_command","value":"/function ui:tmw/263/menu1/6"}}]
