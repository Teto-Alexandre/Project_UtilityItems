#=======================================================================================================

tag @s[tag=tmw_drop_s] add tmw_drop_n

execute as @s[tag=tmw_use] at @s at @e[distance=1..5,type=!#ui:notmob] run playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 1 1 0
execute as @s[tag=tmw_use] at @s run effect give @e[distance=1..5,type=!#ui:notmob] weakness 3 0 true
#tag @s[tag=tmw_use] add tmw_r_3

execute as @s[tag=tmw_drop_n] run tag @e[tag=tmw_3_1] add tmw_3_2
execute as @s[tag=tmw_drop_n] at @s run playsound minecraft:block.iron_trapdoor.open master @a ~ ~ ~ 1 1.5 0
execute as @s[tag=tmw_drop_n] at @s run summon minecraft:armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,Invisible:1b,Tags:["tmw_3_1","tmw_proj"]}
execute as @s[tag=tmw_drop_n] run effect give @s minecraft:wither 1 1 true
execute as @s[tag=tmw_drop_n] run scoreboard players add @s ui_hp 1
#tag @s[tag=tmw_drop_n] add tmw_r_3

execute as @s[tag=tmw_oh_n] at @s run playsound minecraft:entity.zombie_villager.converted master @a ~ ~ ~ 1 1.5 0
execute as @s[tag=tmw_oh_n] at @s run effect give @s minecraft:fire_resistance 15 0 true
execute as @s[tag=tmw_oh_n] at @s run effect give @s minecraft:wither 1 1 true
execute as @s[tag=tmw_oh_n] at @s run scoreboard players add @s ui_hp 2
#execute as @s[tag=tmw_oh_n] at @s run item replace entity @s weapon.offhand with air
#tag @s[tag=tmw_oh_n] add tmw_r_3

execute as @s[tag=tmw_oh_s,scores={ui_st2=..59}] at @s run summon minecraft:armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,Invisible:1b,Tags:["tmw_3_2","tmw_proj"]}
execute as @s[tag=tmw_oh_s,scores={ui_st2=..59}] at @s run scoreboard players set @e[tag=tmw_3_2,limit=1,sort=nearest,tag=!R] ui_tc -40
execute as @s[tag=tmw_oh_s,scores={ui_st2=..59}] at @s run tag @e[tag=tmw_3_2,limit=1,sort=nearest,tag=!R] add R
execute as @s[tag=tmw_oh_s,scores={ui_st2=..59}] at @s run playsound minecraft:entity.evoker.prepare_attack master @a ~ ~ ~ 1 1.2 0
execute as @s[tag=tmw_oh_s,scores={ui_st2=..59}] at @s run effect give @s minecraft:wither 1 1 true
execute as @s[tag=tmw_oh_s,scores={ui_st2=..59}] at @s run scoreboard players add @s ui_hp 2
#execute as @s[tag=tmw_oh_s,scores={ui_st2=..59}] at @s run item replace entity @s weapon.offhand with air
#tag @s[tag=tmw_oh_s,scores={ui_st2=..59}] add tmw_r_3
scoreboard players set @s[tag=tmw_oh_s,scores={ui_st2=..59}] ui_st2 0

#チャージ完了
execute as @s[scores={ui_st2=60}] at @s run playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 1 0.5 0
execute as @s[scores={ui_st2=60}] at @s run particle flame ~ ~ ~ 0.8 0.8 0.8 0 20 force

execute as @s[tag=tmw_oh_s,scores={ui_st2=60..}] at @s run summon minecraft:armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,Invisible:1b,Tags:["tmw_3_2"]}
execute as @s[tag=tmw_oh_s,scores={ui_st2=60..}] at @s run summon minecraft:armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,Invisible:1b,Tags:["tmw_3_2"]}
execute as @s[tag=tmw_oh_s,scores={ui_st2=60..}] at @s run summon minecraft:armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,Invisible:1b,Tags:["tmw_3_2"]}
execute as @s[tag=tmw_oh_s,scores={ui_st2=60..}] at @s run summon minecraft:armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,Invisible:1b,Tags:["tmw_3_2"]}
execute as @s[tag=tmw_oh_s,scores={ui_st2=60..}] at @s run summon minecraft:armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,Invisible:1b,Tags:["tmw_3_2"]}
execute as @s[tag=tmw_oh_s,scores={ui_st2=60..}] at @s run summon minecraft:armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,Invisible:1b,Tags:["tmw_3_2"]}
execute as @s[tag=tmw_oh_s,scores={ui_st2=60..}] at @s run summon minecraft:armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,Invisible:1b,Tags:["tmw_3_2"]}
execute as @s[tag=tmw_oh_s,scores={ui_st2=60..}] at @s run spreadplayers ~ ~ 0 25 false @e[tag=tmw_3_2,tag=!R]
execute as @s[tag=tmw_oh_s,scores={ui_st2=60..}] at @s run tag @e[tag=tmw_3_2,limit=5,sort=nearest,tag=!R] add R
execute as @s[tag=tmw_oh_s,scores={ui_st2=60..}] at @s run playsound minecraft:entity.evoker.prepare_attack master @a ~ ~ ~ 1 0.8 0
execute as @s[tag=tmw_oh_s,scores={ui_st2=60..}] at @s run effect give @s minecraft:wither 1 1 true
execute as @s[tag=tmw_oh_s,scores={ui_st2=60..}] at @s run scoreboard players add @s ui_hp 6
#execute as @s[tag=tmw_oh_s,scores={ui_st2=60..}] at @s run item replace entity @s weapon.offhand with air
#tag @s[tag=tmw_oh_s,scores={ui_st2=60..}] add tmw_r_3
scoreboard players set @s[tag=tmw_oh_s,scores={ui_st2=60..}] ui_st2 0

#execute as @s[tag=tmw_r_3] run item replace entity @s weapon.mainhand with air
#execute as @s[tag=tmw_r_3] run item replace entity @s weapon.mainhand with minecraft:wooden_sword{tmw:{is:1,id:3},Enchantments:[{id:"unbreaking",lvl:1s}],HideFlags:3,display:{Name:'[{"text":"魔剣フランベルジュ","color":"red","italic":false,"bold":true}]',Lore:['[{"text":"通常攻撃: 閃刃[崩撃]","color":"gray","italic":false}]','[{"text":"  短時間敵の攻撃力を下げる","color":"gray","italic":false}]','[{"text":"Q:[","color":"gray","italic":false},{"text":"5%","color":"red","italic":false},{"text":"]: 火炎爆弾","color":"gray","italic":false}]','[{"text":"  起爆した後新たに設置する","color":"gray","italic":false}]','[{"text":"F:[","color":"gray","italic":false},{"text":"10%","color":"red","italic":false},{"text":"]: 紅蓮防壁","color":"gray","italic":false}]','[{"text":"  炎への耐性を得る","color":"gray","italic":false}]','[{"text":"S+F:[","color":"gray","italic":false},{"text":"10%","color":"red","italic":false},{"text":"]: 火炎円環","color":"gray","italic":false}]','[{"text":"  範囲内の敵に大ダメージを与える","color":"gray","italic":false}]','[{"text":"S+F:[","color":"gray","italic":false},{"text":"30%","color":"red","italic":false},{"text":"]:[","color":"gray","italic":false},{"text":"3s","color":"green","italic":false},{"text":"]: 業火円環","color":"gray","italic":false}]','[{"text":"  複数の火炎円環を設置する","color":"gray","italic":false}]']}}
#execute as @s[tag=tmw_r_3] run tag @s remove tmw_r_3

execute at @s run particle dust 1 0.5 0 0.6 ~ ~0.2 ~ 0.5 0.1 0.5 0 2 force

#=======================================================================================================
