playsound entity.experience_orb.pickup player @s ~ ~ ~ 1 1.5 0

scoreboard players add @s ui_tmw272_mana_max 1
scoreboard players operation @s ui_tmw272_mana = @s ui_tmw272_mana_max
tellraw @s[scores={ui_tmw601_accessory=5007}] ["",{"text":"> ","color":"gray","bold": true},{"text":"> ","color":"green"},{"text":"最大コスト+1 = "},{"score":{"name": "@s","objective": "ui_tmw272_mana_max"}},{"text":", コストを最大まで回復しました"}]

scoreboard players set $cg1_common_draw_type ui_temp 0
scoreboard players set $cg1_common_draw_num ui_temp 1
execute if entity @s[type=player] run function ui:tmw/272/common/draw/