#===================================================================================================

#モード１

#S+Q:0:ターゲットビーム+テレポート
execute as @s[tag=tmw_drop_s,scores={ui_st2=..99},tag=tmw_9-1] at @s run summon minecraft:armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,Invisible:1b,Tags:["tmw_9_1"]}
execute as @s[tag=tmw_drop_s,scores={ui_st2=..99},tag=tmw_9-1] at @s run teleport @e[tag=tmw_9_1,tag=!tmw_9_1d,sort=nearest,limit=1] ~ ~1 ~ ~ ~
execute as @s[tag=tmw_drop_s,scores={ui_st2=..99},tag=tmw_9-1] at @s run tag @e[tag=tmw_9_1,tag=!tmw_9_1d,sort=nearest,limit=1] add tmw_9_1d
execute as @s[tag=tmw_drop_s,scores={ui_st2=..99},tag=tmw_9-1] at @s run particle minecraft:witch ~ ~0.5 ~ 0 0.5 0 0.1 10 force
execute as @s[tag=tmw_drop_s,scores={ui_st2=..99},tag=tmw_9-1] at @s run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 1 2 0
execute at @s[tag=tmw_drop_s,scores={ui_st2=..99},tag=tmw_9-1] as @e[tag=tmw_9_1] run function ui:tmw/9/9_1
execute as @s[tag=tmw_drop_s,scores={ui_st2=..99},tag=tmw_9-1] at @e[tag=tmw_9_2,sort=random,limit=1,tag=!tmw_drop_s,predicate=ui:load_unhurtable] rotated ~ 0 positioned ^ ^ ^-5 run summon minecraft:armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,Invisible:1b,Tags:["tmw_9_3"]}
execute at @s[tag=tmw_drop_s,scores={ui_st2=..99},tag=tmw_9-1] as @e[tag=tmw_9_3,sort=random,limit=1] at @s facing entity @e[predicate=ui:load_unhurtable,sort=nearest,limit=1] feet run teleport @s ~ ~1 ~ ~ ~
execute as @s[tag=tmw_drop_s,scores={ui_st2=..99},tag=tmw_9-1] at @s run tag @e remove tmw_9_2

#S+Q:100tick:爆破弾
execute as @s[tag=tmw_drop_s,scores={ui_st2=100..},tag=tmw_9-1] at @s run summon minecraft:armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,Invisible:1b,Tags:["tmw_9_4"]}
execute as @s[tag=tmw_drop_s,scores={ui_st2=100..},tag=tmw_9-1] at @s run teleport @e[tag=tmw_9_4,tag=!tmw_9_4d,sort=nearest,limit=1] ~ ~1 ~ ~ ~
execute as @s[tag=tmw_drop_s,scores={ui_st2=100..},tag=tmw_9-1] at @s run tag @e[tag=tmw_9_4,tag=!tmw_9_4d,sort=nearest,limit=1] add tmw_9_4d
execute as @s[tag=tmw_drop_s,scores={ui_st2=100..},tag=tmw_9-1] at @s run particle minecraft:flame ~ ~0.5 ~ 0 0.5 0 0.1 10 force
execute as @s[tag=tmw_drop_s,scores={ui_st2=100..},tag=tmw_9-1] at @s run playsound minecraft:entity.blaze.shoot master @s ~ ~ ~ 1 0.5 0

#F:浮遊
execute as @s[tag=tmw_oh_n,tag=tmw_9-1] at @s run playsound minecraft:entity.ender_dragon.flap master @a ~ ~ ~ 1 1.5 0
execute as @s[tag=tmw_oh_n,tag=tmw_9-1] at @s run effect give @s minecraft:levitation 1 10 true

#F+S:短時間低速落下
execute as @s[tag=tmw_oh_s,scores={ui_st=..99},tag=tmw_9-1] at @s run playsound minecraft:entity.ender_dragon.flap master @a ~ ~ ~ 1 1.5 0
execute as @s[tag=tmw_oh_s,scores={ui_st=..99},tag=tmw_9-1] at @s run effect give @s minecraft:slow_falling 3 0 true

#S+F:5s:5秒間無敵化
execute as @s[tag=tmw_oh_s,scores={ui_st2=100..},tag=tmw_9-1] at @s run playsound minecraft:block.respawn_anchor.charge master @a ~ ~ ~ 0.8 0.5 0
execute as @e[tag=tmw_oh_s,scores={ui_st2=100..},tag=tmw_9-1] at @s run effect give @s resistance 5 5 true

#=====　モード２　===========================================================================

#S+Q:閃光
execute as @s[tag=tmw_drop_s,scores={ui_st2=..99},tag=tmw_9-2] at @s run scoreboard players set @s ui_calc2 0
execute as @s[tag=tmw_drop_s,scores={ui_st2=..99},tag=tmw_9-2] at @s run tag @s add tmw_9_7
execute as @s[tag=tmw_drop_s,scores={ui_st2=..99},tag=tmw_9-2] at @s if block ~ ~1 ~ #ui:nocol run teleport @s ~ ~1 ~
execute as @s[tag=tmw_drop_s,scores={ui_st2=..99},tag=tmw_9-2] at @s run playsound minecraft:entity.lightning_bolt.thunder master @a ~ ~ ~ 0.8 1.8 0
execute as @s[tag=tmw_drop_s,scores={ui_st2=..99},tag=tmw_9-2] at @s run particle minecraft:dust 1 1 0.2 1 ~ ~1 ~ 0.5 0.5 0.5 0 10 normal
execute as @s[tag=tmw_drop_s,scores={ui_st2=..99},tag=tmw_9-2] at @s run particle minecraft:dust 1 1 0.8 1 ~ ~1 ~ 0.5 0.5 0.5 0 10 normal

#S+Q+C:電磁砲
execute as @s[tag=tmw_drop_s,scores={ui_st2=100..},tag=tmw_9-2] at @s run summon minecraft:armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,Invisible:1b,Tags:["tmw_proj","tmw_9_6"]}
execute as @s[tag=tmw_drop_s,scores={ui_st2=100..},tag=tmw_9-2] at @s run playsound minecraft:entity.lightning_bolt.thunder master @a ~ ~ ~ 0.8 1.8 0
execute as @s[tag=tmw_drop_s,scores={ui_st2=100..},tag=tmw_9-2] at @s run teleport @e[tag=tmw_9_6,tag=!tmw_9_6d,sort=nearest,limit=1] ~ ~1 ~ ~ ~
execute as @s[tag=tmw_drop_s,scores={ui_st2=100..},tag=tmw_9-2] at @s run tag @e[tag=tmw_9_6,tag=!tmw_9_6d,sort=nearest,limit=1] add tmw_9_6d
execute as @s[tag=tmw_drop_s,scores={ui_st2=100..},tag=tmw_9-2] at @s run particle minecraft:dust 1 1 0.5 1 ~ ~1 ~ 0.5 0.5 0.5 0 10 normal

#F:臨戦回復
execute as @s[tag=tmw_oh_n,tag=tmw_9-2] at @s run playsound minecraft:entity.player.levelup master @a ~ ~ ~ 1 1.5 0
execute as @s[tag=tmw_oh_n,tag=tmw_9-2] at @s run effect give @s minecraft:absorption 15 4 true
execute as @s[tag=tmw_oh_n,tag=tmw_9-2] at @s run effect give @s minecraft:instant_damage 1 1 true

#F+S:波動
execute as @s[tag=tmw_oh_s,scores={ui_st2=..99},tag=tmw_9-2] at @s run summon minecraft:armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,Invisible:1b,Tags:["tmw_proj","tmw_9_8"]}
execute as @s[tag=tmw_oh_s,scores={ui_st2=..99},tag=tmw_9-2] at @s run playsound minecraft:block.end_portal.spawn master @a ~ ~ ~ 0.5 2 0
execute as @s[tag=tmw_oh_s,scores={ui_st2=..99},tag=tmw_9-2] at @s run particle minecraft:soul_fire_flame ~ ~1 ~ 0.5 0.5 0.5 0.1 50 normal
execute as @s[tag=tmw_oh_s,scores={ui_st2=..99},tag=tmw_9-2] at @s run effect give @s instant_damage 1 1 true

#F+S+C:トラクタービーム
execute as @s[tag=tmw_oh_s,scores={ui_st2=100..},tag=tmw_9-2] at @s run summon minecraft:armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,Invisible:1b,Tags:["tmw_9_5"]}
execute as @s[tag=tmw_oh_s,scores={ui_st2=100..},tag=tmw_9-2] at @s run teleport @e[tag=tmw_9_5,tag=!tmw_9_5d,sort=nearest,limit=1] ~ ~1 ~ ~ ~
execute as @s[tag=tmw_oh_s,scores={ui_st2=100..},tag=tmw_9-2] at @s run tag @e[tag=tmw_9_5,tag=!tmw_9_5d,sort=nearest,limit=1] add tmw_9_5d
execute as @s[tag=tmw_oh_s,scores={ui_st2=100..},tag=tmw_9-2] at @s run particle minecraft:firework ~ ~0.8 ~ 0 0 0 0.1 5 force
execute as @s[tag=tmw_oh_s,scores={ui_st2=100..},tag=tmw_9-2] at @s run playsound minecraft:entity.evoker.prepare_attack master @a ~ ~ ~ 0.8 2 0

#===================================================================================================

#Q:モードチェンジ
execute as @s[tag=tmw_drop_n,tag=tmw_9-1] at @s run particle minecraft:flame ~ ~1 ~ 0.3 0.3 0.3 0.1 10 force
execute as @s[tag=tmw_drop_n,tag=tmw_9-1] at @s run particle minecraft:dragon_breath ~ ~1 ~ 0.7 0.7 0.7 0.1 10 force
execute as @s[tag=tmw_drop_n,tag=tmw_9-1] at @s run particle minecraft:dust 0.3 1 0.3 1 ~ ~0.2 ~ 0.6 0.1 0.6 0 10 force
execute as @s[tag=tmw_drop_n,tag=tmw_9-2] at @s run particle minecraft:soul ~ ~1 ~ 0.3 0.3 0.3 0.1 10 force
execute as @s[tag=tmw_drop_n,tag=tmw_9-2] at @s run particle minecraft:dust 1 1 0.2 0.8 ~ ~1 ~ 1 1 1 0 15 force
execute as @s[tag=tmw_drop_n,tag=tmw_9-2] at @s run particle minecraft:firework ~ ~1 ~ 0.2 0.2 0.2 0.1 10 force
execute as @s[tag=tmw_drop_n] at @s run playsound minecraft:entity.zombie_villager.converted master @a ~ ~ ~ 1 1 0
tag @s[tag=tmw_drop_n,tag=tmw_9-1] add tmw_9-2
tag @s[tag=tmw_drop_n,tag=tmw_9-1] add tmw_9-3
tag @s[tag=tmw_drop_n,tag=tmw_9-1] remove tmw_9-1
tag @s[tag=tmw_drop_n,tag=tmw_9-2,tag=!tmw_9-3] add tmw_9-1
tag @s[tag=tmw_drop_n,tag=tmw_9-2,tag=!tmw_9-3] remove tmw_9-2
tag @s[tag=tmw_drop_n,tag=tmw_9-3] remove tmw_9-3

#チャージ完了
execute as @s[scores={ui_st2=100}] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1.5 0
execute as @s[scores={ui_st2=100}] at @s run particle end_rod ~ ~0.1 ~ 0.7 0.2 0.7 0 20 force @s

#モード共通関数
tag @s[tag=tmw_drop_n] add tmw_r_9
tag @s[tag=tmw_drop_s] add tmw_r_9
tag @s[tag=tmw_oh_n] add tmw_r_9
tag @s[tag=tmw_oh_s] add tmw_r_9
scoreboard players set @s[tag=tmw_drop_s] ui_st2 0
scoreboard players set @s[tag=tmw_oh_s] ui_st2 0

#装備生成
#execute as @s[tag=tmw_r_9] run item replace entity @s weapon.mainhand with air
execute as @s[tag=tmw_r_9,tag=tmw_9-1] run item replace entity @s weapon.mainhand with minecraft:iron_sword{Unbreakable:1b,tmw:{is:1,id:9,type:1,enableQ:1,enableF:1},Enchantments:[{id:"unbreaking",lvl:1s}],HideFlags:7,display:{Name:'[{"text":"アルファエッジ[アサルトモード]","color":"#dddddd","italic":false,"bold":true}]',Lore:['[{"text":"Q:[共通]: モードチェンジ","color":"gray","italic":false}]','[{"text":"----- アサルト ---------------","color":"gray","italic":false}]','[{"text":"S+Q:","color":"gray","italic":false},{"text":"       時空湾曲","color":"light_purple","italic":false},{"text":"  敵の後ろから攻撃を加える","color":"gray","italic":false}]','[{"text":"S+Q:[","color":"gray","italic":false},{"text":"5s","color":"green","italic":false},{"text":"]:","color":"gray","italic":false},{"text":" 火砕砲撃","color":"red","italic":false},{"text":"  爆発する通常弾を撃つ","color":"gray","italic":false}]','[{"text":"   F:","color":"gray","italic":false},{"text":"       飛翔","color":"green","italic":false},{"text":"      その場で飛び上がる","color":"gray","italic":false}]','[{"text":"S+F:","color":"gray","italic":false},{"text":"       風力緩衝","color":"green","italic":false},{"text":"  緩やかに着地する","color":"gray","italic":false}]','[{"text":"S+F:[","color":"gray","italic":false},{"text":"5s","color":"green","italic":false},{"text":"]:","color":"gray","italic":false},{"text":" 光子結界","color":"white","italic":false},{"text":"  短時間無敵化する","color":"gray","italic":false}]','[{"text":"----- ステート ---------------","color":"gray","italic":false}]','[{"text":"S+Q:","color":"gray","italic":false},{"text":"       閃光","color":"yellow","italic":false},{"text":"      前方にダメージのある突撃","color":"gray","italic":false}]','[{"text":"S+Q:[","color":"gray","italic":false},{"text":"5s","color":"green","italic":false},{"text":"]:","color":"gray","italic":false},{"text":" 電磁砲","color":"yellow","italic":false},{"text":"    壁を貫通する光線弾を撃つ","color":"gray","italic":false}]','[{"text":"   F:","color":"gray","italic":false},{"text":"       臨戦回復","color":"aqua","italic":false},{"text":"  代償を払い保護を得る","color":"gray","italic":false}]','[{"text":"S+F:","color":"gray","italic":false},{"text":"       崩壊波動","color":"aqua","italic":false},{"text":"  壊滅的な波動攻撃を行う","color":"gray","italic":false}]','[{"text":"S+F:[","color":"gray","italic":false},{"text":"5s","color":"green","italic":false},{"text":"]:","color":"gray","italic":false},{"text":" 邂逅","color":"white","italic":false},{"text":"      遠方の敵を引き寄せる","color":"gray","italic":false}]','[{"text":"---------------------------","color":"gray","italic":false}]']}}
execute as @s[tag=tmw_r_9,tag=tmw_9-2] run item replace entity @s weapon.mainhand with minecraft:golden_sword{Unbreakable:1b,tmw:{is:1,id:9,type:2,enableQ:1,enableF:1},Enchantments:[{id:"knockback",lvl:1s}],HideFlags:7,display:{Name:'[{"text":"アルファエッジ[ステートモード]","color":"#dddddd","italic":false,"bold":true}]',Lore:['[{"text":"Q:[共通]: モードチェンジ","color":"gray","italic":false}]','[{"text":"----- アサルト ---------------","color":"gray","italic":false}]','[{"text":"S+Q:","color":"gray","italic":false},{"text":"       時空湾曲","color":"light_purple","italic":false},{"text":"  敵の後ろから攻撃を加える","color":"gray","italic":false}]','[{"text":"S+Q:[","color":"gray","italic":false},{"text":"5s","color":"green","italic":false},{"text":"]:","color":"gray","italic":false},{"text":" 火砕砲撃","color":"red","italic":false},{"text":"  爆発する通常弾を撃つ","color":"gray","italic":false}]','[{"text":"   F:","color":"gray","italic":false},{"text":"       飛翔","color":"green","italic":false},{"text":"      その場で飛び上がる","color":"gray","italic":false}]','[{"text":"S+F:","color":"gray","italic":false},{"text":"       風力緩衝","color":"green","italic":false},{"text":"  緩やかに着地する","color":"gray","italic":false}]','[{"text":"S+F:[","color":"gray","italic":false},{"text":"5s","color":"green","italic":false},{"text":"]:","color":"gray","italic":false},{"text":" 光子結界","color":"white","italic":false},{"text":"  短時間無敵化する","color":"gray","italic":false}]','[{"text":"----- ステート ---------------","color":"gray","italic":false}]','[{"text":"S+Q:","color":"gray","italic":false},{"text":"       閃光","color":"yellow","italic":false},{"text":"      前方にダメージのある突撃","color":"gray","italic":false}]','[{"text":"S+Q:[","color":"gray","italic":false},{"text":"5s","color":"green","italic":false},{"text":"]:","color":"gray","italic":false},{"text":" 電磁砲","color":"yellow","italic":false},{"text":"    壁を貫通する光線弾を撃つ","color":"gray","italic":false}]','[{"text":"   F:","color":"gray","italic":false},{"text":"       臨戦回復","color":"aqua","italic":false},{"text":"  代償を払い保護を得る","color":"gray","italic":false}]','[{"text":"S+F:","color":"gray","italic":false},{"text":"       崩壊波動","color":"aqua","italic":false},{"text":"  壊滅的な波動攻撃を行う","color":"gray","italic":false}]','[{"text":"S+F:[","color":"gray","italic":false},{"text":"5s","color":"green","italic":false},{"text":"]:","color":"gray","italic":false},{"text":" 邂逅","color":"white","italic":false},{"text":"      遠方の敵を引き寄せる","color":"gray","italic":false}]','[{"text":"---------------------------","color":"gray","italic":false}]']}}
execute as @s[tag=tmw_r_9] run tag @s remove tmw_r_9

#===================================================================================================

tag @s[tag=tmw_9-1] remove tmw_9-1
tag @s[tag=tmw_9-2] remove tmw_9-2

execute as @s[nbt={SelectedItem:{tag:{tmw:{type:1}}}}] run tag @s add tmw_9-1
execute as @s[nbt={SelectedItem:{tag:{tmw:{type:2}}}}] run tag @s add tmw_9-2

#===================================================================================================
