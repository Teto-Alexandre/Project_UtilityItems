#===========================================================================

# 最大値確認
execute store result score $max_ammo ui_temp run data get entity @s SelectedItem.tag.tmw.gun.max
execute store result score $now_ammo ui_temp run data get entity @s SelectedItem.tag.tmw.gun.now
scoreboard players operation $max_ammo ui_temp -= $now_ammo ui_temp

# 弾が最大じゃないならリロード処理を行う
execute if score $max_ammo ui_temp matches 1.. run function ui:tmw/305/sub.lp

# エフェクト
execute at @s run particle crit ~ ~1 ~ 0.2 0.2 0.2 0.4 2 normal
execute at @s run playsound block.note_block.hat player @a ~ ~ ~ 1 0.8

# 1tickにつき1耐久力を回復させる
item modify entity @s weapon.mainhand ui:weapon_gun/autoreload2

# 耐久力フルなら不可壊と隠蔽を付け直す
item modify entity @s[nbt={SelectedItem:{tag:{Damage:0}}}] weapon.mainhand ui:weapon_gun/autoreload3

#===========================================================================
