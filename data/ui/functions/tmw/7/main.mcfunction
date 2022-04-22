#=======================================================================================================

tag @s[tag=tmw_drop_s] add tmw_drop_n

#Q:1:エネルギー跳躍
execute as @s[tag=tmw_drop_n] at @s run scoreboard players set @s ui_calc2 0
execute as @s[tag=tmw_drop_n] at @s run tag @s add tmw_7_2
execute as @s[tag=tmw_drop_n] at @s if block ~ ~1 ~ #ui:nocol run teleport @s ~ ~1 ~
execute as @s[tag=tmw_drop_n] at @s run playsound minecraft:entity.lightning_bolt.thunder master @a ~ ~ ~ 0.8 1.8 0
execute as @s[tag=tmw_drop_n] at @s run particle minecraft:dust 0.8 0.8 0.1 1 ~ ~1 ~ 0.5 0.5 0.5 0 10 normal
execute as @s[tag=tmw_drop_n] at @s run particle minecraft:dust 0.8 0.8 0.5 1 ~ ~1 ~ 0.5 0.5 0.5 0 10 normal
execute as @s[tag=tmw_drop_n] at @s run effect give @s wither 1 1 true
execute as @s[tag=tmw_drop_n] at @s run scoreboard players add @s ui_hp 2
#tag @s[tag=tmw_drop_n] add tmw_r_7

#execute as @s[tag=tmw_r_7] run item replace entity @s weapon.mainhand with air
#execute as @s[tag=tmw_r_7] run item replace entity @s weapon.mainhand with minecraft:stone_sword{Unbreakable:1b,tmw:{is:1,id:7},Enchantments:[{id:"unbreaking",lvl:1s}],HideFlags:7,display:{Name:'[{"text":"量産型トルニクス","color":"#cccc33","italic":false,"bold":true}]',Lore:['[{"text":"Q:[","color":"gray","italic":false},{"text":"10%","color":"red","italic":false},{"text":"]: 風化した閃光","color":"gray","italic":false}]','[{"text":"  前方に短距離跳躍","color":"gray","italic":false}]']}}
#execute as @s[tag=tmw_r_7] run tag @s remove tmw_r_7

execute at @s run particle dust 0.8 0.8 0.2 0.6 ~ ~0.2 ~ 0.5 0.1 0.5 0 2 force

#=======================================================================================================
