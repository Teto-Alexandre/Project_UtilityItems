scoreboard players operation $obj_id ui_temp = @s ui_gpc
#tellraw @a [{"score":{"name":"$obj_id","objective":"ui_temp"}}]
execute as @e[predicate=ui:load_unhurtable,distance=..150] if score @s ui_obj_id = $obj_id ui_temp store success score $temp ui_temp at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["tm_mis3"],Age:1}
#execute as @e[predicate=ui:load_unhurtable,distance=..150] if score @s ui_obj_id = $obj_id ui_temp run say a
#execute if score $temp ui_temp matches 0 run say error : b
#scoreboard players set @e ui_temp 0
#execute as @e[predicate=ui:load_unhurtable,distance=..150] if score @s ui_obj_id = $obj_id ui_temp run scoreboard players set @s ui_temp 1

#execute as @s unless entity @e[tag=tm_mis3] run say error : a
execute as @s unless entity @e[tag=tm_mis3] run tag @s add ex

data modify storage ui:weapon temp.Motion set from entity @s Motion
data modify storage ui:weapon temp.Pos set from entity @s Pos


execute store result score $x2 ui_temp run data get storage ui:weapon temp.Motion.[0] -100000
execute store result score $y2 ui_temp run data get storage ui:weapon temp.Motion.[1] -100000
execute store result score $z2 ui_temp run data get storage ui:weapon temp.Motion.[2] -100000
scoreboard players remove $y2 ui_temp 11500
#tellraw @a [{"score":{"name":"$x2","objective":"ui_temp"}},{"text":" "},{"score":{"name":"$y2","objective":"ui_temp"}},{"text":" "},{"score":{"name":"$z2","objective":"ui_temp"}}]
execute if score $x2 ui_temp matches 0 run tag @s add ex
execute if score $y2 ui_temp matches -3660 run tag @s add ex
execute if score $z2 ui_temp matches 0 run tag @s add ex
scoreboard players operation $y2 ui_temp -= #10 tm_num
execute at @s facing entity @e[tag=tm_mis3] feet run summon minecraft:area_effect_cloud ^ ^ ^0.2 {Tags:["tm_mis2"],Age:1}
execute store result score $x1 ui_temp run data get storage ui:weapon temp.Pos.[0] 100000
execute store result score $y1 ui_temp run data get storage ui:weapon temp.Pos.[1] 100000
execute store result score $z1 ui_temp run data get storage ui:weapon temp.Pos.[2] 100000
execute as @e[tag=tm_mis2,sort=nearest,limit=1] store result score $x3 ui_temp run data get entity @s Pos.[0] 100000
execute as @e[tag=tm_mis2,sort=nearest,limit=1] store result score $y3 ui_temp run data get entity @s Pos.[1] 100000
execute as @e[tag=tm_mis2,sort=nearest,limit=1] store result score $z3 ui_temp run data get entity @s Pos.[2] 100000
scoreboard players operation $x1 ui_temp -= $x3 ui_temp
scoreboard players operation $y1 ui_temp -= $y3 ui_temp
scoreboard players operation $z1 ui_temp -= $z3 ui_temp
scoreboard players operation $x2 ui_temp += $x1 ui_temp
scoreboard players operation $y2 ui_temp += $y1 ui_temp
scoreboard players operation $z2 ui_temp += $z1 ui_temp
execute store result storage ui:weapon temp.Motion.[0] double -0.00001 run scoreboard players get $x2 ui_temp
execute store result storage ui:weapon temp.Motion.[1] double -0.00001 run scoreboard players get $y2 ui_temp
execute store result storage ui:weapon temp.Motion.[2] double -0.00001 run scoreboard players get $z2 ui_temp
data modify entity @s Motion set from storage ui:weapon temp.Motion

execute at @s run particle minecraft:cloud ~ ~ ~ 0 0 0 0 1 force

execute at @s if entity @e[tag=tm_mis3,distance=..3] run tag @s add ex

tag @s[nbt={PortalCooldown:0}] add ex

kill @e[tag=tm_mis2]
kill @e[tag=tm_mis3]

data remove storage ui:weapon temp
tag @e[tag=tm_mis3] remove ui_temp_target

execute as @s[tag=ex] at @s run summon firework_rocket ~ ~ ~ {Life:0,LifeTime:0,FireworksItem:{id:"minecraft:firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:0,Colors:[I;16711680,16756224,16514816],FadeColors:[I;16777215]}]}}}}
execute as @s[tag=ex] at @s run particle explosion ~ ~ ~ 0 0 0 0 1 force
kill @s[tag=ex]