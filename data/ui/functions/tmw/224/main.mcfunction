#===========================================================================

# 弾丸カウント
execute store result score @s[nbt={SelectedItem:{tag:{tmw:{id:224}}}}] ui_temp run data get entity @s SelectedItem.tag.tmw.amount 1
execute if entity @s[nbt={SelectedItem:{tag:{tmw:{id:224,type:2}}}}] run scoreboard players set @s ui_temp 17

# しゃがみリロード
execute as @s[scores={ui_st=1..,ui_temp=16}] at @s run function ui:tmw/224/soul
execute as @s[scores={ui_st=1..,ui_temp=..15}] at @s run function ui:tmw/224/reload

# RE弾丸カウント
execute store result score @s[nbt={SelectedItem:{tag:{tmw:{id:224}}}}] ui_temp run data get entity @s SelectedItem.tag.tmw.amount 1
execute store result score @s[nbt={SelectedItem:{tag:{tmw:{id:224}}}}] ui_temp2 run data get entity @s SelectedItem.tag.tmw.type 1

# テクスチャ・ネーム編集
item modify entity @s[scores={ui_temp=1..,ui_temp2=1},nbt={SelectedItem:{tag:{tmw:{id:224}}}}] weapon.mainhand ui:weapon_gun/224t
item modify entity @s[scores={ui_temp=1..,ui_temp2=2},nbt={SelectedItem:{tag:{tmw:{id:224}}}}] weapon.mainhand ui:weapon_gun/224t2
item modify entity @s[scores={ui_temp=0},nbt={SelectedItem:{tag:{tmw:{id:224}}}}] weapon.mainhand ui:weapon_gun/224f

# 弾丸の射出
scoreboard players operation @s ui_gms = @s ui_temp
execute as @s[scores={ui_st=0,ui_use1=1..,ui_temp=..0}] at @s run function ui:tmw/224/fail
execute as @s[scores={ui_st=0,ui_use1=1..,ui_temp=1..,ui_temp2=1}] at @s run function ui:tmw/224/shot
execute as @s[scores={ui_st=0,ui_use1=1..,ui_temp=1..,ui_temp2=2}] at @s run function ui:tmw/224/shot2
execute as @s[scores={ui_use1=1..},tag=!ui_temp_success] at @s run function ui:tmw/224/fail

# キャッシュクリア
scoreboard players reset $temp ui_temp
tag @s remove ui_temp_success

#===========================================================================
