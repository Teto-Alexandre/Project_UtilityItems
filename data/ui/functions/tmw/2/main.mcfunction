#=======================================================================================================

execute as @s[tag=tmw_use] at @s run effect give @e[distance=1..6,predicate=ui:load_unhurtable] minecraft:wither 1 1 true
execute as @s[tag=tmw_use] at @s run scoreboard players add @e[distance=1..6,predicate=ui:load_unhurtable] ui_hp 1
execute as @s[tag=tmw_use] at @s run effect give @s minecraft:regeneration 2 1 true
execute as @s[tag=tmw_use] at @s run scoreboard players remove @s ui_hp 1
execute as @s[tag=tmw_use] at @s run playsound minecraft:block.respawn_anchor.charge master @a ~ ~ ~ 0.8 1 0
execute as @s[tag=tmw_use] at @s at @e[distance=1..6,predicate=ui:load_unhurtable] run particle minecraft:soul ~ ~1 ~ 0 0 0 0.1 15 force
#tag @s[tag=tmw_use] add tmw_r_2

#Q:4:instant_damage lv0とui_hp:1付き魂ビーム
execute as @s[tag=tmw_drop_n] at @s run summon minecraft:armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,Invisible:1b,Tags:["tmw_2_2"]}
execute as @s[tag=tmw_drop_n] at @s run teleport @e[tag=tmw_2_2,tag=!tmw_2_2d,sort=nearest,limit=1] ~ ~1 ~ ~ ~
execute as @s[tag=tmw_drop_n] at @s run tag @e[tag=tmw_2_2,tag=!tmw_2_2d,sort=nearest,limit=1] add tmw_2_2d
execute as @s[tag=tmw_drop_n] at @s run particle minecraft:soul ~ ~0.8 ~ 0 0 0 0.1 5 force
execute as @s[tag=tmw_drop_n] at @s run playsound minecraft:block.conduit.deactivate master @a ~ ~ ~ 0.8 2 0
execute as @s[tag=tmw_drop_n] at @s run effect give @s wither 1 1 true
execute as @s[tag=tmw_drop_n] at @s run scoreboard players add @s ui_hp 4
#tag @s[tag=tmw_drop_n] add tmw_r_2

execute as @s[tag=tmw_drop_s] at @s run summon minecraft:armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,Invisible:1b,Tags:["tmw_proj","tmw_2_1"]}
execute as @s[tag=tmw_drop_s] at @s run playsound minecraft:block.end_portal.spawn master @a ~ ~ ~ 0.5 2 0
execute as @s[tag=tmw_drop_s] at @s run particle minecraft:soul_fire_flame ~ ~1 ~ 0.5 0.5 0.5 0.1 50 normal
execute as @s[tag=tmw_drop_s] at @s run effect give @s wither 1 1 true
execute as @s[tag=tmw_drop_s] at @s run scoreboard players add @s ui_hp 10
#tag @s[tag=tmw_drop_s] add tmw_r_2

#F:4:instant_health lv1 魂消費して体力回復
execute as @s[tag=tmw_oh_n] at @s run playsound minecraft:entity.player.levelup master @a ~ ~ ~ 1 1.5 0
execute as @s[tag=tmw_oh_n] at @s run effect give @s minecraft:instant_health 1 1 true
execute as @s[tag=tmw_oh_n] at @s run effect give @s minecraft:wither 1 1 true
execute as @s[tag=tmw_oh_n] at @s run scoreboard players add @s ui_hp 4
#execute as @s[tag=tmw_oh_n] at @s run item replace entity @s weapon.offhand with air
#tag @s[tag=tmw_oh_n] add tmw_r_2

#F+Q:4:absorption lv4 魂消費して体力増強
execute as @s[tag=tmw_oh_s] at @s run playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 1 0.5 0
execute as @s[tag=tmw_oh_s] at @s run effect give @s minecraft:absorption 15 4 true
execute as @s[tag=tmw_oh_s] at @s run effect give @s minecraft:wither 1 1 true
execute as @s[tag=tmw_oh_s] at @s run scoreboard players add @s ui_hp 4
#execute as @s[tag=tmw_oh_s] at @s run item replace entity @s weapon.offhand with air
#tag @s[tag=tmw_oh_s] add tmw_r_2

#execute as @s[tag=tmw_r_2] run item replace entity @s weapon.mainhand with air
#execute as @s[tag=tmw_r_2] run item replace entity @s weapon.mainhand with minecraft:wooden_sword{tmw:{is:1,id:2},Enchantments:[{id:"unbreaking",lvl:1s}],HideFlags:3,display:{Name:'[{"text":"魔剣アニマ","color":"aqua","italic":false,"bold":true}]',Lore:['[{"text":"通常攻撃: 閃刃[破魂]","color":"gray","italic":false}]','[{"text":"  敵の魂を破壊し自己に吸収する","color":"gray","italic":false}]','[{"text":"Q:[","color":"gray","italic":false},{"text":"20%","color":"red","italic":false},{"text":"]: 穿魂光線","color":"gray","italic":false}]','[{"text":"  連射できる光線弾","color":"gray","italic":false}]','[{"text":"S+Q:[","color":"gray","italic":false},{"text":"50%","color":"red","italic":false},{"text":"]: 崩壊波動","color":"gray","italic":false}]','[{"text":"  周囲に大ダメージを与える","color":"gray","italic":false}]','[{"text":"F:[","color":"gray","italic":false},{"text":"20%","color":"red","italic":false},{"text":"]: 即時再生","color":"gray","italic":false}]','[{"text":"  活撃の一手","color":"gray","italic":false}]','[{"text":"S+F:[","color":"gray","italic":false},{"text":"20%","color":"red","italic":false},{"text":"]: 緩衝防壁","color":"gray","italic":false}]','[{"text":"  後手の守護","color":"gray","italic":false}]']}}
#execute as @s[tag=tmw_r_2] run tag @s remove tmw_r_2

execute at @s run particle dust 0 1 1 0.6 ~ ~0.2 ~ 0.5 0.1 0.5 0 2 force

#=======================================================================================================
