# 盾で防ぐ

#
    execute at @s positioned ^ ^ ^0.1 rotated ~ 0 run summon magma_cube ~ ~ ~ {Tags:["ui_common_shield_slime"],ActiveEffects:[{Id:14,Duration:20,ShowParticles:0b}],HandItems:[{id:"wooden_axe",Count:1b},{}],Attributes:[{Name:"generic.attack_damage",Base:-100}]}
    execute as @e[tag=ui_common_shield_slime] facing entity @p feet run teleport @s ~ ~ ~ ~ ~
    schedule function ui:common/shield_guard/kill_slime 1t

data merge storage ui:common {input:{Damage:1}}
execute store result storage ui:common input.Damage int 0.02 run scoreboard players add $Damage tds_dmg 100

function ui:common/shield_guard

scoreboard players set $Damage tds_dmg 0