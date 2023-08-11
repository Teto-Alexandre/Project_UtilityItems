tag @s add ui_tmw255_proj_move_-14_first

tag @s add ui_temp_this

scoreboard players set $mp ui_temp 0
execute store result score $mp ui_temp run scoreboard players get @a[tag=ui_temp_player,limit=1] ui_mp
scoreboard players operation $mp ui_temp < #200 ui_num
scoreboard players operation @a[tag=ui_temp_player,limit=1] ui_mp -= $mp ui_temp

scoreboard players operation @s ui_br = $mp ui_temp
execute if score $mp ui_temp matches 0 run tag @s add tmw_255_proj_del

#tellraw @a[tag=ui_temp_player] [{"text":"MagicBullet","color":"gray"},{"text":"> ","color":"green"},{"selector":"@e[tag=ui_temp_target]"},{"text":"が"},{"text":"標的","color":"blue"},{"text":"に選ばれました"}]
#tellraw @a[tag=ui_temp_player] [{"text":"MagicBullet","color":"gray"},{"text":"> ","color":"green"},{"text":"内在エントロピーの初期化を実行します"}]

#execute as @a[tag=ui_temp_player] if entity @s[tag=ui_temp_target] at @s run function ui:tmw/255/projectile/move/downer/14/damage

tag @s remove ui_temp_this
tag @a[tag=ui_temp_player] remove ui_temp_player
tag @e[tag=ui_temp_target] remove ui_temp_target
