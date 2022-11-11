# 数値の設定が共通でめんどくさい奴はオートで設定するようにする

# 必要なデータ読み取り

execute if score $burst.max ui_temp matches 0 run scoreboard players set $burst.max ui_temp -1
execute store result score $speed ui_temp run data get storage ui:gun temp.now.Speed 100

# 書き込み開始
execute store result storage ui:gun temp.BurstMax int 1 run scoreboard players get $burst.max ui_temp
data modify storage ui:temp temp set from entity @s SelectedItem.tag.tmw
data modify storage ui:temp temp.gun set from storage ui:gun temp
execute unless score $qf ui_temp matches 1.. run data modify storage ui:temp temp.gun.now merge value {QFType:1}
data modify storage ui:temp temp.gun.now merge value {Ink:0,CT:0,Burst:0,SP:0,SubTime:0,SPTime:0,IsHold:0,Amp:0,First:1,EPage:0}

# 書き込み終了
item modify entity @s weapon.mainhand ui:gun/value/all
scoreboard players set $changed ui_temp 1

# 速度追加
item modify entity @s weapon.mainhand ui:gun/value/speed

# 初期状態に戻す
data modify storage ui:gun temp set from entity @s SelectedItem.tag.tmw.gun
data modify storage ui:gun temp.DisplayName set from entity @s SelectedItem.tag.display.Name

# データクリア
data remove storage ui:temp temp