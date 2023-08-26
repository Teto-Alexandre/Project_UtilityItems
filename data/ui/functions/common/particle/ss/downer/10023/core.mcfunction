#

#
execute if score $is ui_temp matches 1 run scoreboard players set $mod ui_calc1 40
execute if score $is ui_temp matches 1 run function ui:common/rand
execute if score $is ui_temp matches 1 run scoreboard players operation @s ui_is += $rand ui_calc1

#execute if score $is ui_temp matches 1.. if score $is_temp ui_temp matches 1 at @s run function ui:common/particle/ss/downer/10013/period
#
particle end_rod ^ ^ ^ 0.1 0.1 0.1 0 2 force
execute if score $is ui_temp matches 40..59 run particle electric_spark ^ ^ ^1 0 0 0 1 2 force
execute if score $is ui_temp matches 40..59 run playsound entity.generic.explode player @a ~ ~ ~ 1 2 0

#
scoreboard players operation $is_temp ui_temp = $is ui_temp
scoreboard players operation $is_temp ui_temp %= #3 ui_num
execute if score $is ui_temp matches 60..69 if score $is_temp ui_temp matches 0 run data merge storage ui:object_maker {temp:{DisplayName:'{"text":"開展","color":"white"}',NoShot:0,Mass:1,Speed:10000,AirRes:1,Gravity:0,Pack:1,Spread:100,DamageType:2,WeakMultiplier:100,BackMultiplier:100,FlyParticle:1,EndParticle:-1,FlyModifiers:[],Sound:1,Muzzle:71,Range:100}}
execute if score $is ui_temp matches 60..69 if score $is_temp ui_temp matches 0 run execute at @s facing entity @e[distance=..50,predicate=ui:load_unhurtable,tag=!ui_temp_team,sort=random,limit=1] eyes run function ui:tmw/255/player/crossbow/attack/shot/common

#
#data merge storage ui:common {input:{Mode:"orbit",Num:1,Offset:0}}
#execute store result storage ui:common input.Offset int 2 run scoreboard players get $is ui_temp
#function ui:common/formation/

#
#execute facing entity @e[tag=ui_temp_common_formation_marker,limit=1] feet if score $is_temp ui_temp matches 1 run function ui:common/particle/ss/downer/10022/period
execute facing entity @e[tag=ui_temp_common_formation_marker,limit=1] feet run function ui:common/particle/ss/downer/10022/period
execute as @e[tag=ui_temp_common_formation_marker,limit=1] at @s run particle end_rod ~ ~ ~ 0 0 0 0 1 force
kill @e[tag=ui_temp_common_formation_marker]

#
execute if score $is ui_temp matches 70.. run kill @s
