# 数値の設定が共通でめんどくさい奴はオートで設定するようにする

# 必要なデータ読み取り
execute store result score $subtype ui_temp run data get storage ui:gun temp.SubType
execute store result score $sptype ui_temp run data get storage ui:gun temp.SPType
execute store result score $speed ui_temp run data get storage ui:gun temp.now.Speed 100

execute store result score $ink.max ui_temp run data get storage ui:gun temp.InkMax
execute store result score $ink.m ui_temp run data get storage ui:gun temp.MoveInkRegen
execute store result score $ink.s ui_temp run data get storage ui:gun temp.ShootInkRegen
execute store result score $burst.max ui_temp run data get storage ui:gun temp.BurstMax
execute if score $ink.max ui_temp matches 0 run scoreboard players set $ink.max ui_temp 1000
execute if score $ink.m ui_temp matches 0 run scoreboard players set $ink.m ui_temp 30
execute if score $ink.s ui_temp matches 0 run scoreboard players set $ink.s ui_temp 6
execute if score $burst.max ui_temp matches 0 run scoreboard players set $burst.max ui_temp -1

# データ照合
execute if score $subtype ui_temp matches 101 run scoreboard players set $ink.sub ui_temp 700
execute if score $subtype ui_temp matches 102 run scoreboard players set $ink.sub ui_temp 600
execute if score $subtype ui_temp matches 103 run scoreboard players set $ink.sub ui_temp 400
execute if score $subtype ui_temp matches 104 run scoreboard players set $ink.sub ui_temp 700
execute if score $subtype ui_temp matches 105 run scoreboard players set $ink.sub ui_temp 700
execute if score $subtype ui_temp matches 106 run scoreboard players set $ink.sub ui_temp 700
execute if score $subtype ui_temp matches 107 run scoreboard players set $ink.sub ui_temp 900
execute if score $subtype ui_temp matches 108 run scoreboard players set $ink.sub ui_temp 700
execute if score $subtype ui_temp matches 109 run scoreboard players set $ink.sub ui_temp 600
execute if score $subtype ui_temp matches 110 run scoreboard players set $ink.sub ui_temp 700
execute if score $subtype ui_temp matches 201 run scoreboard players set $ink.sub ui_temp 1000
execute if score $subtype ui_temp matches 301 run scoreboard players set $ink.sub ui_temp 1000
execute if score $subtype ui_temp matches 302 run scoreboard players set $ink.sub ui_temp 800

execute if score $sptype ui_temp matches 101 run scoreboard players set $sptime ui_temp 25
execute if score $sptype ui_temp matches 102 run scoreboard players set $sptime ui_temp 120
execute if score $sptype ui_temp matches 103 run scoreboard players set $sptime ui_temp 120
execute if score $sptype ui_temp matches 104 run scoreboard players set $sptime ui_temp 160
execute if score $sptype ui_temp matches 105 run scoreboard players set $sptime ui_temp 60
execute if score $sptype ui_temp matches 201 run scoreboard players set $sptime ui_temp 200
execute if score $sptype ui_temp matches 202 run scoreboard players set $sptime ui_temp 200
execute if score $sptype ui_temp matches 301 run scoreboard players set $sptime ui_temp 120
execute if score $sptype ui_temp matches 401 run scoreboard players set $sptime ui_temp 20

execute if score $sptype ui_temp matches 101.. run scoreboard players set $spneed ui_temp 300

# 書き込み開始
execute store result storage ui:gun temp.SubInkUse int 1 run scoreboard players get $ink.sub ui_temp
execute store result storage ui:gun temp.SPTime int 1 run scoreboard players get $sptime ui_temp
execute store result storage ui:gun temp.SPNeed int 1 run scoreboard players get $spneed ui_temp
execute store result storage ui:gun temp.InkMax int 1 run scoreboard players get $ink.max ui_temp
execute store result storage ui:gun temp.MoveInkRegen int 1 run scoreboard players get $ink.m ui_temp
execute store result storage ui:gun temp.ShootInkRegen int 1 run scoreboard players get $ink.s ui_temp
execute store result storage ui:gun temp.BurstMax int 1 run scoreboard players get $burst.max ui_temp
data modify storage ui:temp temp set from entity @s SelectedItem.tag.tmw
data modify storage ui:temp temp.gun set from storage ui:gun temp
data remove storage ui:temp temp.gun.now.Speed
data modify storage ui:temp temp.gun.now merge value {Ink:0,CT:0,Burst:0,SP:0,SPTime:0,IsHold:0,Amp:0,First:1}

# spデータ照合.gun 
execute if score $sptype ui_temp matches 301 run data modify storage ui:temp temp.gun merge value {SPBurstType:1,SPBurst:1,SPBurstMax:-1}

data modify storage ui:temp temp merge value {enableQ:1,enableF:1}
data modify storage ui:gun temp set value {}

# spデータ照合.sp
execute if score $sptype ui_temp matches 301 run data modify storage ui:gun temp set value {Name:'{"text":"スーパーショット","color":"gold"}',TimeUse:0,ShotType:1,ShotCT:9,BurstCT:18,Spread:0,AirSpread:0,SpreadType:1,AirSpreadType:1,Speed:35,SpeedPlus:0,RangeType:3,Range:50,FlyParticle:7,EndParticle:2,Damage:300,MultiShot:1,ShotFootStep:2,Sound:1}

# 書き込み終了
data modify storage ui:temp temp.sp set from storage ui:gun temp
item modify entity @s weapon.mainhand ui:gun/value/all
scoreboard players set $changed ui_temp 1

# 速度追加
item modify entity @s weapon.mainhand ui:gun/value/speed

# 初期状態に戻す
data modify storage ui:gun temp set from entity @s SelectedItem.tag.tmw.gun
data modify storage ui:gun temp.DisplayName set from entity @s SelectedItem.tag.display.Name

# 全快
tag @s add tmw_237_tag_inkfill
tag @s add tmw_237_readtag

# データクリア
data remove storage ui:temp temp