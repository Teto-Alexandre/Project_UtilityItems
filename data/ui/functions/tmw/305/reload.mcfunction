# ダメージでリロード管理を行う宣言
item modify entity @s weapon.mainhand ui:weapon_gun/autoreload

# 装填されている弾を全て吐き出す
execute store result score $temp ui_temp run data get entity @s SelectedItem.tag.tmw.gun.now 1
execute if score $temp ui_temp matches 1.. run function ui:tmw/305/reload.lp

# 発砲スコアを整理
scoreboard players set @s ui_use1 0
scoreboard players set @s ui_bc 0
scoreboard players set @s ui_gct 0

# エフェクト
particle crit ~ ~1 ~ 0.2 0.2 0.2 0.5 10 normal
playsound block.piston.contract player @a ~ ~ ~ 1 1.4 0