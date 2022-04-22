#=======================================================================================================

tag @s[tag=tmw_oh_s] add tmw_oh_n
execute unless entity @e[tag=tmw_10_3,tag=tmw_10_1] run tag @s remove tmw_oh_n
execute unless entity @e[tag=tmw_10_3,tag=tmw_10_2] run tag @s remove tmw_oh_n

#未確定アンカーを可視化する
execute at @e[tag=tmw_10_3] run particle minecraft:dust 1 1 0.1 1 ~ ~ ~ 0.2 0.2 0.2 0 10 force @a[scores={ui_tmw_id=10}]

#Q:その場アンカー設置（１）
execute as @s[tag=tmw_drop_n] at @s run kill @e[tag=tmw_10_3,tag=tmw_10_1]
execute as @s[tag=tmw_drop_n] at @s run summon minecraft:armor_stand ~ ~0.5 ~ {Marker:1b,NoGravity:1b,Invisible:1b,Tags:["tmw_proj","tmw_10_3_1","tmw_10_3","tmw_10_1"]}
execute as @s[tag=tmw_drop_n] at @s run playsound minecraft:entity.zombie.attack_iron_door master @a ~ ~ ~ 0.8 1.8 0
execute as @s[tag=tmw_drop_n] at @s run particle minecraft:dust 1 1 0.1 1 ~ ~1 ~ 0.5 0.5 0.5 0 10 normal
execute as @s[tag=tmw_drop_n] at @s run particle minecraft:dust 1 1 0.5 1 ~ ~1 ~ 0.5 0.5 0.5 0 10 normal
#tag @s[tag=tmw_drop_n] add tmw_r_10

#S+Q:アンカー設置レーザー（２）
execute as @s[tag=tmw_drop_s] at @s run kill @e[tag=tmw_10_3,tag=tmw_10_2]
execute as @s[tag=tmw_drop_s] at @s run summon minecraft:armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,Invisible:1b,Tags:["tmw_proj","tmw_10_4"]}
execute as @s[tag=tmw_drop_s] at @s run teleport @e[tag=tmw_10_4,tag=!tmw_10_4d,sort=nearest,limit=1] ~ ~1 ~ ~ ~
execute as @s[tag=tmw_drop_s] at @s run tag @e[tag=tmw_10_4,tag=!tmw_10_4d,sort=nearest,limit=1] add tmw_10_4d
execute at @s[tag=tmw_drop_s] as @e[tag=tmw_10_4] run function ui:tmw/10/10_4
execute as @s[tag=tmw_drop_s] at @s run playsound minecraft:block.iron_door.close master @a ~ ~ ~ 1 1.5 0
execute as @s[tag=tmw_drop_s] at @s run particle minecraft:dust 1 1 0.5 1 ~ ~1 ~ 0.5 0.5 0.5 0 10 normal
#tag @s[tag=tmw_drop_s] add tmw_r_10

#旧S+Q:アンカー設置２
    #execute as @s[tag=tmw_drop_s] at @s run kill @e[tag=tmw_10_3,tag=tmw_10_2]
    #execute as @s[tag=tmw_drop_s] at @s run summon minecraft:armor_stand ~ ~1 ~ {Marker:1b,NoGravity:1b,Invisible:1b,Tags:["tmw_proj","tmw_10_3","tmw_10_2"]}
    #execute as @s[tag=tmw_drop_s] at @s run playsound minecraft:entity.zombie.attack_iron_door master @a ~ ~ ~ 0.8 1.8 0
    #execute as @s[tag=tmw_drop_s] at @s run particle minecraft:dust 1 1 0.1 1 ~ ~1 ~ 0.5 0.5 0.5 0 10 normal
    #execute as @s[tag=tmw_drop_s] at @s run particle minecraft:dust 1 1 0.5 1 ~ ~1 ~ 0.5 0.5 0.5 0 10 normal
    #tag @s[tag=tmw_drop_s] add tmw_r_10

#F:アンカー確定
execute as @s[tag=tmw_oh_n] at @e[tag=tmw_10_3,tag=tmw_10_1] unless entity @e[tag=tmw_10_3,tag=tmw_10_2,distance=..75] run tag @s add tmw_10_far
execute as @s[tag=tmw_10_far] run tag @s remove tmw_oh_n
execute at @s[tag=tmw_10_far] run playsound block.tripwire.detach master @s ~ ~ ~ 1 1 1
execute as @s[tag=tmw_10_far] at @e[tag=tmw_10_3] run particle large_smoke ~ ~ ~ 0.1 0.1 0.1 0.05 10 force
execute as @s[tag=tmw_10_far] at @s run item replace entity @s weapon.offhand with air
tag @s[tag=tmw_10_far] add tmw_r_10
execute as @s[tag=tmw_10_far] run tag @s remove tmw_10_far
execute as @s[tag=tmw_oh_n] at @s run scoreboard players operation @e[tag=tmw_10_3] ui_calc1 = $tmw10 ui_calc1
execute as @s[tag=tmw_oh_n] at @s run tag @e[tag=tmw_10_3] remove tmw_10_3
execute as @s[tag=tmw_oh_n] at @s run scoreboard players add $tmw10 ui_calc1 1
execute as @s[tag=tmw_oh_n] at @s run playsound minecraft:entity.player.levelup master @a ~ ~ ~ 0.8 1.8 0
execute as @s[tag=tmw_oh_n] at @s run particle minecraft:crit ~ ~1 ~ 0.1 0.1 0.1 0.5 10 normal
execute as @s[tag=tmw_oh_n] at @e[tag=tmw_10_3] run particle minecraft:crit ~ ~1 ~ 0.1 0.1 0.1 0.5 10 normal
execute as @s[tag=tmw_oh_n] at @s run effect give @s wither 1 1 true
execute as @s[tag=tmw_oh_n] at @s run scoreboard players add @s ui_hp 3
#execute as @s[tag=tmw_oh_n] at @s run item replace entity @s weapon.offhand with air
#tag @s[tag=tmw_oh_n] add tmw_r_10

#execute as @s[tag=tmw_r_10] run item replace entity @s weapon.mainhand with air
#execute as @s[tag=tmw_r_10] run item replace entity @s weapon.mainhand with minecraft:golden_hoe{tmw:{is:1,id:10},Unbreakable:1b,Enchantments:[{id:"unbreaking",lvl:1s}],HideFlags:7,display:{Name:'[{"text":"トルニクス・アンカー","color":"yellow","italic":false,"bold":true}]',Lore:['[{"text":"QとS+Qで移動用のアンカーを設置する","color":"gray","italic":false}]','[{"text":"Fでアンカー配置を確定","color":"gray","italic":false}]','[{"text":"アンカーは1分経過で砕ける","color":"gray","italic":false}]']}}
#execute as @s[tag=tmw_r_10] run tag @s remove tmw_r_10

#=======================================================================================================