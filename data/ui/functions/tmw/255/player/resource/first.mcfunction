# 数値の設定が共通でめんどくさい奴はオートで設定するようにする

# 必要なデータ読み取り
    execute store result score $Mass ui_temp run data get storage ui:tmw temp.this.tag.tmw.stats.Mass
    execute store result score $BaseType ui_temp run data get storage ui:tmw temp.this.tag.tmw.stats.BaseType
    execute store result score $Magazine ui_temp run data get storage ui:tmw temp.this.tag.tmw.stats.Magazine
    execute store result score $MaxSize ui_temp run data get storage ui:tmw temp.this.tag.tmw.stats.MaxSize
    execute store result score $Burst ui_temp run data get storage ui:tmw temp.this.tag.tmw.stats.Burst
    execute store result score $BurstType ui_temp run data get storage ui:tmw temp.this.tag.tmw.stats.BurstType
    execute store result score $CT ui_temp run data get storage ui:tmw temp.this.tag.tmw.stats.CT
    execute store result score $Spread ui_temp run data get storage ui:tmw temp.this.tag.tmw.stats.Spread
    execute store result score $Barrel ui_temp run data get storage ui:tmw temp.this.tag.tmw.stats.Barrel
    execute store result score $MultiShot ui_temp run data get storage ui:tmw temp.this.tag.tmw.stats.MultiShot

# 書き込み終了
    execute if score $type ui_temp matches -1 if score $hand ui_temp matches 0 run item modify entity @s weapon.mainhand ui:tmw255/resource_-1
    execute if score $type ui_temp matches -1 if score $hand ui_temp matches 1 run item modify entity @s weapon.offhand ui:tmw255/resource_-1
    execute if score $type ui_temp matches -2 if score $hand ui_temp matches 0 run item modify entity @s weapon.mainhand ui:tmw255/resource_-2
    execute if score $type ui_temp matches -2 if score $hand ui_temp matches 1 run item modify entity @s weapon.offhand ui:tmw255/resource_-2
    execute if score $type ui_temp matches -3 if score $hand ui_temp matches 0 run item modify entity @s weapon.mainhand ui:tmw255/resource_-3
    execute if score $type ui_temp matches -3 if score $hand ui_temp matches 1 run item modify entity @s weapon.offhand ui:tmw255/resource_-3

# 書き込み重複防止
    data modify storage ui:temp temp set from storage ui:tmw temp.this.tag.tmw
    data modify storage ui:temp temp.stats.now merge value {First:1}
    execute if score $hand ui_temp matches 0 run item modify entity @s weapon.mainhand ui:gun/value/all
    execute if score $hand ui_temp matches 1 run item modify entity @s weapon.offhand ui:gun/value/all

# データクリア
    data remove storage ui:temp temp