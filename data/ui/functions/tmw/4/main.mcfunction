#=======================================================================================================

execute at @s[tag=tmw_use] run tp @e[tag=tmw_4_pl] @e[tag=tmw_4_1,limit=1]
execute at @s[tag=tmw_use] run kill @e[tag=tmw_4_1]
execute at @s[tag=tmw_use] run playsound minecraft:block.enchantment_table.use master @a ~ ~ ~ 1 1 0
execute at @s[tag=tmw_use] as @e[distance=1..6,sort=nearest,limit=1,type=!#ui:notmob] at @s run summon minecraft:armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,Invisible:1b,Tags:["tmw_4_1"]}
execute at @s[tag=tmw_use] as @e[distance=1..6,sort=nearest,limit=1,type=!#ui:notmob] run particle minecraft:enchant ~ ~1 ~ 0 0 0 1 50 force @a[scores={ui_tmw_id=4}]
execute at @s[tag=tmw_use] as @e[distance=1..6,sort=nearest,limit=1,type=!#ui:notmob] at @s run tag @s add tmw_4_pl
execute at @s[tag=tmw_use] run effect give @s minecraft:wither 1 1 true
execute at @s[tag=tmw_use] run scoreboard players add @s ui_hp 1
#tag @s[tag=tmw_use] add tmw_r_4

execute at @s[tag=tmw_drop_n] run playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 0.5 1 0
tag @s[tag=tmw_drop_n,tag=tmw_4drop] add tmw_4drop_2
tag @s[tag=tmw_drop_n,tag=!tmw_4drop] add tmw_4drop
tag @s[tag=tmw_4drop_2] remove tmw_4drop
tag @s[tag=tmw_4drop_2] remove tmw_4drop_2
execute as @s[tag=tmw_4drop] at @s positioned ~ ~0.5 ~ facing entity @e[type=!#ui:notmob,distance=1..6,sort=nearest,limit=1] feet run teleport @s ~ ~-0.5 ~ ~ ~
execute at @s[tag=tmw_drop_n] run particle minecraft:end_rod ~ ~ ~ 0 0 0 0.1 15 force
#tag @s[tag=tmw_drop_n] add tmw_r_4

#チャージ完了
execute as @s[scores={ui_st2=100}] at @s run playsound minecraft:entity.player.levelup master @a ~ ~ ~ 1 0.5 0
execute as @s[scores={ui_st2=100}] at @s run particle firework ~ ~ ~ 0.5 0.5 0.5 0.05 20 force

#Q不発
#tag @s[tag=tmw_drop_s,scores={ui_st2=..99}] add tmw_r_4

#F不発
#execute as @s[tag=tmw_oh_s,scores={ui_st2=..99}] at @s run item replace entity @s weapon.offhand with air
#tag @s[tag=tmw_oh_s,scores={ui_st2=..99}] add tmw_r_4

#S+Q:5s:2 トラクタービーム
execute as @s[tag=tmw_drop_s,scores={ui_st2=100..}] at @s run summon minecraft:armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,Invisible:1b,Tags:["tmw_4_2"]}
execute as @s[tag=tmw_drop_s,scores={ui_st2=100..}] at @s run teleport @e[tag=tmw_4_2,tag=!tmw_4_2d,sort=nearest,limit=1] ~ ~1 ~ ~ ~
execute as @s[tag=tmw_drop_s,scores={ui_st2=100..}] at @s run tag @e[tag=tmw_4_2,tag=!tmw_4_2d,sort=nearest,limit=1] add tmw_4_2d
execute as @s[tag=tmw_drop_s,scores={ui_st2=100..}] at @s run particle minecraft:firework ~ ~0.8 ~ 0 0 0 0.1 5 force
execute as @s[tag=tmw_drop_s,scores={ui_st2=100..}] at @s run playsound minecraft:entity.evoker.prepare_attack master @a ~ ~ ~ 0.8 2 0
execute as @e[tag=tmw_drop_s,scores={ui_st2=100..}] at @s run effect give @s wither 1 1 true
execute as @e[tag=tmw_drop_s,scores={ui_st2=100..}] at @s run scoreboard players add @s ui_hp 2
#tag @s[tag=tmw_drop_s,scores={ui_st2=100..}] add tmw_r_4
scoreboard players set @s[tag=tmw_drop_s,scores={ui_st2=100..}] ui_st2 0

#F:3:周囲の敵に下を向かせる
execute at @s[tag=tmw_oh_n] as @e[distance=1..6,type=!#ui:notmob] at @s run teleport @s ~ ~ ~ ~ 90
execute as @s[tag=tmw_oh_n] at @s run playsound minecraft:block.anvil.land master @a ~ ~ ~ 0.5 1 0
execute as @e[tag=tmw_oh_n] at @s run effect give @s wither 1 1 true
execute as @e[tag=tmw_oh_n] at @s run scoreboard players add @s ui_hp 2
#execute as @s[tag=tmw_oh_n] at @s run item replace entity @s weapon.offhand with air
#tag @s[tag=tmw_oh_n] add tmw_r_4
## 救済の権能を身に着けているプレイヤーを無条件で破壊する
execute as @e[tag=tmw_oh_n] at @a[scores={ui_tmw601_accessory=5005}] run function ui:tmw/4/dead

#S+F:5s:10 10秒間無敵化
execute as @s[tag=tmw_oh_s,scores={ui_st2=100..}] at @s run playsound minecraft:block.respawn_anchor.charge master @a ~ ~ ~ 0.8 0.5 0
execute as @e[tag=tmw_oh_s,scores={ui_st2=100..}] at @s run effect give @s wither 1 1 true
execute as @e[tag=tmw_oh_s,scores={ui_st2=100..}] at @s run effect give @s resistance 10 5 true
execute as @e[tag=tmw_oh_s,scores={ui_st2=100..}] at @s run scoreboard players add @s ui_hp 10
#execute as @s[tag=tmw_oh_s,scores={ui_st2=100..}] at @s run item replace entity @s weapon.offhand with air
#tag @s[tag=tmw_oh_s,scores={ui_st2=100..}] add tmw_r_4
scoreboard players set @s[tag=tmw_oh_s,scores={ui_st2=100..}] ui_st2 0

#execute as @s[tag=tmw_r_4] run item replace entity @s weapon.mainhand with air
#execute as @s[tag=tmw_r_4] run item replace entity @s weapon.mainhand with minecraft:wooden_sword{tmw:{is:1,id:4},Enchantments:[{id:"unbreaking",lvl:1s}],HideFlags:3,display:{Name:'[{"text":"魔剣ジャッジメント","color":"white","italic":false,"bold":true}]',Lore:['[{"text":"通常攻撃:[","color":"gray","italic":false},{"text":"5%","color":"red","italic":false},{"text":"]: 閃刃[時縛]","color":"gray","italic":false}]','[{"text":"  不可解な動きを生み出す","color":"gray","italic":false}]','[{"text":"Q: オートエイム切り替え","color":"gray","italic":false}]','[{"text":"  敵を自動で補足する","color":"gray","italic":false}]','[{"text":"S+Q:[","color":"gray","italic":false},{"text":"10%","color":"red","italic":false},{"text":"]:[","color":"gray","italic":false},{"text":"5s","color":"green","italic":false},{"text":"]: 邂逅","color":"gray","italic":false}]','[{"text":"  敵を呼び寄せる光線弾","color":"gray","italic":false}]','[{"text":"F:[","color":"gray","italic":false},{"text":"10%","color":"red","italic":false},{"text":"]: 懺悔","color":"gray","italic":false}]','[{"text":"  周囲の敵は懺悔する","color":"gray","italic":false}]','[{"text":"S+F:[","color":"gray","italic":false},{"text":"50%","color":"red","italic":false},{"text":"]:[","color":"gray","italic":false},{"text":"5s","color":"green","italic":false},{"text":"]: 結界の奇跡","color":"gray","italic":false}]','[{"text":"  短時間無敵化する","color":"gray","italic":false}]']}}
#execute as @s[tag=tmw_r_4] run tag @s remove tmw_r_4

execute at @s run particle dust 1 1 1 0.6 ~ ~0.2 ~ 0.5 0.1 0.5 0 2 force

#=======================================================================================================
