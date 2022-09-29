# ミサイルの発射を媒介する

# ターゲット可能なすべてのエンティティの位置情報を半径５m地点に集積

# idがないターゲット可能な存在全てにidを振る
execute as @e[distance=1..75,tag=!ui_temp_team,predicate=ui:load_unhurtable] run function ui:tmw/237/projectile/killeffect/102.2
execute positioned ^ ^ ^4 run tag @e[tag=ui_temp_marker,distance=..3] add ui_temp_target
#execute positioned ^ ^ ^4 run particle explosion ~ ~ ~ 0 0 0 0 1 force
#execute at @e[tag=ui_temp_target,sort=random,limit=1] run particle dust 1 1 1 10 ~ ~ ~ 0 0 0 0 1 force
tag @e[tag=ui_temp_target,sort=random,limit=1] add ui_temp_target2
#say @e[tag=ui_temp_target2]

# ミサイルを召喚する
scoreboard players set $success ui_temp 0
scoreboard players set $obj_id ui_temp 0
scoreboard players operation $obj_id ui_temp = @e[tag=ui_temp_target2] ui_obj_id
#id
#team
scoreboard players set $particle.end ui_temp 205
scoreboard players set $speed ui_temp 60
scoreboard players set $speed.add ui_temp 0
scoreboard players set $range ui_temp 80
scoreboard players set $spread ui_temp 200
scoreboard players set $damage ui_temp 100
data modify storage ui:temp temp.Name set value '{"text":"マルチミサイル","color":"gold"}'
scoreboard players set $deathmessage ui_temp 1
execute as @e[distance=1..75,tag=!ui_temp_team,predicate=ui:load_unhurtable] if score @s ui_obj_id = $obj_id ui_temp at @s positioned ~ ~ ~ run function ui:tmw/237/attack/missile/fire_here
execute if score $success ui_temp matches 0 at @e[distance=..10,predicate=ui:load_unhurtable,sort=nearest,limit=1] positioned ~ ~ ~ run function ui:tmw/237/attack/missile/fire_here

# データ消し
kill @e[tag=ui_temp_marker]
data remove storage ui:temp temp.Name
