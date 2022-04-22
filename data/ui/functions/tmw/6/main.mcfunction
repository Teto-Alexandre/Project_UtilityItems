#=======================================================================================================

tag @s[tag=tmw_oh_s] add tmw_oh_n

execute as @s[tag=tmw_use] at @s at @e[distance=1..5,type=!#ui:notmob] run playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 1 2 0
execute as @s[tag=tmw_use] at @s at @e[distance=1..5,type=!#ui:notmob] run particle minecraft:sweep_attack ~ ~0.1 ~ 0.5 0.1 0.5 0 3 force
execute as @s[tag=tmw_use] at @s at @e[distance=1..5,type=!#ui:notmob] run scoreboard players add @s ui_hp 1
execute at @s[tag=tmw_use] as @e[distance=1..5,type=!#ui:notmob] at @s run effect give @s minecraft:levitation 1 4 true
#tag @s[tag=tmw_use] add tmw_r_6

#Q:1:短時間低速落下
execute as @s[tag=tmw_drop_n] at @s run playsound minecraft:entity.ender_dragon.flap master @a ~ ~ ~ 1 1.5 0
execute as @s[tag=tmw_drop_n] at @s run effect give @s minecraft:slow_falling 3 0 true
execute as @s[tag=tmw_drop_n] at @s run scoreboard players add @s ui_hp 1
#tag @s[tag=tmw_drop_n] add tmw_r_6

#S+Q:8:旋空刃
execute as @s[tag=tmw_drop_s] at @s run kill @e[tag=tmw_6_1]
execute as @s[tag=tmw_drop_s] at @s run playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 1 2 0
execute as @s[tag=tmw_drop_s] at @s run summon minecraft:armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,Invisible:1b,Tags:["tmw_6_1"],PortalCooldown:50}
execute as @s[tag=tmw_drop_s] at @s run teleport @e[tag=tmw_6_1] ~ ~ ~ ~ 0
execute as @s[tag=tmw_drop_s] at @s run effect give @s minecraft:wither 1 1 true
execute as @s[tag=tmw_drop_s] at @s run scoreboard players add @s ui_hp 8
#tag @s[tag=tmw_drop_s] add tmw_r_6

#F:1:浮遊
execute as @s[tag=tmw_oh_n] at @s run playsound minecraft:entity.ender_dragon.flap master @a ~ ~ ~ 1 1.5 0
execute as @s[tag=tmw_oh_n] at @s run effect give @s minecraft:levitation 1 10 true
execute as @s[tag=tmw_oh_n] at @s run scoreboard players add @s ui_hp 1
#execute as @s[tag=tmw_oh_n] at @s run item replace entity @s weapon.offhand with air
#tag @s[tag=tmw_oh_n] add tmw_r_6

#execute as @s[tag=tmw_r_6] run item replace entity @s weapon.mainhand with air
#execute as @s[tag=tmw_r_6] run item replace entity @s weapon.mainhand with minecraft:wooden_sword{tmw:{is:1,id:6},Enchantments:[{id:"unbreaking",lvl:1s}],HideFlags:3,display:{Name:'[{"text":"魔剣ウィンディア","color":"green","italic":false,"bold":true}]',Lore:['[{"text":"通常攻撃:[","color":"gray","italic":false},{"text":"5%","color":"red","italic":false},{"text":"]: 閃刃[風華]","color":"gray","italic":false}]','[{"text":"  敵を浮遊させる","color":"gray","italic":false}]','[{"text":"Q:[","color":"gray","italic":false},{"text":"5%","color":"red","italic":false},{"text":"]: 風力緩衝","color":"gray","italic":false}]','[{"text":"  落下速度を落とし安全に着地する","color":"gray","italic":false}]','[{"text":"S+Q:[","color":"gray","italic":false},{"text":"40%","color":"red","italic":false},{"text":"]: 旋空刃","color":"gray","italic":false}]','[{"text":"  高威力の竜巻を放つ","color":"gray","italic":false}]','[{"text":"F:[","color":"gray","italic":false},{"text":"5%","color":"red","italic":false},{"text":"]: 飛翔","color":"gray","italic":false}]','[{"text":"  その場で飛び上がる","color":"gray","italic":false}]']}}
#execute as @s[tag=tmw_r_6] run tag @s remove tmw_r_6

execute at @s run particle dust 0.3 1 0.3 0.6 ~ ~0.2 ~ 0.5 0.1 0.5 0 2 force

#=======================================================================================================
