#=======================================================================================================

tag @s[tag=tmw_oh_s] add tmw_oh_n

execute at @s[tag=tmw_use] run playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 0.7 1.8 0
execute at @s[tag=tmw_use] run effect give @s minecraft:haste 3 1 true
#tag @s[tag=tmw_use] add tmw_r_13

#Q:1:光の鎖
execute as @e[tag=tmw_13_2] run scoreboard players operation @s ui_idc = @s ui_id
scoreboard players operation @e[tag=tmw_13_2] ui_idc -= @s ui_id
execute as @s[tag=tmw_drop_n] at @s run kill @e[tag=tmw_13_2,scores={ui_idc=0}]
execute as @s[tag=tmw_drop_n] at @s run kill @e[tag=tmw_13_5,scores={ui_idc=0}]
execute as @s[tag=tmw_drop_n] at @s run summon minecraft:armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,Invisible:1b,Tags:["tmw_proj","tmw_13_1"]}
execute as @s[tag=tmw_drop_n] at @s run playsound minecraft:entity.lightning_bolt.thunder master @a ~ ~ ~ 0.8 1.8 0
execute as @s[tag=tmw_drop_n] at @s run scoreboard players operation @e[tag=tmw_13_1,tag=!tmw_13_1d,sort=nearest,limit=1] ui_id = @s ui_id
execute as @s[tag=tmw_drop_n] at @s positioned ~ ~1.6 ~ run teleport @e[tag=tmw_13_1,tag=!tmw_13_1d,sort=nearest,limit=1] ^ ^ ^2.5 ~ ~
execute as @s[tag=tmw_drop_n] at @s run tag @e[tag=tmw_13_1,tag=!tmw_13_1d,sort=nearest,limit=1] add tmw_13_1d
execute as @s[tag=tmw_drop_n] at @s run particle minecraft:dust 1 1 0.5 1 ~ ~1 ~ 0.5 0.5 0.5 0 10 normal
execute as @s[tag=tmw_drop_n] at @s run effect give @s wither 1 1 true
execute as @s[tag=tmw_drop_n] at @s run scoreboard players add @s ui_hp 1
#tag @s[tag=tmw_drop_n] add tmw_r_13

execute as @s[tag=tmw_drop_s] at @s run effect give @a[distance=..10] minecraft:blindness 2 0 true
execute as @s[tag=tmw_drop_s] at @s run effect give @a[distance=..10] minecraft:nausea 7 0 true
execute as @s[tag=tmw_drop_s] at @s run effect give @a[distance=..10] minecraft:wither 1 1 true
execute as @s[tag=tmw_drop_s] run effect clear @s minecraft:blindness
execute as @s[tag=tmw_drop_s] run effect clear @s minecraft:nausea
execute as @s[tag=tmw_drop_s] run scoreboard players add @s ui_hp 1
execute as @s[tag=tmw_drop_s] at @s run particle minecraft:firework ~ ~1 ~ 0.8 0.8 0.8 0.2 20 force
execute as @s[tag=tmw_drop_s] at @s run playsound minecraft:block.beacon.deactivate master @a ~ ~ ~ 0.8 1.8 0
#tag @s[tag=tmw_drop_s] add tmw_r_13

#F:2:壁貫通雷ビーム
execute as @s[tag=tmw_oh_n] at @s run summon minecraft:armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,Invisible:1b,Tags:["tmw_proj","tmw_13_4"]}
execute as @s[tag=tmw_oh_n] at @s run playsound minecraft:entity.elder_guardian.death master @a ~ ~ ~ 0.8 1.5 0
execute as @s[tag=tmw_oh_n] at @s run teleport @e[tag=tmw_13_4,tag=!tmw_13_4d,sort=nearest,limit=1] ~ ~1 ~ ~ ~
execute as @s[tag=tmw_oh_n] at @s run tag @e[tag=tmw_13_4,tag=!tmw_13_4d,sort=nearest,limit=1] add tmw_13_4d
execute as @s[tag=tmw_oh_n] at @s run particle minecraft:dust 1 1 0.5 1 ~ ~1 ~ 0.5 0.5 0.5 0 10 normal
execute as @s[tag=tmw_oh_n] at @s run effect give @s wither 1 1 true
execute as @s[tag=tmw_oh_n] at @s run scoreboard players add @s ui_hp 2
#execute as @s[tag=tmw_oh_n] at @s run item replace entity @s weapon.offhand with air
#tag @s[tag=tmw_oh_n] add tmw_r_13

#execute as @s[tag=tmw_r_13] run item replace entity @s weapon.mainhand with minecraft:wooden_sword{tmw:{is:1,id:13},Enchantments:[{id:"unbreaking",lvl:1s}],HideFlags:3,display:{Name:'[{"text":"魔剣カラドボルグ","color":"yellow","italic":false,"bold":true}]',Lore:['[{"text":"通常攻撃: 閃刃[加速]","color":"gray","italic":false}]','[{"text":"  短時間攻撃速度上昇","color":"gray","italic":false}]','[{"text":"Q:[","color":"gray","italic":false},{"text":"5%","color":"red","italic":false},{"text":"]: 光鎖","color":"gray","italic":false}]','[{"text":"  壁に鎖を突き刺して移動する","color":"gray","italic":false}]','[{"text":"S+Q:[","color":"gray","italic":false},{"text":"5%","color":"red","italic":false},{"text":"]: 電気パルス","color":"gray","italic":false}]','[{"text":"  めまいを引き起こす","color":"gray","italic":false}]','[{"text":"F:[","color":"gray","italic":false},{"text":"10%","color":"red","italic":false},{"text":"]: スタンボルト","color":"gray","italic":false}]','[{"text":"  壁を貫通する光線弾","color":"gray","italic":false}]']}}
#execute as @s[tag=tmw_r_13] run tag @s remove tmw_r_13

execute at @s run particle dust 1 1 0.2 0.6 ~ ~0.2 ~ 0.5 0.1 0.5 0 2 force

#=======================================================================================================
