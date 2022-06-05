# 必要データ収集
data modify storage ui:gun temp set from entity @s SelectedItem.tag.tmw.gun
execute store result score $color ui_temp run scoreboard players get @s ui_team
execute store result score $ink ui_temp run data get storage ui:gun temp.now.Ink
execute store result score $ink.main ui_temp run data get storage ui:gun temp.MainInkUse
execute store result score $ink.sub ui_temp run data get storage ui:gun temp.SubInkUse
execute if score $sptype ui_temp matches 103 if score $sptime ui_temp matches 1.. run scoreboard players operation $ink.sub ui_temp /= #10 ui_num
execute store result score $spneed ui_temp run data get storage ui:gun temp.SPNeed
execute store result score $ink.max ui_temp run data get storage ui:gun temp.InkMax
execute store result score $ink.m ui_temp run data get storage ui:gun temp.MoveInkRegen
execute store result score $ink.s ui_temp run data get storage ui:gun temp.ShootInkRegen
execute store result score $burst ui_temp run data get storage ui:gun temp.now.Burst
execute store result score $bursttype ui_temp run data get storage ui:gun temp.BurstType
execute store result score $cooltime ui_temp run data get storage ui:gun temp.now.CT
execute store result score $sp ui_temp run data get storage ui:gun temp.now.SP
execute store result score $sptype ui_temp run data get storage ui:gun temp.SPType
execute store result score $sptime ui_temp run data get storage ui:gun temp.now.SPTime
execute store result score $sptime.max ui_temp run data get storage ui:gun temp.SPTime
execute store result score $model ui_temp run data get storage ui:gun temp.now.Model
scoreboard players set $changed ui_temp 0

scoreboard players set $burst_alt ui_temp 0
scoreboard players set $burst_alt.id ui_temp 0

# スペシャルウェポン
execute if score $sptype ui_temp matches 301..400 if score $sptime ui_temp matches 1.. run execute store result score $bursttype ui_temp run data get storage ui:gun temp.SPBurstType

# 検知範囲拡大
#tag @s[tag=tmw_drop_s] add tmw_drop_n
#tag @s[tag=tmw_oh_s] add tmw_oh_n

# 常駐効果
scoreboard players remove @s[scores={ui_gct=0..}] ui_gct 1
effect give @s saturation 1 0 true
execute at @s[scores={ui_st=0}] run function ui:tmw/237/shoot
execute if score $color ui_temp matches 1 at @s[nbt=!{ActiveEffects:[{Id:11b,Amplifier:126b}]}] if block ~ ~-0.3 ~ pink_wool run function ui:tmw/237/floor
execute if score $color ui_temp matches 2 at @s[nbt=!{ActiveEffects:[{Id:11b,Amplifier:126b}]}] if block ~ ~-0.3 ~ light_blue_wool run function ui:tmw/237/floor
execute if score $color ui_temp matches 1 at @s[nbt={ActiveEffects:[{Id:11b,Amplifier:126b}]}] unless block ~ ~-0.3 ~ light_blue_wool run fill ~ ~-0.3 ~ ~ ~-0.3 ~ light_blue_wool replace #ui:wools
execute if score $color ui_temp matches 2 at @s[nbt={ActiveEffects:[{Id:11b,Amplifier:126b}]}] unless block ~ ~-0.3 ~ pink_wool run fill ~ ~-0.3 ~ ~ ~-0.3 ~ pink_wool replace #ui:wools
execute as @s[scores={ui_st=1..}] at @s run function ui:tmw/237/sneak

# インク回復
execute if score $ink ui_temp < $ink.max ui_temp run function ui:tmw/237/reload

# バースト数 (1:バースト回数固定,2:バースト中クリックで更に打ち続ける)
execute if score $bursttype ui_temp matches 1 if score $burst ui_temp matches 0 if score $cooltime ui_temp matches 0 as @s[scores={ui_use1=1..}] run function ui:tmw/237/burst
execute if score $bursttype ui_temp matches 2 as @s[scores={ui_use1=1..}] run function ui:tmw/237/burst
execute if score $bursttype ui_temp matches 3 if score $burst ui_temp matches 0 if score $cooltime ui_temp matches 0 as @s[scores={ui_use2=1..}] run function ui:tmw/237/burst3
execute if score $bursttype ui_temp matches 3 if score $burst ui_temp matches 1.. as @s[scores={ui_use1=1..}] run function ui:tmw/237/burst3.stop
execute if score $bursttype ui_temp matches 4 if score $burst ui_temp matches 0 if score $cooltime ui_temp matches 0 as @s[scores={ui_use2=1..}] run function ui:tmw/237/burst4
execute if score $bursttype ui_temp matches 5 as @s[scores={ui_use2=1..}] run function ui:tmw/237/burst5

# クールタイム解除
execute unless score $cooltime ui_temp matches 0 run function ui:tmw/237/ct

# 弾丸の射出
    #たまなしバースト+クールタイム完遂
    execute if score $burst ui_temp matches 1.. if score $cooltime ui_temp matches 0 if score $ink ui_temp < $ink.main ui_temp at @s run function ui:tmw/237/fail
    #たまありバースト+クールタイム完遂
    execute if score $burst ui_temp matches 1.. if score $cooltime ui_temp matches 0 if score $ink ui_temp >= $ink.main ui_temp at @s run function ui:tmw/237/shot.master
    #バースト+クールタイム完遂、発射できなかったなら(現状起こりえない)
    execute if score $burst ui_temp matches 1.. if score $cooltime ui_temp matches 0 at @s[tag=!ui_temp_success] run function ui:tmw/237/fail

# サブウェポン発動
execute as @s[tag=tmw_drop_n] if score $cooltime ui_temp matches 0 if score $ink ui_temp >= $ink.sub ui_temp at @s anchored eyes positioned ^ ^ ^ run function ui:tmw/237/sub

# スペシャルウェポン発動
scoreboard players operation @s ui_paint < $spneed ui_temp
execute as @s[tag=tmw_oh_n] if score $cooltime ui_temp matches 0 if score @s ui_paint = $spneed ui_temp at @s anchored eyes positioned ^ ^ ^ run function ui:tmw/237/sp
execute if score $sp ui_temp matches 0 if score @s ui_paint = $spneed ui_temp at @s run function ui:tmw/237/sp.ready
execute if score $sp ui_temp matches 1 if score @s ui_paint < $spneed ui_temp run function ui:tmw/237/sp.not
execute if score $sptime ui_temp matches 1.. at @s run function ui:tmw/237/sp.time

# 逆変換
execute if score $changed ui_temp matches 1 run function ui:tmw/237/changed

# タグ消し
tag @s remove ui_temp_move
tag @s remove ui_temp_success

# 死
execute at @s if block ~ ~ ~ #ui:liq if entity @e[type=player,dx=0] run function ui:common/highdamage

# 一時的ストレージクリア
data remove storage ui:gun temp
data remove storage ui:gun temp2