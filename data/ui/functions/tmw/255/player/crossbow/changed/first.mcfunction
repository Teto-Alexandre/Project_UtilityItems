# 数値の設定が共通でめんどくさい奴はオートで設定するようにする

#
execute store result score $custom_stats ui_temp run data get storage ui:gun temp.now.CustomStats 1

# カスタムステータスが設定されていないなら質量より武器性能を算出する
execute if score $custom_stats ui_temp matches 0 run function ui:tmw/255/player/crossbow/changed/non_custom_stats

#
execute store result score $speed ui_temp run data get storage ui:gun temp.now.Speed 100
execute store result score $attack ui_temp run data get storage ui:gun temp.now.Attack 100
execute store result score $attack_speed ui_temp run data get storage ui:gun temp.now.AttackSpeed 100
execute store result score $Info ui_temp run data get storage ui:gun temp.now.Info
execute store result score $bullets ui_temp run data get storage ui:gun temp.now.Bullets
#tellraw @a [{"score":{"objective":"ui_temp","name":"$bullets"}}]

# 書き込み開始
data modify storage ui:temp temp set from storage ui:tmw temp.this.tag.tmw
data modify storage ui:temp temp.gun set from storage ui:gun temp
execute unless score $qf ui_temp matches 1.. run data modify storage ui:temp temp.gun.now merge value {QFType:1}
execute if score $bullets ui_temp matches 0 run data modify storage ui:temp temp.gun.now merge value {Bullets:0,Noidle:0}
execute unless score $bullets ui_temp matches 0 run data modify storage ui:temp temp.gun.now merge value {Noidle:1}
data modify storage ui:temp temp.gun.now merge value {CT:0,AddCT:0,ReloadTime:0,FireTime:0,FireCount:0,Burst:1,IsHold:0,First:1}

# 書き込み終了
execute if score $hand ui_temp matches 0 run item modify entity @s weapon.mainhand ui:gun/value/all
execute if score $hand ui_temp matches 1 run item modify entity @s weapon.offhand ui:gun/value/all
scoreboard players set $changed ui_temp 1

# 速度追加
execute unless data storage ui:gun temp.NoUI if score $hand ui_temp matches 0 run item modify entity @s weapon.mainhand ui:gun/value/spd_atk_asp
execute unless data storage ui:gun temp.NoUI if score $hand ui_temp matches 1 run item modify entity @s weapon.offhand ui:gun/value/spd_atk_asp

# 必要なデータ読み取り
    execute store result score $Mass ui_temp run data get storage ui:tmw temp.this.tag.tmw.gun.Mass
    execute store result score $BaseType ui_temp run data get storage ui:tmw temp.this.tag.tmw.gun.BaseType
    execute store result score $Burst ui_temp run data get storage ui:tmw temp.this.tag.tmw.gun.Burst
    execute store result score $BurstType ui_temp run data get storage ui:tmw temp.this.tag.tmw.gun.BurstType
    execute store result score $Magazine ui_temp run data get storage ui:tmw temp.this.tag.tmw.gun.Magazine
    execute store result score $MaxSize ui_temp run data get storage ui:tmw temp.this.tag.tmw.gun.MaxSize
    execute store result score $ShotCT ui_temp run data get storage ui:tmw temp.this.tag.tmw.main.ShotCT
    execute store result score $BurstCT ui_temp run data get storage ui:tmw temp.this.tag.tmw.main.BurstCT
    execute store result score $ReloadMax ui_temp run data get storage ui:tmw temp.this.tag.tmw.main.ReloadMax
    execute store result score $Spread ui_temp run data get storage ui:tmw temp.this.tag.tmw.main.Spread
    execute store result score $AirSpread ui_temp run data get storage ui:tmw temp.this.tag.tmw.main.AirSpread
    execute store result score $Barrel ui_temp run data get storage ui:tmw temp.this.tag.tmw.main.Barrel
    execute store result score $MultiShot ui_temp run data get storage ui:tmw temp.this.tag.tmw.main.MultiShot

# 書き込み終了
    execute unless score $Info ui_temp matches -1 if score $hand ui_temp matches 0 run item modify entity @s weapon.mainhand ui:tmw255/gun
    execute unless score $Info ui_temp matches -1 if score $hand ui_temp matches 1 run item modify entity @s weapon.offhand ui:tmw255/gun

# 初期状態に戻す
execute if score $hand ui_temp matches 0 run data modify storage ui:tmw temp.this set from entity @s SelectedItem
execute if score $hand ui_temp matches 1 run data modify storage ui:tmw temp.this set from entity @s Inventory[{Slot:-106b}]
data modify storage ui:gun temp set from storage ui:tmw temp.this.tag.tmw.gun
data modify storage ui:gun temp.DisplayName set from storage ui:tmw temp.this.tag.display.Name

# データクリア
data remove storage ui:temp temp