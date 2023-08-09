#
    execute if score $firetime.temp ui_temp matches 0 if score @s ui_tmw601_accessory matches 5003 run tellraw @a [{"text":"Mimic","color": "gray"},{"text":"> ","color": "green"},{"text":"[縦斬り] > RC, Sneak+RC, Dash+RC","color": "white"}]
    execute if score $firetime.temp ui_temp matches 0 run function ui:tmw/255/player/crossbow/fire/template/fire_shot
    execute if score $firetime.temp ui_temp matches 0 run data merge storage ui:common {input:{Mode:"create",Var:-10032,Var2:5}}
    execute if score $firetime.temp ui_temp matches 0 at @s rotated ~ 0 positioned ^ ^ ^2.5 positioned ~ ~1 ~ rotated ~90 90 run function ui:common/particle
    execute if score $firetime.temp ui_temp matches 12 store success score $changed ui_temp run scoreboard players set $firetime ui_temp 0

#
    execute if score $firetime.temp ui_temp matches 100 if score @s ui_tmw601_accessory matches 5003 run tellraw @a [{"text":"Mimic","color": "gray"},{"text":"> ","color": "green"},{"text":"[X斬り] > RC, Sneak+RC, Dash+RC","color": "white"}]
    execute if score $firetime.temp ui_temp matches 100 run function ui:tmw/255/player/crossbow/fire/template/fire_shot
    execute if score $firetime.temp ui_temp matches 100 run data merge storage ui:common {input:{Mode:"create",Var:-10032,Var2:2}}
    execute if score $firetime.temp ui_temp matches 100 at @s rotated ~ 0 positioned ^ ^ ^2.5 positioned ~ ~1 ~ rotated ~90 -20 run function ui:common/particle
    execute if score $firetime.temp ui_temp matches 100 run function ui:tmw/255/player/crossbow/fire/template/fire_shot
    execute if score $firetime.temp ui_temp matches 100 run data merge storage ui:common {input:{Mode:"create",Var:-10032,Var2:2}}
    execute if score $firetime.temp ui_temp matches 100 at @s rotated ~ 0 positioned ^ ^ ^2.5 positioned ~ ~1 ~ rotated ~90 20 run function ui:common/particle
    execute if score $firetime.temp ui_temp matches 110 store success score $changed ui_temp run scoreboard players set $firetime ui_temp 0

#
    execute if score $firetime.temp ui_temp matches 200 if score @s ui_tmw601_accessory matches 5003 run tellraw @a [{"text":"Mimic","color": "gray"},{"text":"> ","color": "green"},{"text":"[乱斬り五連] > RC, Sneak+RC","color": "white"}]
    execute if score $firetime.temp ui_temp matches 200 run function ui:tmw/255/player/crossbow/fire/template/fire_shot
    execute if score $firetime.temp ui_temp matches 200 run data merge storage ui:common {input:{Mode:"create",Var:-10032,Var2:2,Rand:{RotY:1}}}
    execute if score $firetime.temp ui_temp matches 200 at @s rotated ~ 0 positioned ^ ^ ^2.5 positioned ~ ~1 ~ rotated ~90 0 run function ui:common/particle
    execute if score $firetime.temp ui_temp matches 203 run function ui:tmw/255/player/crossbow/fire/template/fire_shot
    execute if score $firetime.temp ui_temp matches 203 run data merge storage ui:common {input:{Mode:"create",Var:-10032,Var2:2,Rand:{RotY:1}}}
    execute if score $firetime.temp ui_temp matches 203 at @s rotated ~ 0 positioned ^ ^ ^2.5 positioned ~ ~1 ~ rotated ~90 0 run function ui:common/particle
    execute if score $firetime.temp ui_temp matches 206 run function ui:tmw/255/player/crossbow/fire/template/fire_shot
    execute if score $firetime.temp ui_temp matches 206 run data merge storage ui:common {input:{Mode:"create",Var:-10032,Var2:2,Rand:{RotY:1}}}
    execute if score $firetime.temp ui_temp matches 206 at @s rotated ~ 0 positioned ^ ^ ^2.5 positioned ~ ~1 ~ rotated ~90 0 run function ui:common/particle
    execute if score $firetime.temp ui_temp matches 209 run function ui:tmw/255/player/crossbow/fire/template/fire_shot
    execute if score $firetime.temp ui_temp matches 209 run data merge storage ui:common {input:{Mode:"create",Var:-10032,Var2:2,Rand:{RotY:1}}}
    execute if score $firetime.temp ui_temp matches 209 at @s rotated ~ 0 positioned ^ ^ ^2.5 positioned ~ ~1 ~ rotated ~90 0 run function ui:common/particle
    execute if score $firetime.temp ui_temp matches 212 run function ui:tmw/255/player/crossbow/fire/template/fire_shot
    execute if score $firetime.temp ui_temp matches 212 run data merge storage ui:common {input:{Mode:"create",Var:-10032,Var2:2,Rand:{RotY:1}}}
    execute if score $firetime.temp ui_temp matches 212 at @s rotated ~ 0 positioned ^ ^ ^2.5 positioned ~ ~1 ~ rotated ~90 0 run function ui:common/particle
    execute if score $firetime.temp ui_temp matches 220 store success score $changed ui_temp run scoreboard players set $firetime ui_temp 0

#
    execute if score $firetime.temp ui_temp matches 300 if score @s ui_tmw601_accessory matches 5003 run tellraw @a [{"text":"Mimic","color": "gray"},{"text":"> ","color": "green"},{"text":"[大切断・縦] > End","color": "white"}]
    execute if score $firetime.temp ui_temp matches 300 run playsound entity.zombie_villager.cure player @a ~ ~ ~ 1 1.5
    execute if score $firetime.temp ui_temp matches 302 run playsound entity.zombie_villager.cure player @a ~ ~ ~ 1 1
    execute if score $firetime.temp ui_temp matches 304 run playsound entity.zombie_villager.cure player @a ~ ~ ~ 1 0.8
    execute if score $firetime.temp ui_temp matches 304..314 run particle block redstone_block ~ ~ ~ 1 1 1 0 3 force
    execute if score $firetime.temp ui_temp matches 304..314 run particle dust 1 0 0 1 ~ ~ ~ 1 1 1 0 3 force
    execute if score $firetime.temp ui_temp matches 314 run function ui:tmw/255/player/crossbow/fire/template/fire_burst
    execute if score $firetime.temp ui_temp matches 314 run data merge storage ui:common {input:{Mode:"create",Var:-10032,Var2:6}}
    execute if score $firetime.temp ui_temp matches 314 at @s rotated ~ 0 positioned ^ ^ ^2.5 positioned ~ ~1 ~ rotated ~90 90 run function ui:common/particle
    execute if score $firetime.temp ui_temp matches 314 store success score $changed ui_temp run scoreboard players set $firetime ui_temp 0

#
    scoreboard players set $success ui_temp 1