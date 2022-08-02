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
execute if score $subtype ui_temp matches 111 run scoreboard players set $ink.sub ui_temp 800
execute if score $subtype ui_temp matches 112 run scoreboard players set $ink.sub ui_temp 600
execute if score $subtype ui_temp matches 201 run scoreboard players set $ink.sub ui_temp 800
execute if score $subtype ui_temp matches 301 run scoreboard players set $ink.sub ui_temp 1000
execute if score $subtype ui_temp matches 302 run scoreboard players set $ink.sub ui_temp 600
execute if score $subtype ui_temp matches 401 run scoreboard players set $ink.sub ui_temp 700
execute if score $subtype ui_temp matches 402 run scoreboard players set $ink.sub ui_temp 700

execute if score $subtype ui_temp matches 101..400 run scoreboard players set $subtime ui_temp 0
execute if score $subtype ui_temp matches 401..500 run scoreboard players set $subtime ui_temp 100

execute if score $subtype ui_temp matches 101 run data modify storage ui:temp temp.Name set value " - SUB:スプラッシュボム"
execute if score $subtype ui_temp matches 102 run data modify storage ui:temp temp.Name set value " - SUB:リフレクター"
execute if score $subtype ui_temp matches 103 run data modify storage ui:temp temp.Name set value " - SUB:クイックボム"
execute if score $subtype ui_temp matches 104 run data modify storage ui:temp temp.Name set value " - SUB:ライトアップ"
execute if score $subtype ui_temp matches 105 run data modify storage ui:temp temp.Name set value " - SUB:レンバクボム"
execute if score $subtype ui_temp matches 106 run data modify storage ui:temp temp.Name set value " - SUB:ナノヒール"
execute if score $subtype ui_temp matches 107 run data modify storage ui:temp temp.Name set value " - SUB:ボルテックス"
execute if score $subtype ui_temp matches 108 run data modify storage ui:temp temp.Name set value " - SUB:キューバンボム"
execute if score $subtype ui_temp matches 109 run data modify storage ui:temp temp.Name set value " - SUB:ポイズンガス"
execute if score $subtype ui_temp matches 110 run data modify storage ui:temp temp.Name set value " - SUB:インスタントシールド"
execute if score $subtype ui_temp matches 111 run data modify storage ui:temp temp.Name set value " - SUB:スプリンクラー"
execute if score $subtype ui_temp matches 112 run data modify storage ui:temp temp.Name set value " - SUB:アクセラレーター"
execute if score $subtype ui_temp matches 201 run data modify storage ui:temp temp.Name set value " - SUB:リコール"
execute if score $subtype ui_temp matches 301 run data modify storage ui:temp temp.Name set value " - SUB:メガホンレーザー"
execute if score $subtype ui_temp matches 302 run data modify storage ui:temp temp.Name set value " - SUB:トラップ"
execute if score $subtype ui_temp matches 401 run data modify storage ui:temp temp.Name set value " - SUB:ブロードソード"
execute if score $subtype ui_temp matches 402 run data modify storage ui:temp temp.Name set value " - SUB:ヘルハウンド"
execute if score $subtype ui_temp matches 1.. run item modify entity @s weapon.mainhand ui:gun/value/lore

execute if score $sptype ui_temp matches 151 run scoreboard players set $sptime ui_temp 100
execute if score $sptype ui_temp matches 152 run scoreboard players set $sptime ui_temp 100
execute if score $sptype ui_temp matches 251 run scoreboard players set $sptime ui_temp 25
execute if score $sptype ui_temp matches 252 run scoreboard players set $sptime ui_temp 120
execute if score $sptype ui_temp matches 253 run scoreboard players set $sptime ui_temp 120
execute if score $sptype ui_temp matches 254 run scoreboard players set $sptime ui_temp 160
execute if score $sptype ui_temp matches 255 run scoreboard players set $sptime ui_temp 60
execute if score $sptype ui_temp matches 256 run scoreboard players set $sptime ui_temp 200
execute if score $sptype ui_temp matches 257 run scoreboard players set $sptime ui_temp 5
execute if score $sptype ui_temp matches 351 run scoreboard players set $sptime ui_temp 20
execute if score $sptype ui_temp matches 451 run scoreboard players set $sptime ui_temp 126
execute if score $sptype ui_temp matches 452 run scoreboard players set $sptime ui_temp 206
execute if score $sptype ui_temp matches 453 run scoreboard players set $sptime ui_temp 203
execute if score $sptype ui_temp matches 454 run scoreboard players set $sptime ui_temp 160
execute if score $sptype ui_temp matches 455 run scoreboard players set $sptime ui_temp 160

execute if score $sptype ui_temp matches 151 run scoreboard players set $spct ui_temp 10
execute if score $sptype ui_temp matches 152 run scoreboard players set $spct ui_temp 10
execute if score $sptype ui_temp matches 251 run scoreboard players set $spct ui_temp 0
execute if score $sptype ui_temp matches 252 run scoreboard players set $spct ui_temp 6
execute if score $sptype ui_temp matches 253 run scoreboard players set $spct ui_temp 3
execute if score $sptype ui_temp matches 254 run scoreboard players set $spct ui_temp 0
execute if score $sptype ui_temp matches 255 run scoreboard players set $spct ui_temp 3
execute if score $sptype ui_temp matches 256 run scoreboard players set $spct ui_temp 10
execute if score $sptype ui_temp matches 257 run scoreboard players set $spct ui_temp 0
execute if score $sptype ui_temp matches 351 run scoreboard players set $spct ui_temp 10
execute if score $sptype ui_temp matches 451 run scoreboard players set $spct ui_temp 6
execute if score $sptype ui_temp matches 452 run scoreboard players set $spct ui_temp 6
execute if score $sptype ui_temp matches 453 run scoreboard players set $spct ui_temp 3
execute if score $sptype ui_temp matches 454 run scoreboard players set $spct ui_temp 10
execute if score $sptype ui_temp matches 455 run scoreboard players set $spct ui_temp 20

execute if score $sptype ui_temp matches 101.. run scoreboard players set $spneed ui_temp 300

execute if score $sptype ui_temp matches 151 run data modify storage ui:temp temp.Name set value " - SP:トルネード"
execute if score $sptype ui_temp matches 152 run data modify storage ui:temp temp.Name set value " - SP:アメフラシ"
execute if score $sptype ui_temp matches 251 run data modify storage ui:temp temp.Name set value " - SP:ノヴァ"
execute if score $sptype ui_temp matches 252 run data modify storage ui:temp temp.Name set value " - SP:スーパースター"
execute if score $sptype ui_temp matches 253 run data modify storage ui:temp temp.Name set value " - SP:ボムラッシュ"
execute if score $sptype ui_temp matches 254 run data modify storage ui:temp temp.Name set value " - SP:インクリメント"
execute if score $sptype ui_temp matches 255 run data modify storage ui:temp temp.Name set value " - SP:レーダー"
execute if score $sptype ui_temp matches 256 run data modify storage ui:temp temp.Name set value " - SP:スーパーチャクチ"
execute if score $sptype ui_temp matches 257 run data modify storage ui:temp temp.Name set value " - SP:サヴァイブ"
execute if score $sptype ui_temp matches 351 run data modify storage ui:temp temp.Name set value " - SP:メガホンレーザー"
execute if score $sptype ui_temp matches 451 run data modify storage ui:temp temp.Name set value " - SP:スーパーショット"
execute if score $sptype ui_temp matches 452 run data modify storage ui:temp temp.Name set value " - SP:マルチミサイル"
execute if score $sptype ui_temp matches 453 run data modify storage ui:temp temp.Name set value " - SP:トライアングル"
execute if score $sptype ui_temp matches 454 run data modify storage ui:temp temp.Name set value " - SP:ハイドロポンプ"
execute if score $sptype ui_temp matches 455 run data modify storage ui:temp temp.Name set value " - SP:ジェットパック"
execute if score $sptype ui_temp matches 1.. run item modify entity @s weapon.mainhand ui:gun/value/lore

# 書き込み開始
execute store result storage ui:gun temp.SubInkUse int 1 run scoreboard players get $ink.sub ui_temp
execute store result storage ui:gun temp.SubTime int 1 run scoreboard players get $subtime ui_temp
execute store result storage ui:gun temp.SPTime int 1 run scoreboard players get $sptime ui_temp
execute store result storage ui:gun temp.SPCT int 1 run scoreboard players get $spct ui_temp
execute store result storage ui:gun temp.SPNeed int 1 run scoreboard players get $spneed ui_temp
execute store result storage ui:gun temp.InkMax int 1 run scoreboard players get $ink.max ui_temp
execute store result storage ui:gun temp.MoveInkRegen int 1 run scoreboard players get $ink.m ui_temp
execute store result storage ui:gun temp.ShootInkRegen int 1 run scoreboard players get $ink.s ui_temp
execute store result storage ui:gun temp.BurstMax int 1 run scoreboard players get $burst.max ui_temp
data modify storage ui:temp temp set from entity @s SelectedItem.tag.tmw
data modify storage ui:temp temp.gun set from storage ui:gun temp
data modify storage ui:temp temp.gun.now merge value {Ink:0,CT:0,Burst:0,SP:0,SubTime:0,SPTime:0,IsHold:0,Amp:0,First:1}

# subデータ照合.gun 
execute if score $subtype ui_temp matches 401 run data modify storage ui:temp temp.gun merge value {SubBurstType:1,SubBurst:1,SubBurstMax:-1}
execute if score $subtype ui_temp matches 402 run data modify storage ui:temp temp.gun merge value {SubBurstType:1,SubBurst:1,SubBurstMax:-1}

# spデータ照合.gun 
execute if score $sptype ui_temp matches 451 run data modify storage ui:temp temp.gun merge value {SPBurstType:1,SPBurst:1,SPBurstMax:-1}
execute if score $sptype ui_temp matches 452 run data modify storage ui:temp temp.gun merge value {SPBurstType:1,SPBurst:15,SPBurstMax:-1}
execute if score $sptype ui_temp matches 453 run data modify storage ui:temp temp.gun merge value {SPBurstType:2,SPBurst:4,SPBurstMax:-1}
execute if score $sptype ui_temp matches 454 run data modify storage ui:temp temp.gun merge value {SPBurstType:2,SPBurst:10,SPBurstMax:-1}
execute if score $sptype ui_temp matches 455 run data modify storage ui:temp temp.gun merge value {SPBurstType:1,SPBurst:1,SPBurstMax:-1}

data modify storage ui:temp temp merge value {enableQ:1,enableF:1}

# sub用データ初期化
data modify storage ui:gun temp set value {}

# subデータ照合.sp
execute if score $subtype ui_temp matches 401 run data modify storage ui:gun temp set value {Name:'{"text":"ブロードソード","color":"gray"}',TimeUse:200,ShotType:1,ShotCT:10,BurstCT:20,Spread:150,AirSpread:150,SpreadType:2,AirSpreadType:3,Speed:300,SpeedPlus:0,RangeType:1,Range:15,FlyParticle:4,EndParticle:2,Damage:200,MultiShot:9,ShotFootStep:2,Sound:1}
execute if score $subtype ui_temp matches 402 run data modify storage ui:gun temp set value {Name:'{"text":"ヘルハウンド","color":"gray"}',TimeUse:200,ShotType:1,ShotCT:10,BurstCT:20,Spread:0,AirSpread:0,SpreadType:1,AirSpreadType:1,Speed:10,SpeedPlus:0,RangeType:1,Range:10,FlyParticle:102,EndParticle:103,Damage:0,MultiShot:3,ShotFootStep:1,Sound:1}

# sub詳細書き込み
data modify storage ui:temp temp.sub set from storage ui:gun temp

# sp用データ初期化
data modify storage ui:gun temp set value {}

# spデータ照合.sp
execute if score $sptype ui_temp matches 451 run data modify storage ui:gun temp set value {Name:'{"text":"スーパーショット","color":"gold"}',TimeUse:0,ShotType:1,ShotCT:9,BurstCT:18,Spread:0,AirSpread:0,SpreadType:1,AirSpreadType:1,Speed:35,SpeedPlus:0,RangeType:3,Range:50,FlyParticle:7,EndParticle:2,Damage:300,MultiShot:1,ShotFootStep:2,Sound:1}
execute if score $sptype ui_temp matches 452 run data modify storage ui:gun temp set value {Name:'{"text":"マルチミサイル","color":"gold"}',TimeUse:14,ShotType:1,ShotCT:1,BurstCT:5,Spread:0,AirSpread:0,SpreadType:1,AirSpreadType:1,Speed:10,SpeedPlus:0,RangeType:1,Range:10,FlyParticle:102,EndParticle:102,Damage:0,MultiShot:1,ShotFootStep:1,Sound:1}
execute if score $sptype ui_temp matches 453 run data modify storage ui:gun temp set value {Name:'{"text":"トライアングル","color":"gold"}',TimeUse:1,ShotType:1,ShotCT:1,BurstCT:4,Spread:1200,AirSpread:400,SpreadType:2,AirSpreadType:1,Speed:15,SpeedPlus:10,RangeType:3,Range:60,FlyParticle:6,EndParticle:2,Damage:55,MultiShot:3,ShotFootStep:3,Sound:1}
execute if score $sptype ui_temp matches 454 run data modify storage ui:gun temp set value {Name:'{"text":"ハイドロポンプ","color":"gold"}',TimeUse:0,ShotType:1,ShotCT:0,BurstCT:15,Spread:0,AirSpread:0,SpreadType:1,AirSpreadType:1,Speed:900,SpeedPlus:0,RangeType:1,Range:150,FlyParticle:1,EndParticle:1,Damage:15,MultiShot:1,ShotFootStep:1,Sound:3}
execute if score $sptype ui_temp matches 455 run data modify storage ui:gun temp set value {Name:'{"text":"ジェットパック","color":"gold"}',TimeUse:0,ShotType:1,ShotCT:7,BurstCT:14,Spread:0,AirSpread:0,SpreadType:1,AirSpreadType:1,Speed:40,SpeedPlus:0,RangeType:1,Range:80,FlyParticle:4,EndParticle:4,Damage:200,MultiShot:1,ShotFootStep:1,Sound:1}

# sp詳細書き込み
data modify storage ui:temp temp.sp set from storage ui:gun temp

# 書き込み終了
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