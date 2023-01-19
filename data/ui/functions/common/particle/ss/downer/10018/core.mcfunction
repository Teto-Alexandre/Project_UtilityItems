#
execute if score $is ui_temp matches 1 unless block ~ ~ ~ #ui:nocol run function ui:common/particle/ss/downer/10018/inblock
execute at @s if score $is ui_temp matches 1 if block ~ ~-0.1 ~ #ui:nocol run function ui:common/particle/ss/downer/10018/inair
execute at @s if score $is ui_temp matches 1 run summon armor_stand ~30 ~60 ~20 {ArmorItems:[{},{},{},{id:"minecraft:command_block",Count:1b,tag:{CustomModelData:192001}}],Invisible:1b,Marker:1b,NoGravity:1b,Tags:["ui_common_projectile_-10018_model"]}
execute if score $is ui_temp matches 1 run function ui:common/particle/ss/downer/10018/custom_model/ss

#
#scoreboard players operation $is_temp ui_temp = $is ui_temp
#scoreboard players operation $is_temp ui_temp %= #2 ui_num
#execute if score $is ui_temp matches ..50 if score $is_temp ui_temp matches 0 as @a[distance=..50] at @s run teleport @s ~0.1 ~0.15 ~
#execute if score $is ui_temp matches ..50 if score $is_temp ui_temp matches 1 as @a[distance=..50] at @s run teleport @s ~-0.1 ~0.15 ~

#
scoreboard players operation $is_temp ui_temp = $is ui_temp
scoreboard players operation $is_temp ui_temp %= #3 ui_num
execute if score $is ui_temp matches ..50 if score $is_temp ui_temp matches 0 at @e[tag=ui_common_projectile_-10018_model,sort=nearest,limit=1] as @e[distance=..7,predicate=ui:load_unhurtable,tag=!ui_temp_team] at @s run function ui:common/particle/ss/downer/10018/damage_direct

#
scoreboard players operation $is_temp ui_temp = $is ui_temp
scoreboard players operation $is_temp ui_temp %= #10 ui_num
execute if score $is ui_temp matches ..50 if score $is_temp ui_temp matches 0 run function ui:common/particle/ss/downer/10018/period

#
execute if score $is ui_temp matches 51 as @e[distance=..20,predicate=ui:load_unhurtable,tag=!ui_temp_team] at @s run function ui:common/particle/ss/downer/10018/damage
execute if score $is ui_temp matches 58 run function ui:common/particle/ss/downer/10018/damage_area

execute if score $is ui_temp matches 51.. if score $is_temp ui_temp matches 0 as @e[distance=..8,predicate=ui:load_unhurtable,tag=!ui_temp_team] at @s run function ui:common/particle/ss/downer/10018/damage3
execute if score $is ui_temp matches 51.. if score $is_temp ui_temp matches 0 as @e[distance=8..16,predicate=ui:load_unhurtable,tag=!ui_temp_team] at @s run function ui:common/particle/ss/downer/10018/damage2

#
#say @e[predicate=ui:load_unhurtable,tag=!ui_temp_team]
#execute if score $is ui_temp matches 42 at @s as @e[distance=..4,predicate=ui:load_unhurtable,tag=!ui_temp_team] at @s run function ui:common/particle/ss/downer/10007/damage
#execute if score $is ui_temp matches 42 at @s run function ui:common/particle/ss/downer/10007/damage_area

#
#execute if score $is ui_temp matches 1 run particle block dirt ~ ~0.1 ~ 2 0.1 2 0 200 force
#execute if score $is ui_temp matches 1 run playsound entity.zombie.attack_wooden_door player @a ~ ~ ~ 1 1
#
#execute if score $is ui_temp matches 11 run particle witch ~ ~ ~ 1 0 1 0 40 force
#execute if score $is ui_temp matches 11 run particle witch ~ ~ ~ 2 0 2 0 50 force
#execute if score $is ui_temp matches 11 run playsound entity.evoker.cast_spell player @a ~ ~ ~ 1 1.5

#
execute if score $is ui_temp matches 200.. run kill @s
