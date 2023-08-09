#
    execute if score $firetime.temp ui_temp matches 0 if score @s ui_tmw601_accessory matches 5003 run tellraw @a [{"text":"Mimic","color": "gray"},{"text":"> ","color": "green"},{"text":"[前大ジャンプ] > End","color": "white"}]
    execute if score $firetime.temp ui_temp matches 0 run function ui:tmw/255/player/crossbow/fire/template/fire_shot
    execute if score $firetime.temp ui_temp matches 0 run data merge storage ui:common {input:{Mode:"knockback",Mult:250}}
    execute if score $firetime.temp ui_temp matches 0 at @s rotated ~ -20 run function ui:common/motion/
    execute if score $firetime.temp ui_temp matches 0 run particle cloud ~ ~ ~ 0 0 0 0.3 30 force
    execute if score $firetime.temp ui_temp matches 0 run particle dust 1 1 1 1 ~ ~ ~ 1 1 1 0 50 force
    execute if score $firetime.temp ui_temp matches 0 run playsound entity.wither.shoot player @a ~ ~ ~ 1 1.2
    execute if score $firetime.temp ui_temp matches 10 store success score $changed ui_temp run scoreboard players set $firetime ui_temp 0

#
    execute if score $firetime.temp ui_temp matches 100 if score @s ui_tmw601_accessory matches 5003 run tellraw @a [{"text":"Mimic","color": "gray"},{"text":"> ","color": "green"},{"text":"[突き] > End","color": "white"}]
    execute if score $firetime.temp ui_temp matches 100 run effect give @s strength 5 2 true
    execute if score $firetime.temp ui_temp matches 100 run particle cloud ~ ~ ~ 0 0 0 0.3 30 force
    execute if score $firetime.temp ui_temp matches 100 run particle dust 1 0 0 1 ~ ~ ~ 1 1 1 0 50 force
    execute if score $firetime.temp ui_temp matches 100 run function ui:tmw/255/player/crossbow/fire/template/fire_shot
    execute if score $firetime.temp ui_temp matches 100 run data merge storage ui:common {input:{Mode:"create",Var:-10032,Var2:8}}
    execute if score $firetime.temp ui_temp matches 100 at @s rotated ~ 0 positioned ^ ^ ^11 positioned ~ ~1 ~ rotated ~180 ~ run function ui:common/particle
    execute if score $firetime.temp ui_temp matches 110 store success score $changed ui_temp run scoreboard players set $firetime ui_temp 0

#
    execute if score $firetime.temp ui_temp matches 200 if score @s ui_tmw601_accessory matches 5003 run tellraw @a [{"text":"Mimic","color": "gray"},{"text":"> ","color": "green"},{"text":"[突進] > End","color": "white"}]
    execute if score $firetime.temp ui_temp matches 200 run effect give @s speed 1 4 true
    execute if score $firetime.temp ui_temp matches 200 run particle cloud ~ ~ ~ 0 0 0 0.3 30 force
    execute if score $firetime.temp ui_temp matches 200 run particle dust 1 0 0 1 ~ ~ ~ 1 1 1 0 50 force
    execute if score $firetime.temp ui_temp matches 200 run playsound entity.zombie_villager.converted player @a ~ ~ ~ 1 2
    execute if score $firetime.temp ui_temp matches 200 run function ui:tmw/255/player/crossbow/fire/template/fire_shot
    execute if score $firetime.temp ui_temp matches 200 run data merge storage ui:common {input:{Mode:"create",Var:-10032,Var2:7,Rand:{RotY:1}}}
    execute if score $firetime.temp ui_temp matches 200 at @s rotated ~ 0 positioned ^ ^ ^3.5 positioned ~ ~1 ~ rotated ~90 0 run function ui:common/particle
    execute if score $firetime.temp ui_temp matches 202 run function ui:tmw/255/player/crossbow/fire/template/fire_shot
    execute if score $firetime.temp ui_temp matches 202 run data merge storage ui:common {input:{Mode:"create",Var:-10032,Var2:7,Rand:{RotY:1}}}
    execute if score $firetime.temp ui_temp matches 202 at @s rotated ~ 0 positioned ^ ^ ^3.5 positioned ~ ~1 ~ rotated ~90 0 run function ui:common/particle
    execute if score $firetime.temp ui_temp matches 204 run function ui:tmw/255/player/crossbow/fire/template/fire_shot
    execute if score $firetime.temp ui_temp matches 204 run data merge storage ui:common {input:{Mode:"create",Var:-10032,Var2:7,Rand:{RotY:1}}}
    execute if score $firetime.temp ui_temp matches 204 at @s rotated ~ 0 positioned ^ ^ ^3.5 positioned ~ ~1 ~ rotated ~90 0 run function ui:common/particle
    execute if score $firetime.temp ui_temp matches 206 run function ui:tmw/255/player/crossbow/fire/template/fire_shot
    execute if score $firetime.temp ui_temp matches 206 run data merge storage ui:common {input:{Mode:"create",Var:-10032,Var2:7,Rand:{RotY:1}}}
    execute if score $firetime.temp ui_temp matches 206 at @s rotated ~ 0 positioned ^ ^ ^3.5 positioned ~ ~1 ~ rotated ~90 0 run function ui:common/particle
    execute if score $firetime.temp ui_temp matches 208 run function ui:tmw/255/player/crossbow/fire/template/fire_shot
    execute if score $firetime.temp ui_temp matches 208 run data merge storage ui:common {input:{Mode:"create",Var:-10032,Var2:7,Rand:{RotY:1}}}
    execute if score $firetime.temp ui_temp matches 208 at @s rotated ~ 0 positioned ^ ^ ^3.5 positioned ~ ~1 ~ rotated ~90 0 run function ui:common/particle
    execute if score $firetime.temp ui_temp matches 210 run function ui:tmw/255/player/crossbow/fire/template/fire_shot
    execute if score $firetime.temp ui_temp matches 210 run data merge storage ui:common {input:{Mode:"create",Var:-10032,Var2:7,Rand:{RotY:1}}}
    execute if score $firetime.temp ui_temp matches 210 at @s rotated ~ 0 positioned ^ ^ ^3.5 positioned ~ ~1 ~ rotated ~90 0 run function ui:common/particle
    execute if score $firetime.temp ui_temp matches 212 run function ui:tmw/255/player/crossbow/fire/template/fire_shot
    execute if score $firetime.temp ui_temp matches 212 run data merge storage ui:common {input:{Mode:"create",Var:-10032,Var2:7,Rand:{RotY:1}}}
    execute if score $firetime.temp ui_temp matches 212 at @s rotated ~ 0 positioned ^ ^ ^3.5 positioned ~ ~1 ~ rotated ~90 0 run function ui:common/particle
    execute if score $firetime.temp ui_temp matches 214 run function ui:tmw/255/player/crossbow/fire/template/fire_shot
    execute if score $firetime.temp ui_temp matches 214 run data merge storage ui:common {input:{Mode:"create",Var:-10032,Var2:7,Rand:{RotY:1}}}
    execute if score $firetime.temp ui_temp matches 214 at @s rotated ~ 0 positioned ^ ^ ^3.5 positioned ~ ~1 ~ rotated ~90 0 run function ui:common/particle
    execute if score $firetime.temp ui_temp matches 216 run function ui:tmw/255/player/crossbow/fire/template/fire_shot
    execute if score $firetime.temp ui_temp matches 216 run data merge storage ui:common {input:{Mode:"create",Var:-10032,Var2:7,Rand:{RotY:1}}}
    execute if score $firetime.temp ui_temp matches 216 at @s rotated ~ 0 positioned ^ ^ ^3.5 positioned ~ ~1 ~ rotated ~90 0 run function ui:common/particle
    execute if score $firetime.temp ui_temp matches 220 store success score $changed ui_temp run scoreboard players set $firetime ui_temp 0

#
    scoreboard players set $success ui_temp 1