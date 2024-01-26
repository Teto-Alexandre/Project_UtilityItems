# 数値の設定が共通でめんどくさい奴はオートで設定するようにする

# ストレージのモデルデータを読み込み
item modify entity @s weapon.mainhand ui:skill/value/model_first
execute store result score $model ui_temp run data get storage ui:skill temp.now.Model

# 必要なデータ読み取り
execute store result score $speed ui_temp run data get storage ui:skill temp.now.Speed 100

# 書き込み開始
#execute store result storage ui:skill temp.SubInkUse int 1 run scoreboard players get $ink.sub ui_temp
data modify storage ui:temp temp set from entity @s SelectedItem.tag.tmw
data modify storage ui:temp temp.skill set from storage ui:skill temp
data modify storage ui:temp temp.skill.now merge value {First:1}
data modify storage ui:temp temp merge value {enableQ:1,enableF:1}

execute if data storage ui:temp temp.skill.function.first[0] at @s run function ui:tmw/18/queue/first

## sub用データ初期化
#data modify storage ui:skill temp set value {}

## sub詳細書き込み
#data modify storage ui:temp temp.sub set from storage ui:skill temp

# 書き込み終了
item modify entity @s weapon.mainhand ui:skill/value/all
scoreboard players set $changed ui_temp 1

# 速度追加
##execute unless score $speed ui_temp matches 0 run item modify entity @s weapon.mainhand ui:skill/value/speed_cc
#function ui:tmw/237/changed/first/speed_lore

# 初期状態に戻す
data modify storage ui:skill temp set from entity @s SelectedItem.tag.tmw.skill

# データクリア
data remove storage ui:temp temp