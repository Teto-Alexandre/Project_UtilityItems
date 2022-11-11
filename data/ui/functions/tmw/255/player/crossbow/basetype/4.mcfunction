# 4.ウェイト&ホールド

# 基本の射撃タイプを入力
    execute store result score $bursttype ui_temp run data get storage ui:gun temp.BurstType
# メインウェポン消費インク取得
    execute store result score $ink.main ui_temp run data get storage ui:gun temp.MainInkUse
# ホールド状態を取得
    execute store result score $ishold ui_temp run data get storage ui:gun temp.now.IsHold
# ホールド時の追加状態を取得
    execute store result score $holdjump ui_temp run data get storage ui:gun temp.HoldJump
    execute store result score $holdsnd ui_temp run data get storage ui:gun temp.HoldSnd

# 構える演出
    execute if score $holdsnd ui_temp matches 0 if score @s ui_use1 matches 1.. if score @s ui_use2 matches 0 if score $cooltime ui_temp matches 0 at @s run playsound block.piston.extend player @a ~ ~ ~ 1 0.8 0
    execute if score $holdsnd ui_temp matches 0 if score @s ui_use1 matches 1.. if score @s ui_use2 matches 0 if score $cooltime ui_temp matches 0 at @s run playsound block.tripwire.click_on player @a ~ ~ ~ 1 0.6 0
    execute if score $holdsnd ui_temp matches 0 if score @s ui_use1 matches 1.. if score @s ui_use2 matches 0 if score $cooltime ui_temp matches 0 at @s run particle crit ~ ~1 ~ 0.2 0.2 0.2 1 10 normal

# 初入力でクールタイム読み込み(+慣性打ち消し)、さらにホールド状態を0にする
    execute if score $holdjump ui_temp matches 1 if score @s ui_use1 matches 1.. if score @s ui_use2 matches 0 if score $cooltime ui_temp matches 0 if entity @s[tag=!tmw_255_jumped,nbt={OnGround:0b}] run effect give @s slow_falling 1 0 true
    execute if score $holdjump ui_temp matches 1 if score @s ui_use1 matches 1.. if score @s ui_use2 matches 0 if score $cooltime ui_temp matches 0 if entity @s[tag=!tmw_255_jumped,nbt={OnGround:0b}] run effect give @s levitation 1 24 true
    execute if score $holdjump ui_temp matches 1 if score @s ui_use1 matches 1.. if score @s ui_use2 matches 0 if score $cooltime ui_temp matches 0 if entity @s[nbt={OnGround:0b}] run tag @s add tmw_255_jumped
    execute if score $holdjump ui_temp matches 1 if score @s ui_use1 matches 1.. if score @s ui_use2 matches 0 if score $cooltime ui_temp matches 0 if entity @s[nbt={OnGround:0b}] run tp @s @s
    execute if score $holdjump ui_temp matches 1 if score @s ui_use2 matches 5 run effect clear @s slow_falling
    execute if score $holdjump ui_temp matches 1 if score @s ui_use2 matches 2 run effect clear @s levitation
    execute if score @s ui_use1 matches 1.. if score @s ui_use2 matches 0 store result score $cooltime ui_temp run time query gametime
    execute if score @s ui_use1 matches 1.. if score @s ui_use2 matches 0 store result score $ct ui_temp run data get storage ui:gun temp.WaitCT
    execute if score @s ui_use1 matches 1.. if score @s ui_use2 matches 0 run scoreboard players operation $cooltime ui_temp += $ct ui_temp
    execute if score @s ui_use1 matches 1.. if score @s ui_use2 matches 0 run scoreboard players set $ishold ui_temp 0
    execute if score @s ui_use1 matches 1.. if score @s ui_use2 matches 0 run scoreboard players set $changed ui_temp 1

# ホールド中ならホールド状態用に上書き
    execute if score $ishold ui_temp matches 1 store result score $bursttype ui_temp run data get storage ui:gun temp.HoldBurstType
# メインウェポン消費インク取得
    execute if score $ishold ui_temp matches 1 store result score $ink.main ui_temp run data get storage ui:gun temp.HoldInkUse

# ベースタイプを登録
    scoreboard players set $basetype ui_temp 1
    execute if score $ishold ui_temp matches 1 run scoreboard players set $basetype ui_temp 2