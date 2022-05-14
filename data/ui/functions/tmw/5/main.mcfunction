#=======================================================================================================

tag @s[tag=tmw_oh_s] add tmw_oh_n

execute at @s[tag=tmw_use] as @e[distance=1..5,predicate=ui:load_unhurtable] at @s run particle minecraft:block gold_block ~ ~4 ~ 0 3 0 1 20 force
execute at @s[tag=tmw_use] as @e[distance=1..5,predicate=ui:load_unhurtable] at @s run particle minecraft:dust 1 1 0.5 1 ~ ~4 ~ 0 3 0 0 20 force
execute at @s[tag=tmw_use] as @e[distance=1..5,predicate=ui:load_unhurtable] at @s run playsound minecraft:entity.lightning_bolt.thunder master @a ~ ~ ~ 0.8 1.8 0
execute at @s[tag=tmw_use] as @e[distance=1..5,predicate=ui:load_unhurtable,type=!#ui:undead] at @s run effect give @s minecraft:instant_damage 1 1 true
execute at @s[tag=tmw_use] as @e[distance=1..5,type=#ui:undead] at @s run effect give @s minecraft:instant_health 1 1 true
execute at @s[tag=tmw_use] if entity @e[distance=1..5,predicate=ui:load_unhurtable] run effect give @s minecraft:wither 1 1 true
execute at @s[tag=tmw_use] if entity @e[distance=1..5,predicate=ui:load_unhurtable] run scoreboard players add @s ui_hp 1
#tag @s[tag=tmw_use] add tmw_r_5

#Q:2:エネルギー跳躍
execute as @s[tag=tmw_drop_n] at @s run scoreboard players set @s ui_calc2 0
execute as @s[tag=tmw_drop_n] at @s run tag @s add tmw_5_2
execute as @s[tag=tmw_drop_n] at @s if block ~ ~1 ~ #ui:nocol run teleport @s ~ ~1 ~
execute as @s[tag=tmw_drop_n] at @s run playsound minecraft:entity.lightning_bolt.thunder master @a ~ ~ ~ 0.8 1.8 0
execute as @s[tag=tmw_drop_n] at @s run particle minecraft:dust 1 1 0.2 1 ~ ~1 ~ 0.5 0.5 0.5 0 10 normal
execute as @s[tag=tmw_drop_n] at @s run particle minecraft:dust 1 1 0.8 1 ~ ~1 ~ 0.5 0.5 0.5 0 10 normal
execute as @s[tag=tmw_drop_n] at @s run effect give @s wither 1 1 true
execute as @s[tag=tmw_drop_n] at @s run scoreboard players add @s ui_hp 2
#tag @s[tag=tmw_drop_n] add tmw_r_5

execute as @s[tag=tmw_drop_s] run effect give @s minecraft:speed 15 5 true
execute as @s[tag=tmw_drop_s] run effect give @s minecraft:jump_boost 15 3 true
execute as @s[tag=tmw_drop_s] run effect give @s minecraft:wither 1 1 true
execute as @s[tag=tmw_drop_s] run scoreboard players add @s ui_hp 4
execute as @s[tag=tmw_drop_s] at @s run particle minecraft:block gold_block ~ ~4 ~ 0 3 0 1 20 force
execute as @s[tag=tmw_drop_s] at @s run particle minecraft:dust 1 1 0.5 1 ~ ~4 ~ 0 3 0 0 20 force
execute as @s[tag=tmw_drop_s] at @s run playsound minecraft:entity.lightning_bolt.thunder master @a ~ ~ ~ 0.8 1.8 0
#tag @s[tag=tmw_drop_s] add tmw_r_5

#F:5:壁貫通雷ビーム
execute as @s[tag=tmw_oh_n] at @s run summon minecraft:armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,Invisible:1b,Tags:["tmw_proj","tmw_5_1"]}
execute as @s[tag=tmw_oh_n] at @s run playsound minecraft:entity.lightning_bolt.thunder master @a ~ ~ ~ 0.8 1.8 0
execute as @s[tag=tmw_oh_n] at @s run teleport @e[tag=tmw_5_1,tag=!tmw_5_1d,sort=nearest,limit=1] ~ ~1 ~ ~ ~
execute as @s[tag=tmw_oh_n] at @s run tag @e[tag=tmw_5_1,tag=!tmw_5_1d,sort=nearest,limit=1] add tmw_5_1d
execute as @s[tag=tmw_oh_n] at @s run particle minecraft:dust 1 1 0.5 1 ~ ~1 ~ 0.5 0.5 0.5 0 10 normal
execute as @s[tag=tmw_oh_n] at @s run effect give @s wither 1 1 true
execute as @s[tag=tmw_oh_n] at @s run scoreboard players add @s ui_hp 6
#execute as @s[tag=tmw_oh_n] at @s run item replace entity @s weapon.offhand with air
#tag @s[tag=tmw_oh_n] add tmw_r_5

#execute as @s[tag=tmw_r_5] run item replace entity @s weapon.mainhand with air
#execute as @s[tag=tmw_r_5] run item replace entity @s weapon.mainhand with minecraft:wooden_sword{tmw:{is:1,id:5},Enchantments:[{id:"unbreaking",lvl:1s}],HideFlags:3,display:{Name:'[{"text":"魔剣トルニクス","color":"yellow","italic":false,"bold":true}]',Lore:['[{"text":"通常攻撃:[","color":"gray","italic":false},{"text":"5%","color":"red","italic":false},{"text":"]: 閃刃[雷撃]","color":"gray","italic":false}]','[{"text":"  防具貫通の大ダメージ","color":"gray","italic":false}]','[{"text":"Q:[","color":"gray","italic":false},{"text":"10%","color":"red","italic":false},{"text":"]: 閃光","color":"gray","italic":false}]','[{"text":"  前方にダメージのある突撃","color":"gray","italic":false}]','[{"text":"S+Q:[","color":"gray","italic":false},{"text":"20%","color":"red","italic":false},{"text":"]: 電光石火","color":"gray","italic":false}]','[{"text":"  短時間身体能力を引き上げる","color":"gray","italic":false}]','[{"text":"F:[","color":"gray","italic":false},{"text":"30%","color":"red","italic":false},{"text":"]: 電磁砲","color":"gray","italic":false}]','[{"text":"  壁を貫通する長距離光線弾","color":"gray","italic":false}]']}}
#execute as @s[tag=tmw_r_5] run tag @s remove tmw_r_5

execute at @s run particle dust 1 1 0.2 0.6 ~ ~0.2 ~ 0.5 0.1 0.5 0 2 force

#=======================================================================================================
