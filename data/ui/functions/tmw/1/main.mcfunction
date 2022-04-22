#=======================================================================================================

execute as @s[tag=tmw_use] at @s run effect give @a[distance=1..6] minecraft:blindness 1 0 true
execute at @s[tag=tmw_use] as @e[type=!#ui:notmob,distance=1..6] at @s run teleport @s ~ ~ ~ ~180 ~
execute as @s[tag=tmw_use] at @s run playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 1 1 0
execute at @s[tag=tmw_use] as @e[type=!#ui:notmob,distance=1..6] at @s run particle minecraft:dragon_breath ~ ~1 ~ 0 0 0 0.1 10 force
#tag @s[tag=tmw_use] add tmw_r_1

execute as @s[tag=tmw_drop_n] at @s run particle minecraft:witch ~ ~0.5 ~ 0 0.5 0 0.1 40 force
execute as @s[tag=tmw_drop_n] at @s run teleport @s ^ ^ ^10 ~180 ~
execute as @s[tag=tmw_drop_n] at @s run function ui:tmw/1/1_1
execute as @s[tag=tmw_drop_n] at @s run effect give @s minecraft:nausea 6 0 true
execute as @s[tag=tmw_drop_n] at @s run effect give @s minecraft:wither 1 1 true
execute as @s[tag=tmw_drop_n] at @s run scoreboard players add @s ui_hp 4
execute as @s[tag=tmw_drop_n] at @s run particle minecraft:witch ~ ~0.5 ~ 0 0.5 0 0.1 40 force
execute as @s[tag=tmw_drop_n] at @s run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 1 1 0
#tag @s[tag=tmw_drop_n] add tmw_r_1

#S+Q:0:回り込み転移不発
#tag @s[tag=tmw_drop_s,scores={ui_st2=..59}] add tmw_r_1

#チャージ完了
execute as @s[scores={ui_st2=60}] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1.5 0
execute as @s[scores={ui_st2=60}] at @s run particle dragon_breath ~ ~ ~ 0 0 0 0.1 20 force @s

#S+Q:60tick:4:ターゲットの後ろにテレポート
execute as @s[tag=tmw_drop_s,scores={ui_st2=60..}] at @s run particle minecraft:witch ~ ~0.5 ~ 0 0.5 0 0.1 40 force
execute as @s[tag=tmw_drop_s,scores={ui_st2=60..}] at @e[tag=tmw_1_3,sort=random,limit=1,tag=!tmw_drop_s,type=!#ui:notmob] rotated ~ 0 positioned ^ ^ ^-2 run teleport @s ~ ~ ~ ~ ~
execute as @s[tag=tmw_drop_s,scores={ui_st2=60..}] at @s run function ui:tmw/1/1_1
execute as @s[tag=tmw_drop_s,scores={ui_st2=60..}] at @s run scoreboard players add @s ui_hp 6
execute as @s[tag=tmw_drop_s,scores={ui_st2=60..}] at @s run particle minecraft:witch ~ ~0.5 ~ 0 0.5 0 0.1 40 force @s
execute as @s[tag=tmw_drop_s,scores={ui_st2=60..}] at @s run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 1 2 0
#tag @s[tag=tmw_drop_s,scores={ui_st2=60..}] add tmw_r_1
execute as @s[tag=tmw_drop_s,scores={ui_st2=60..}] at @s run tag @e[tag=tmw_1_3] remove tmw_1_3
scoreboard players set @s[tag=tmw_drop_s,scores={ui_st2=60..}] ui_st2 0

#F:0:ターゲットビーム
execute as @s[tag=tmw_oh_n] at @s run tag @e[tag=tmw_1_3] remove tmw_1_3
execute as @s[tag=tmw_oh_n] at @s run summon minecraft:armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,Invisible:1b,Tags:["tmw_1_4"]}
execute as @s[tag=tmw_oh_n] at @s run teleport @e[tag=tmw_1_4,tag=!tmw_1_4d,sort=nearest,limit=1] ~ ~1 ~ ~ ~
execute as @s[tag=tmw_oh_n] at @s run tag @e[tag=tmw_1_4,tag=!tmw_1_4d,sort=nearest,limit=1] add tmw_1_4d
execute as @s[tag=tmw_oh_n] at @s run particle minecraft:witch ~ ~0.5 ~ 0 0.5 0 0.1 10 force
execute as @s[tag=tmw_oh_n] at @s run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 1 2 0
#execute as @s[tag=tmw_oh_n] at @s run item replace entity @s weapon.offhand with air
#tag @s[tag=tmw_oh_n] add tmw_r_1

#時空不発
#execute as @s[tag=tmw_oh_s,scores={ui_st2=..99}] at @s run item replace entity @s weapon.offhand with air
#tag @s[tag=tmw_oh_s,scores={ui_st2=..99}] add tmw_r_1

#チャージ完了
execute as @s[scores={ui_st2=100}] at @s run playsound minecraft:entity.firework_rocket.twinkle master @s ~ ~ ~ 1 1 0
execute as @s[scores={ui_st2=100}] at @s run particle dragon_breath ~ ~ ~ 0.8 0.8 0.8 0.1 20 force @s

#時空居合切り
execute as @s[tag=tmw_oh_s,scores={ui_st2=100..}] at @s run function ui:tmw/1/slash
execute as @s[tag=tmw_oh_s,scores={ui_st2=100..}] at @s run effect give @s minecraft:nausea 7 0 true
execute as @s[tag=tmw_oh_s,scores={ui_st2=100..}] at @s run effect give @s minecraft:wither 1 1 true
execute as @s[tag=tmw_oh_s,scores={ui_st2=100..}] at @s run scoreboard players add @s ui_hp 12
#execute as @s[tag=tmw_oh_s,scores={ui_st2=100..}] at @s run item replace entity @s weapon.offhand with air
execute as @s[tag=tmw_oh_s,scores={ui_st2=100..}] at @s run tag @e[tag=tmw_1_3] remove tmw_1_3
#tag @s[tag=tmw_oh_s,scores={ui_st2=100..}] add tmw_r_1
scoreboard players set @s[tag=tmw_oh_s,scores={ui_st2=100..}] ui_st2 0

#execute as @s[tag=tmw_r_1] run item replace entity @s weapon.mainhand with air
#execute as @s[tag=tmw_r_1] run item replace entity @s weapon.mainhand with minecraft:wooden_sword{tmw:{is:1,id:1},Enchantments:[{id:"unbreaking",lvl:1s}],HideFlags:3,display:{Name:'[{"text":"魔剣ティルフィング","color":"light_purple","italic":false,"bold":true}]',Lore:['[{"text":"通常攻撃: 閃刃[幻影]","color":"gray","italic":false}]','[{"text":"  周囲の敵を混乱させる","color":"gray","italic":false}]','[{"text":"Q:[","color":"gray","italic":false},{"text":"20%","color":"red","italic":false},{"text":"]: 空間移動","color":"gray","italic":false}]','[{"text":"  視線の先に転移する","color":"gray","italic":false}]','[{"text":"S+Q:[","color":"gray","italic":false},{"text":"30%","color":"red","italic":false},{"text":"]:[","color":"gray","italic":false},{"text":"3s","color":"green","italic":false},{"text":"]: 時空移動","color":"gray","italic":false}]','[{"text":"  素早く敵の後ろに転移する","color":"gray","italic":false}]','[{"text":"  対象が居ない場合は前方に転移する","color":"gray","italic":false}]','[{"text":"F: 湾曲光線","color":"gray","italic":false}]','[{"text":"  敵をロックオンする","color":"gray","italic":false}]','[{"text":"S+F:[","color":"gray","italic":false},{"text":"60%","color":"red","italic":false},{"text":"]:[","color":"gray","italic":false},{"text":"5s","color":"green","italic":false},{"text":"]: 時空切断","color":"gray","italic":false}]','[{"text":"  敵の後ろに転移し居合切りを放つ","color":"gray","italic":false}]','[{"text":"  対象が居ない場合は前方に転移する","color":"gray","italic":false}]']}}
#execute as @s[tag=tmw_r_1] run tag @s remove tmw_r_1

execute at @s run particle dust 1 0 1 0.6 ~ ~0.2 ~ 0.5 0.1 0.5 0 2 force

#=======================================================================================================
