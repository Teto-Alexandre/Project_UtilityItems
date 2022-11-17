# 必要データ収集
    # UUID 収集
    data modify storage ui:gun temp2.UUID set from entity @s UUID
    #
    execute unless score $burst ui_temp matches 1 store result score $ct ui_temp run data get storage ui:gun temp2.ShotCT
    execute if score $burst ui_temp matches 1 store result score $ct ui_temp run data get storage ui:gun temp2.BurstCT
    execute if entity @s[nbt={OnGround:1b}] store result score $spread ui_temp run data get storage ui:gun temp2.Spread
    execute if entity @s[nbt={OnGround:0b}] store result score $spread ui_temp run data get storage ui:gun temp2.AirSpread
    execute store result score $barrel ui_temp run data get storage ui:gun temp2.Barrel
    execute store result score $multishot ui_temp run data get storage ui:gun temp2.MultiShot

#
    function ui:tmw/255/player/crossbow/attack/shot/each

# クールタイム解除時刻.mod
    execute store result score $cooltime ui_temp run time query gametime
    scoreboard players operation $cooltime ui_temp += $ct ui_temp
    execute if score $burst ui_temp matches 1.. run scoreboard players remove $burst ui_temp 1

# 収束解除
    scoreboard players set @s ui_st2 0

# 成功
    tag @s add ui_temp_success

# 変更した
    scoreboard players set $changed ui_temp 1
    ## 装弾数確認
    data modify storage ui:temp temp set from entity @s SelectedItem.tag.tmw.bullets
    execute store result score $num ui_temp run data get storage ui:temp temp
    scoreboard players set $check ui_temp 0
    function ui:tmw/255/player/crossbow/reload/linear_count
    scoreboard players operation $bullets ui_temp = $check ui_temp