tag @s add ui_tmw255_proj_move_-13_first

tag @s add ui_temp_this

tag @s add ui_255_proj_ghost

execute as @a if score $id ui_temp = @s ui_id run tag @s add ui_temp_player

execute if score @a[tag=ui_temp_player,limit=1] ui_tmw601_accessory matches 5002 unless entity @a[tag=ui_temp_target] as @e[distance=1..200,tag=!ui_temp_player,predicate=ui:load_unhurtable,sort=random,limit=1] run tag @s add ui_temp_target
execute unless entity @e[tag=ui_temp_target] as @a[distance=1..200,tag=!ui_temp_player,predicate=ui:load_unhurtable,sort=random,limit=1] run tag @s add ui_temp_target
execute unless entity @e[tag=ui_temp_target] as @e[distance=1..200,tag=!ui_temp_player,predicate=ui:load_unhurtable,sort=random,limit=1] run tag @s add ui_temp_target
execute unless entity @e[tag=ui_temp_target] as @a[tag=ui_temp_player] run tag @s add ui_temp_target
function ui:tmw/255/projectile/move/downer/13/teleport

tellraw @a[tag=ui_temp_player] [{"text":"MagicBullet","color":"gray"},{"text":"> ","color":"green"},{"selector":"@e[tag=ui_temp_target]"},{"text":"が"},{"text":"標的","color":"blue"},{"text":"に選ばれました"}]
#tellraw @a[tag=ui_temp_player] [{"text":"MagicBullet","color":"gray"},{"text":"> ","color":"green"},{"text":"内在エントロピーの初期化を実行します"}]

execute as @a[tag=ui_temp_player] if entity @s[tag=ui_temp_target] at @s run function ui:tmw/255/projectile/move/downer/13/damage

tag @s remove ui_temp_this
tag @a[tag=ui_temp_player] remove ui_temp_player
tag @e[tag=ui_temp_target] remove ui_temp_target
