#=======================================================================================================

#Q:モードチェンジ
execute as @s[tag=tmw_drop_n] at @s run playsound minecraft:entity.blaze.death master @a ~ ~ ~ 1 1.5 0
execute as @s[tag=tmw_drop_n] at @s positioned ~ ~1 ~ run particle minecraft:flame ^ ^ ^0.5 0.1 0.1 0.1 0.3 30 normal
execute as @s[tag=tmw_drop_n,tag=tmw_101-1] run item replace entity @s weapon.mainhand with minecraft:blaze_powder{tmw:{is:1,id:101,type:2,enableQ:1,enableF:1},Enchantments:[{id:"unbreaking",lvl:1s}],HideFlags:3,display:{Name:'[{"text":"暁翼","color":"gold","italic":false,"bold":true}]'}}
execute as @s[tag=tmw_drop_n,tag=tmw_101-2] run item replace entity @s weapon.mainhand with minecraft:blaze_rod{tmw:{is:1,id:101,type:1,enableQ:1,enableF:1},Enchantments:[{id:"unbreaking",lvl:1s}],HideFlags:3,display:{Name:'[{"text":"暁翼","color":"gold","italic":false,"bold":true}]'}}

#F:突進・斬撃
execute as @s[tag=tmw_101-1,tag=tmw_oh_n] at @s run scoreboard players set @s ui_fp 2
execute as @s[tag=tmw_101-1,tag=tmw_oh_n] at @s run scoreboard players set @s ui_ft 60
execute as @s[tag=tmw_101-1,tag=tmw_oh_n] at @s run scoreboard players set @s ui_fc -90
execute as @s[tag=tmw_101-1,tag=tmw_oh_n] at @s run playsound minecraft:entity.blaze.death master @a ~ ~ ~ 1 2 0
execute as @s[tag=tmw_101-1,tag=tmw_oh_n] at @s positioned ~ ~1 ~ run particle minecraft:flame ^ ^ ^0.5 0.1 0.1 0.1 0.3 30 normal
#execute as @s[tag=tmw_101-1,tag=tmw_oh_n] at @s run item replace entity @s weapon.offhand with air
#tag @s[tag=tmw_101-1,tag=tmw_oh_n] add tmw_r_101-1
execute as @s[tag=tmw_101-2,tag=tmw_oh_n] at @s run scoreboard players set @s ui_fp 1
execute as @s[tag=tmw_101-2,tag=tmw_oh_n] at @s run scoreboard players set @s ui_ft 40
execute as @s[tag=tmw_101-2,tag=tmw_oh_n] at @s run playsound minecraft:entity.blaze.death master @a ~ ~ ~ 1 2 0
execute as @s[tag=tmw_101-2,tag=tmw_oh_n] at @s positioned ~ ~1 ~ run particle minecraft:flame ^ ^ ^0.5 0.1 0.1 0.1 0.3 30 normal
#execute as @s[tag=tmw_101-2,tag=tmw_oh_n] at @s run item replace entity @s weapon.offhand with air
#tag @s[tag=tmw_101-2,tag=tmw_oh_n] add tmw_r_101-2

#モーション
execute as @s[scores={ui_ft=40,ui_fp=1}] run effect clear @s levitation
execute as @s[scores={ui_ft=40,ui_fp=1}] run effect give @s levitation 1 0 true
execute as @s[scores={ui_ft=40,ui_fp=1}] run effect give @s slow_falling 1 0 true
execute as @s[scores={ui_ft=5..30,ui_fp=1}] store result score $temp ui_temp run gamerule mobGriefing
execute as @s[scores={ui_ft=5..30,ui_fp=1}] at @s run teleport @s ^ ^ ^1.5 ~ ~
execute as @s[scores={ui_ft=5..30,ui_fp=1}] if score $temp ui_temp matches 1 at @s run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 fire
execute as @s[scores={ui_ft=5..30,ui_fp=1}] if score $temp ui_temp matches 1 at @s run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 fire replace air

execute as @s[scores={ui_ft=60,ui_fp=2}] at @s run summon minecraft:armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,Invisible:1b,Tags:["tmw_101_2"]}

execute as @s[scores={ui_ft=1..}] run scoreboard players remove @s ui_ft 1
execute as @s[scores={ui_ft=..0}] run scoreboard players set @s ui_fp 0

#飛行モーション
execute as @s[scores={ui_tc=..0}] run effect clear @s levitation
execute as @s[scores={ui_tc=..0}] run effect clear @s slow_falling
execute as @s[scores={ui_tc=1..}] run scoreboard players remove @s ui_tc 1
execute as @s[tag=tmw_101-2] at @s unless block ~ ~-9 ~ #ui:nocol run scoreboard players set @s ui_tc 1
execute as @s[tag=tmw_101-2] at @s unless block ~ ~-8 ~ #ui:nocol run scoreboard players set @s ui_tc 1
execute as @s[tag=tmw_101-2] at @s unless block ~ ~-7 ~ #ui:nocol run scoreboard players set @s ui_tc 1
execute as @s[tag=tmw_101-2] at @s unless block ~ ~-6 ~ #ui:nocol run scoreboard players set @s ui_tc 1
execute as @s[tag=tmw_101-2] at @s unless block ~ ~-5 ~ #ui:nocol run scoreboard players set @s ui_tc 1
execute as @s[tag=tmw_101-2] at @s unless block ~ ~-4 ~ #ui:nocol run scoreboard players set @s ui_tc 1
execute as @s[tag=tmw_101-2] at @s unless block ~ ~-3 ~ #ui:nocol run scoreboard players set @s ui_tc 1
execute as @s[tag=tmw_101-2] at @s unless block ~ ~-2 ~ #ui:nocol run scoreboard players set @s ui_tc 1
execute as @s[tag=tmw_101-2] at @s unless block ~ ~-1 ~ #ui:nocol run scoreboard players set @s ui_tc 1
execute as @s[scores={ui_tc=1}] run effect give @s levitation 1 5 true
execute as @s[scores={ui_tc=1}] run effect give @s slow_falling 1 0 true

#翼
execute at @s[tag=tmw_101-2] positioned ~ ~-1 ~ run summon minecraft:armor_stand ^-1 ^ ^-0.5 {Marker:1b,NoGravity:1b,Invisible:1b,Tags:["tmw_101_1","tmw_101_1_1"]}
execute at @s[tag=tmw_101-2] positioned ~ ~-0.4 ~ run summon minecraft:armor_stand ^-1.4 ^ ^-0.5 {Marker:1b,NoGravity:1b,Invisible:1b,Tags:["tmw_101_1","tmw_101_1_2"]}
execute at @s[tag=tmw_101-2] positioned ~ ~-0.4 ~ run summon minecraft:armor_stand ^-0.6 ^ ^-0.5 {Marker:1b,NoGravity:1b,Invisible:1b,Tags:["tmw_101_1","tmw_101_1_3"]}
execute at @s[tag=tmw_101-2] positioned ~ ~-1 ~ run summon minecraft:armor_stand ^1 ^ ^-0.5 {Marker:1b,NoGravity:1b,Invisible:1b,Tags:["tmw_101_1","tmw_101_1_4"]}
execute at @s[tag=tmw_101-2] positioned ~ ~-0.4 ~ run summon minecraft:armor_stand ^1.4 ^ ^-0.5 {Marker:1b,NoGravity:1b,Invisible:1b,Tags:["tmw_101_1","tmw_101_1_5"]}
execute at @s[tag=tmw_101-2] positioned ~ ~-0.4 ~ run summon minecraft:armor_stand ^0.6 ^ ^-0.5 {Marker:1b,NoGravity:1b,Invisible:1b,Tags:["tmw_101_1","tmw_101_1_6"]}
execute at @s[tag=tmw_101-2] facing entity @e[tag=tmw_101_1_1,limit=1,sort=nearest] feet positioned ~ ~1.5 ~ run particle flame ^ ^ ^1 ^ ^ ^10000 0.00005 0 force
execute at @s[tag=tmw_101-2] facing entity @e[tag=tmw_101_1_2,limit=1,sort=nearest] feet positioned ~ ~1.5 ~ run particle flame ^ ^ ^1 ^ ^ ^10000 0.00005 0 force
execute at @s[tag=tmw_101-2] facing entity @e[tag=tmw_101_1_3,limit=1,sort=nearest] feet positioned ~ ~1.5 ~ run particle flame ^ ^ ^1 ^ ^ ^10000 0.00005 0 force
execute at @s[tag=tmw_101-2] facing entity @e[tag=tmw_101_1_4,limit=1,sort=nearest] feet positioned ~ ~1.5 ~ run particle flame ^ ^ ^1 ^ ^ ^10000 0.00005 0 force
execute at @s[tag=tmw_101-2] facing entity @e[tag=tmw_101_1_5,limit=1,sort=nearest] feet positioned ~ ~1.5 ~ run particle flame ^ ^ ^1 ^ ^ ^10000 0.00005 0 force
execute at @s[tag=tmw_101-2] facing entity @e[tag=tmw_101_1_6,limit=1,sort=nearest] feet positioned ~ ~1.5 ~ run particle flame ^ ^ ^1 ^ ^ ^10000 0.00005 0 force
execute at @s[tag=tmw_101-2] run particle crimson_spore ~ ~1 ~ 2 2 2 0.05 10 force
execute at @s[tag=tmw_101-2] run particle flame ~ ~1 ~ 2 2 2 0.1 3 force
kill @e[tag=tmw_101_1]

#=======================================================================================================

tag @s[tag=tmw_101-1] remove tmw_101-1
tag @s[tag=tmw_101-2] remove tmw_101-2

execute as @s[nbt={SelectedItem:{tag:{tmw:{type:1}}}}] run tag @s add tmw_101-1
execute as @s[nbt={SelectedItem:{tag:{tmw:{type:2}}}}] run tag @s add tmw_101-2

#execute as @s[tag=tmw_r_101-1] run item replace entity @s weapon.mainhand with minecraft:blaze_rod{tmw:{is:1,id:101,type:1},Enchantments:[{id:"unbreaking",lvl:1s}],HideFlags:3,display:{Name:'[{"text":"暁翼","color":"gold","italic":false,"bold":true}]'}}
#execute as @s[tag=tmw_r_101-2] run item replace entity @s weapon.mainhand with minecraft:blaze_powder{tmw:{is:1,id:101,type:2},Enchantments:[{id:"unbreaking",lvl:1s}],HideFlags:3,display:{Name:'[{"text":"暁翼","color":"gold","italic":false,"bold":true}]'}}
#tag @s[tag=tmw_r_101-1] remove tmw_r_101-1
#tag @s[tag=tmw_r_101-2] remove tmw_r_101-2

#=======================================================================================================
