# ミサイルの発射を媒介する

# idがないターゲット可能な存在全てにidを振る
execute as @e[distance=1..30,tag=!ui_temp_team,predicate=ui:load_unhurtable] unless score @s ui_obj_id matches -2147483648..2147483647 run function ui:misc/act/make_obj_id
tag @e[distance=1..30,tag=!ui_temp_team,predicate=ui:load_unhurtable,sort=nearest,limit=1] add ui_temp_target
#execute positioned ^ ^ ^4 run particle explosion ~ ~ ~ 0 0 0 0 1 force
#execute at @e[tag=ui_temp_target,sort=random,limit=1] run particle dust 1 1 1 10 ~ ~ ~ 0 0 0 0 1 force
#say @e[tag=ui_temp_target2]

# ミサイルを召喚する
scoreboard players set $success ui_temp 0
scoreboard players set $obj_id ui_temp 0
scoreboard players operation $obj_id ui_temp = @e[tag=ui_temp_target] ui_obj_id
#id
#team
scoreboard players set $particle.end ui_temp 4
scoreboard players set $speed ui_temp 40
scoreboard players set $speed.add ui_temp 0
scoreboard players set $range ui_temp 80
scoreboard players set $spread ui_temp 200
scoreboard players set $damage ui_temp 80
data modify storage ui:temp temp.Name set value '{"text":"ヘルハウンド","color":"gray"}'
scoreboard players set $deathmessage ui_temp 0
execute as @e[tag=ui_temp_target] at @s positioned ~ ~ ~ run function ui:tmw/237/attack/missile/fire_here
execute if score $success ui_temp matches 0 at @e[distance=..10,predicate=ui:load_unhurtable,sort=nearest,limit=1] positioned ~ ~ ~ run function ui:tmw/237/attack/missile/fire_here

# データ消し
tag @e[tag=ui_temp_target] remove ui_temp_target
data remove storage ui:temp temp.Name
