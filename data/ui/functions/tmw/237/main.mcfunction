# 必要データ収集
data modify storage ui:gun temp set from entity @s SelectedItem.tag.tmw.gun
execute store result score $color ui_temp run data get storage ui:gun temp.Color
execute store result score $ink ui_temp run data get storage ui:gun temp.now.Ink
execute store result score $ink.main ui_temp run data get storage ui:gun temp.MainInkUse
execute store result score $ink.sub ui_temp run data get storage ui:gun temp.SubInkUse
execute store result score $spneed ui_temp run data get storage ui:gun temp.SPNeed
execute store result score $ink.max ui_temp run data get storage ui:gun temp.InkMax
execute store result score $ink.m ui_temp run data get storage ui:gun temp.MoveInkRegen
execute store result score $ink.s ui_temp run data get storage ui:gun temp.ShootInkRegen
execute store result score $burst ui_temp run data get storage ui:gun temp.now.Burst
execute store result score $bursttype ui_temp run data get storage ui:gun temp.BurstType
execute store result score $cooltime ui_temp run data get storage ui:gun temp.now.CT
execute store result score $sp ui_temp run data get storage ui:gun temp.now.SP
scoreboard players set $changed ui_temp 0

scoreboard players set $burst4 ui_temp 0
scoreboard players set $burst4.id ui_temp 0

# 検知範囲拡大
tag @s[tag=tmw_drop_s] add tmw_drop_n
tag @s[tag=tmw_oh_s] add tmw_oh_n

# 常駐効果
execute if score $color ui_temp matches 1 at @s[nbt=!{ActiveEffects:[{Id:11b,Amplifier:126b}]}] if block ~ ~-0.3 ~ pink_wool run function ui:tmw/237/floor
execute if score $color ui_temp matches 2 at @s[nbt=!{ActiveEffects:[{Id:11b,Amplifier:126b}]}] if block ~ ~-0.3 ~ light_blue_wool run function ui:tmw/237/floor
execute if score $color ui_temp matches 1 at @s[nbt={ActiveEffects:[{Id:11b,Amplifier:126b}]}] if block ~ ~-0.3 ~ pink_wool run fill ~ ~-0.3 ~ ~ ~-0.3 ~ light_blue_wool replace #ui:wools
execute if score $color ui_temp matches 2 at @s[nbt={ActiveEffects:[{Id:11b,Amplifier:126b}]}] if block ~ ~-0.3 ~ light_blue_wool run fill ~ ~-0.3 ~ ~ ~-0.3 ~ pink_wool replace #ui:wools
execute if score $color ui_temp matches 1 at @s[scores={ui_st=1..}] if block ~ ~-0.3 ~ light_blue_wool run function ui:tmw/237/move
execute if score $color ui_temp matches 2 at @s[scores={ui_st=1..}] if block ~ ~-0.3 ~ pink_wool run function ui:tmw/237/move
execute at @s[scores={ui_st=0}] run function ui:tmw/237/shoot
execute if score $color ui_temp matches 1 at @s[scores={ui_st=1..}] unless block ~ ~-0.3 ~ light_blue_wool run function ui:tmw/237/shoot
execute if score $color ui_temp matches 2 at @s[scores={ui_st=1..}] unless block ~ ~-0.3 ~ pink_wool run function ui:tmw/237/shoot

# インク回復
execute if score $ink ui_temp < $ink.max ui_temp run function ui:tmw/237/reload

# バースト数 (1:バースト回数固定,2:バースト中クリックで更に打ち続ける)
execute if score $bursttype ui_temp matches 1 if score $burst ui_temp matches 0 if score $cooltime ui_temp matches 0 as @s[scores={ui_use1=1..}] run function ui:tmw/237/burst
execute if score $bursttype ui_temp matches 2 as @s[scores={ui_use1=1..}] run function ui:tmw/237/burst
execute if score $bursttype ui_temp matches 3 if score $burst ui_temp matches 0 if score $cooltime ui_temp matches 0 as @s[scores={ui_use2=1..}] run function ui:tmw/237/burst3
execute if score $bursttype ui_temp matches 3 if score $burst ui_temp matches 1.. as @s[scores={ui_use1=1..}] run function ui:tmw/237/burst3.stop
execute if score $bursttype ui_temp matches 4 if score $burst ui_temp matches 0 if score $cooltime ui_temp matches 0 as @s[scores={ui_use2=1..}] run function ui:tmw/237/burst4

# クールタイム解除
execute unless score $cooltime ui_temp matches 0 run function ui:tmw/237/ct

# 弾丸の射出
    #たまなしバースト+クールタイム完遂
    execute if score $burst ui_temp matches 1.. if score $cooltime ui_temp matches 0 if score $ink ui_temp < $ink.main ui_temp at @s run function ui:tmw/237/fail
    #たまありバースト+クールタイム完遂
    execute if score $burst ui_temp matches 1.. if score $cooltime ui_temp matches 0 if score $ink ui_temp >= $ink.main ui_temp at @s[tag=!ui_temp_move,nbt=!{ActiveEffects:[{Id:14b}]}] run function ui:tmw/237/shot
    #バースト+クールタイム完遂、発射できなかったなら(現状起こりえない)
    execute if score $burst ui_temp matches 1.. if score $cooltime ui_temp matches 0 at @s[tag=!ui_temp_success] run function ui:tmw/237/fail

# サブウェポン発動
execute as @s[tag=tmw_drop_n] if score $ink ui_temp >= $ink.sub ui_temp at @s[tag=!ui_temp_move,nbt=!{ActiveEffects:[{Id:14b}]}] anchored eyes positioned ^ ^ ^ run function ui:tmw/237/sub

# スペシャルウェポン発動
scoreboard players operation @s ui_paint < $spneed ui_temp
execute as @s[tag=tmw_oh_n] if score @s ui_paint = $spneed ui_temp at @s[tag=!ui_temp_move,nbt=!{ActiveEffects:[{Id:14b}]}] anchored eyes positioned ^ ^ ^ run function ui:tmw/237/sp
execute if score $sp ui_temp matches 0 if score @s ui_paint = $spneed ui_temp at @s run function ui:tmw/237/sp.ready
execute if score $sp ui_temp matches 1 if score @s ui_paint < $spneed ui_temp run function ui:tmw/237/sp.not

# 逆変換
execute if score $changed ui_temp matches 1 store result storage ui:gun temp.now.Burst int 1 run scoreboard players get $burst ui_temp
execute if score $changed ui_temp matches 1 store result storage ui:gun temp.now.CT int 1 run scoreboard players get $cooltime ui_temp
execute if score $changed ui_temp matches 1 store result storage ui:gun temp.now.Ink int 1 run scoreboard players get $ink ui_temp
execute if score $changed ui_temp matches 1 store result storage ui:gun temp.now.SP int 1 run scoreboard players get $sp ui_temp
execute if score $changed ui_temp matches 1 run item modify entity @s weapon.mainhand ui:gun/value/now

# タグ消し
tag @s remove ui_temp_move
tag @s remove ui_temp_success

# 一時的ストレージクリア
data remove storage ui:gun temp
data remove storage ui:gun temp2