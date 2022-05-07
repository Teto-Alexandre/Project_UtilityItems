# 必要データ収集
execute store result score $ammo ui_temp run data get entity @s Inventory.[{Slot:-106b}].tag.tmw.gun.now.ammo
execute store result score $ammo.use ui_temp run data get entity @s Inventory.[{Slot:-106b}].tag.tmw.gun.bu
execute store result score $ammo.max ui_temp run data get entity @s Inventory.[{Slot:-106b}].tag.tmw.gun.ammo
execute store result score $multishot ui_temp run data get entity @s Inventory.[{Slot:-106b}].tag.tmw.gun.ms
execute store result score $burst ui_temp run data get entity @s Inventory.[{Slot:-106b}].tag.tmw.gun.now.bc
execute store result score $cooltime ui_temp run data get entity @s Inventory.[{Slot:-106b}].tag.tmw.gun.now.ct
execute store result score $recoil ui_temp run data get entity @s Inventory.[{Slot:-106b}].tag.tmw.gun.rc

# バースト数
scoreboard players operation $ammo ui_temp -= $ammo.use ui_temp
execute if score $burst ui_temp matches 0 if score $cooltime ui_temp matches 0 if score $ammo ui_temp matches 0.. as @s[scores={ui_use1=1..}] run function ui:tmw/235/oh/burst
execute if score $burst ui_temp matches 0 if score $cooltime ui_temp matches 0 if score $ammo ui_temp matches ..-1 as @s[scores={ui_use1=1..}] run function ui:tmw/235/oh/reload

# クールタイム解除
execute unless score $cooltime ui_temp matches 0 run function ui:tmw/235/oh/ct

# 弾丸の射出
    #たまなしバースト+クールタイム完遂
    execute if score $burst ui_temp matches 1.. if score $cooltime ui_temp matches 0 if score $ammo ui_temp matches ..-1 at @s run function ui:tmw/235/oh/fail
    #たまありバースト+クールタイム完遂
    execute if score $burst ui_temp matches 1.. if score $cooltime ui_temp matches 0 if score $ammo ui_temp matches 0.. at @s run function ui:tmw/235/oh/shot
    #バースト+クールタイム完遂、発射できなかったなら(現状起こりえない)
    #execute if score $burst ui_temp matches 1.. if score $cooltime ui_temp matches 0 at @s[tag=!ui_temp_success] run function ui:tmw/235/oh/fail

# 逆変換
execute store result storage ui:beacongametemp value int 1 run scoreboard players get $burst ui_temp
item modify entity @s weapon.offhand ui:gun/value/now.bc

# 成功クリア
tag @s remove ui_temp_success