#=======================================================================================================

execute store result score @s ui_calc1 run data get entity @s CustomPotionEffects.[{Id:26b}].Amplifier 1
scoreboard players reset @s[scores={ui_calc1=0}] ui_calc1

# ===== 以下 発射時の追加効果 =====

#滅撃の矢
execute as @s[scores={ui_calc1=6}] at @s run data merge entity @s {damage:5.5d,SoundEvent:"minecraft:entity.generic.explode"}
#ストームブリンガー
execute at @s[scores={ui_calc1=7}] as @p run item replace entity @s[nbt={SelectedItem:{id:"minecraft:crossbow"}}] weapon.mainhand with minecraft:crossbow{Unbreakable:1b,HideFlags:4,Charged:1b,ChargedProjectiles:[{id:"minecraft:arrow",Count:1b},{id:"minecraft:arrow",Count:1b},{id:"minecraft:arrow",Count:1b}]}
execute as @s[scores={ui_calc1=7}] at @s run playsound minecraft:block.iron_trapdoor.open master @a ~ ~ ~ 1 1 0
#ティルフィング
execute as @s[scores={ui_calc1=8}] at @s run data merge entity @s {SoundEvent:"minecraft:entity.elder_guardian.curse"}
#火矢
execute as @s[scores={ui_calc1=9}] at @s run data merge entity @s {Fire:200s,SoundEvent:"minecraft:entity.blaze.shoot"}
#ダークプリズム
execute as @s[scores={ui_calc1=10}] at @s run data merge entity @s {PierceLevel:99b}
execute as @s[scores={ui_calc1=10}] at @s run tag @s add ui_refd
#TNTの矢
execute as @s[scores={ui_calc1=15}] at @s run summon tnt ~ ~ ~ {Tags:["ui_luck15"],Fuse:80}
execute at @s[scores={ui_calc1=15}] as @e[tag=ui_luck15,distance=..1] run data modify entity @s Motion set from entity @e[scores={ui_calc1=15},limit=1,sort=nearest] Motion
execute at @s[scores={ui_calc1=15}] run tag @e[tag=ui_luck15,distance=..1] remove ui_luck15
execute as @s[scores={ui_calc1=15}] run kill @s
#エンダーアロー
execute as @s[scores={ui_calc1=17}] at @s run tag @p add ui_luck17
execute as @s[scores={ui_calc1=17}] at @s at @p run particle witch ~ ~1 ~ 0.1 0.5 0.1 0.1 15 force
execute as @s[scores={ui_calc1=17}] at @s at @p run playsound entity.enderman.teleport player @a ~ ~ ~ 1.2 1.5 0
execute as @s[scores={ui_calc1=17}] at @s run tag @p[tag=ui_luck17,gamemode=survival] add ui_luck17_0
execute as @s[scores={ui_calc1=17}] at @s run tag @p[tag=ui_luck17,gamemode=creative] add ui_luck17_1
execute as @s[scores={ui_calc1=17}] at @s run tag @p[tag=ui_luck17,gamemode=adventure] add ui_luck17_2
execute as @s[scores={ui_calc1=17}] at @s run gamerule sendCommandFeedback false
execute as @s[scores={ui_calc1=17}] at @s run gamemode spectator @p
execute as @s[scores={ui_calc1=17}] at @s run gamerule sendCommandFeedback true
execute as @s[scores={ui_calc1=17}] at @s run tag @s add ui_arrow_T
#彗星の矢
execute as @s[scores={ui_calc1=22}] at @s run tag @s add ui_arrow_T
#対空近接信管
execute as @s[scores={ui_calc1=23}] at @s run tag @s add ui_arrow_T


tag @s add ui_powered

#テスト用
#say 矢を発射したよ！

#=======================================================================================================
