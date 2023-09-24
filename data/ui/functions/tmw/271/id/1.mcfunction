execute if score @s ui_use1 matches 1.. run tellraw @s [{"text":"[MENU] : "},{"text":"{start}","clickEvent": { "action": "run_command","value":"/trigger ui_tmw271_trig set 1001"}}]
execute if score @s ui_use1 matches 1.. run scoreboard objectives add ui_tmw271_trig trigger
execute if score @s ui_use1 matches 1.. run gamerule sendCommandFeedback false
execute if score @s ui_use1 matches 1.. run scoreboard players enable @s ui_tmw271_trig
execute if score @s ui_use1 matches 1.. run scoreboard objectives add ui_tmw271_sys dummy
execute if score @s ui_use1 matches 1.. run scoreboard players set $game ui_tmw271_sys 0
execute if score @s ui_use1 matches 1.. run schedule function ui:tmw/271/ss/ 1t replace