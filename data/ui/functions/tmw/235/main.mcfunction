# 必要データ収集
data modify storage ui:gun temp set from entity @s SelectedItem.tag.tmw.gun
execute store result score $ammo ui_temp run data get storage ui:gun temp.now.ammo
execute store result score $ammo.use ui_temp run data get storage ui:gun temp.bu
execute store result score $ammo.max ui_temp run data get storage ui:gun temp.ammo
execute store result score $multishot ui_temp run data get storage ui:gun temp.ms
execute store result score $bursttype ui_temp run data get storage ui:gun temp.bt
execute store result score $burst ui_temp run data get storage ui:gun temp.now.bc
execute store result score $cooltime ui_temp run data get storage ui:gun temp.now.ct
execute store result score $recoil ui_temp run data get storage ui:gun temp.rc
execute store result score $reload ui_temp run data get storage ui:gun temp.now.reload

# 検知範囲拡大
tag @s[tag=tmw_drop_s] add tmw_drop_n
execute as @e[tag=tmw_oh_n] run item replace entity @s weapon.offhand from entity @s weapon.mainhand
execute as @e[tag=tmw_oh_n] run item replace entity @s weapon.mainhand with air

# Qでリロード
execute as @s[tag=tmw_drop_n] run function ui:tmw/235/reload

# Shift+Fで精密射撃
execute as @s[tag=tmw_oh_s] at @s run function ui:tmw/235/main.oh
execute at @s unless entity @e[tag=tmw_235.snipe,distance=..0.1] run scoreboard players reset @s ui_snipe

# バースト数 (1:バースト回数固定,2:バースト中クリックで更に打ち続ける)
scoreboard players operation $ammo ui_temp -= $ammo.use ui_temp
execute if score $bursttype ui_temp matches 1 if score $burst ui_temp matches 0 if score $cooltime ui_temp matches 0 if score $ammo ui_temp matches 0.. as @s[scores={ui_use1=1..}] run function ui:tmw/235/burst
execute if score $bursttype ui_temp matches 2 if score $ammo ui_temp matches 0.. as @s[scores={ui_use1=1..}] run function ui:tmw/235/burst
execute if score $bursttype ui_temp matches 3 if score $reload ui_temp matches 0 if score $ammo ui_temp matches 0.. as @s[scores={ui_use2=1..}] run function ui:tmw/235/burst3
execute if score $bursttype ui_temp matches 3 if score $burst ui_temp matches 1.. as @s[scores={ui_use1=1..}] run function ui:tmw/235/burst3.stop
execute if score $burst ui_temp matches 0 if score $cooltime ui_temp matches 0 if score $ammo ui_temp matches ..-1 as @s[scores={ui_use1=1..}] run function ui:tmw/235/reload

# クールタイム解除
execute unless score $cooltime ui_temp matches 0 run function ui:tmw/235/ct

# 弾丸の射出
    #たまなしバースト+クールタイム完遂
    execute if score $burst ui_temp matches 1.. if score $cooltime ui_temp matches 0 if score $ammo ui_temp matches ..-1 at @s run function ui:tmw/235/fail
    #たまありバースト+クールタイム完遂
    execute if score $burst ui_temp matches 1.. if score $cooltime ui_temp matches 0 if score $ammo ui_temp matches 0.. at @s run function ui:tmw/235/shot
    #バースト+クールタイム完遂、発射できなかったなら(現状起こりえない)
    #execute if score $burst ui_temp matches 1.. if score $cooltime ui_temp matches 0 at @s[tag=!ui_temp_success] run function ui:tmw/235/fail

# 逆変換
execute store result storage ui:beacongametemp value int 1 run scoreboard players get $burst ui_temp
item modify entity @s weapon.mainhand ui:gun/value/now.bc

# 成功クリア
tag @s remove ui_temp_success

# 一時的ストレージクリア
data remove storage ui:gun temp