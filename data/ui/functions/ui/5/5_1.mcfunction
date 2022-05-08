#=======================================================================================================

execute store result score $temp ui_temp run gamerule mobGriefing

execute at @s run data merge block ~ ~ ~ {BurnTime:32767s,CookTime:199s}
execute at @s unless block ~ ~1 ~ air if score $temp ui_temp matches 1 run setblock ~ ~1 ~ fire
execute at @s[scores={ui_calc1=0..9}] run data modify block ~ ~ ~ Items append value {Slot:1b,id:"minecraft:yellow_stained_glass_pane",Count:1b,tag:{ui:{ismenu:1},display:{Name:'{"text":"NovaPowerCore","color":"green","italic":false}',Lore:['[{"text":"状態：","color":"gray","italic":false},{"text":" 安定","color":"yellow","italic":false}]']}}}
execute at @s[scores={ui_calc1=10..19}] run data modify block ~ ~ ~ Items append value {Slot:1b,id:"minecraft:orange_stained_glass_pane",Count:1b,tag:{ui:{ismenu:1},display:{Name:'{"text":"NovaPowerCore","color":"green","italic":false}',Lore:['[{"text":"状態：","color":"gray","italic":false},{"text":" 不安定","color":"gold","italic":false}]']}}}
execute at @s[scores={ui_calc1=20..}] run data modify block ~ ~ ~ Items append value {Slot:1b,id:"minecraft:red_stained_glass_pane",Count:1b,tag:{ui:{ismenu:1},display:{Name:'{"text":"NovaPowerCore","color":"green","italic":false}',Lore:['[{"text":"状態：","color":"gray","italic":false},{"text":" 崩壊","color":"red","italic":false}]']}}}

execute at @s run teleport @s ~ ~ ~ ~5 ~
execute at @s run particle dust 1 0 0 0.5 ^ ^1.03 ^0.35 0 0 0 0 1 normal
execute at @s run particle dust 1 0 0 0.5 ^ ^1.03 ^-0.35 0 0 0 0 1 normal
execute at @s run particle dust 1 0.5 0 0.5 ^0.35 ^1.03 ^ 0 0 0 0 1 normal
execute at @s run particle dust 1 0.5 0 0.5 ^-0.35 ^1.03 ^ 0 0 0 0 1 normal
execute at @s run teleport @s ~ ~ ~ ~5 ~
execute at @s run particle dust 1 0 0 0.5 ^ ^1.03 ^0.35 0 0 0 0 1 normal
execute at @s run particle dust 1 0 0 0.5 ^ ^1.03 ^-0.35 0 0 0 0 1 normal
execute at @s run particle dust 1 0.5 0 0.5 ^0.35 ^1.03 ^ 0 0 0 0 1 normal
execute at @s run particle dust 1 0.5 0 0.5 ^-0.35 ^1.03 ^ 0 0 0 0 1 normal
execute at @s run particle dust 3 0 0 1 ~ ~1.05 ~ 0 0 0 0 1 normal
execute at @s[scores={ui_tc=1,ui_calc1=10..}] run particle dust 1 3 0 2 ~ ~1.05 ~ 0 0 0 0 1 normal
execute at @s[scores={ui_tc=11,ui_calc1=10..}] run particle dust 1 3 0 2 ~ ~1.05 ~ 0 0 0 0 1 normal
execute at @s[scores={ui_tc=1,ui_calc1=20..}] run particle lava ~ ~1 ~ 0 0 0 0 3 normal

#爆発確率(毎秒) ~10   0.5%
#              10~20 4%
#              20~   20%
scoreboard players add @s ui_tc 1
scoreboard players add @s[scores={ui_tc=21..}] ui_calc1 1
scoreboard players set @s[scores={ui_tc=21..}] ui_tc 1
scoreboard players set $mod ui_calc1 1000
execute at @s[scores={ui_tc=1}] run function ui:rand
execute at @s[scores={ui_tc=1}] if score $rand ui_calc1 matches 995..999 run tag @s add ui_5_1_2
execute at @s[scores={ui_tc=1,ui_calc1=10..}] if score $rand ui_calc1 matches 960..994 run tag @s add ui_5_1_2
execute at @s[scores={ui_tc=1,ui_calc1=20..}] if score $rand ui_calc1 matches 800..959 run tag @s add ui_5_1_2

execute at @s[tag=ui_5_1_2] run summon fireball ~ ~0.5 ~ {ExplosionPower:25,Motion:[0.0d,-1.0d,0.0d]}
execute if score $temp ui_temp matches 1 at @s[tag=ui_5_1_2] run setblock ~ ~ ~ stone
execute if score $temp ui_temp matches 0 at @s[tag=ui_5_1_2] run setblock ~ ~ ~ air

execute at @s unless block ~ ~ ~ furnace run kill @e[type=item,nbt={Age:0s,Item:{tag:{ui:{ismenu:1}}}}]
execute at @s unless block ~ ~ ~ furnace run kill @e[type=item,nbt={Age:0s,Item:{id:"minecraft:furnace"}}]
execute at @s unless block ~ ~ ~ furnace run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:iron_ingot",Count:8b}}
execute at @s unless block ~ ~ ~ furnace run kill @s

#=======================================================================================================