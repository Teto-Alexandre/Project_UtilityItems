#===========================================================================

# 銃の種類と弾の種類ホントに合ってる？
execute store result score @s ui_gt run data get entity @s SelectedItem.tag.tmw.slots.[0].tag.tmw.ammo.type
execute store result score @s ui_temp run data get entity @s SelectedItem.tag.tmw.gun.type 1
scoreboard players operation @s ui_gt -= @s ui_temp

# 弾丸カウント
execute if data entity @s SelectedItem.tag.tmw.slots.[0].tag.tmw.ammo{amount:1} store result score @s ui_temp run data get entity @s SelectedItem.tag.tmw.gun.now 1
execute unless data entity @s SelectedItem.tag.tmw.slots.[0].tag.tmw.ammo{amount:1} store result score @s ui_temp run data get entity @s SelectedItem.tag.tmw.slots.[0].tag.tmw.ammo.amount 1
execute store result score @s ui_bu run data get entity @s SelectedItem.tag.tmw.gun.bu 1

# テクスチャ・ネーム編集
data modify storage ui:gun name set from entity @s SelectedItem.tag.tmw.gun.name
item modify entity @s[nbt={SelectedItem:{tag:{tmw:{gun:{png:1}}}}}] weapon.mainhand ui:weapon_gun/hg_1
item modify entity @s[nbt={SelectedItem:{tag:{tmw:{gun:{png:2}}}}}] weapon.mainhand ui:weapon_gun/hg_2
item modify entity @s[nbt={SelectedItem:{tag:{tmw:{gun:{png:3}}}}}] weapon.mainhand ui:weapon_gun/hg_3
item modify entity @s[nbt={SelectedItem:{tag:{tmw:{gun:{png:11}}}}}] weapon.mainhand ui:weapon_gun/ar_1
item modify entity @s[nbt={SelectedItem:{tag:{tmw:{gun:{png:12}}}}}] weapon.mainhand ui:weapon_gun/ar_2
item modify entity @s[nbt={SelectedItem:{tag:{tmw:{gun:{png:21}}}}}] weapon.mainhand ui:weapon_gun/sg_1
item modify entity @s[nbt={SelectedItem:{tag:{tmw:{gun:{png:22}}}}}] weapon.mainhand ui:weapon_gun/sg_2
item modify entity @s[nbt={SelectedItem:{tag:{tmw:{gun:{png:31}}}}}] weapon.mainhand ui:weapon_gun/rf_1
item modify entity @s[nbt={SelectedItem:{tag:{tmw:{gun:{png:41}}}}}] weapon.mainhand ui:weapon_gun/sr_1

# バースト数
execute as @s[scores={ui_use1=1..,ui_bc=..0}] store result score @s ui_bc run data get entity @s SelectedItem.tag.tmw.gun.bc

# クールタイム減少
scoreboard players remove @s[scores={ui_gct=0..}] ui_gct 1

# 弾丸の射出
scoreboard players operation @s ui_temp -= @s ui_bu
execute store result score @s ui_bt run data get entity @s SelectedItem.tag.tmw.slots.[0].tag.tmw.ammo.shottype
execute store result score @s ui_gms run data get entity @s SelectedItem.tag.tmw.gun.ms
execute as @s[scores={ui_bc=1..,ui_temp=..-1,ui_gct=..-1}] at @s run function ui:tmw/305/fail
execute as @s[scores={ui_gt=0,ui_bc=1..,ui_temp=0..,ui_gct=..-1}] at @s unless block ~ ~1 ~ #ui:liq run function ui:tmw/305/shot
execute as @s[scores={ui_bc=1..,ui_gct=..-1},tag=!ui_temp_success] at @s run function ui:tmw/305/fail

# 使い捨てマガジンなら打ち切った段階で破棄
execute as @s[tag=ui_temp_success] store result score @s ui_temp run data get entity @s SelectedItem.tag.tmw.slots.[0].tag.tmw.ammo.amount 1
execute if data entity @s[tag=ui_temp_success,scores={ui_temp=0}] SelectedItem.tag.tmw.slots.[0].tag.tmw.ammo.onetime at @s run function ui:tmw/305/onetime_over

# 成功クリア
tag @s remove ui_temp_success

#===========================================================================
