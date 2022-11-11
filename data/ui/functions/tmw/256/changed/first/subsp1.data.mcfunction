# サブスペ1

# インク消費
execute if score $type ui_temp matches 101 run scoreboard players set $w.ink ui_temp 700
execute if score $type ui_temp matches 102 run scoreboard players set $w.ink ui_temp 600
execute if score $type ui_temp matches 103 run scoreboard players set $w.ink ui_temp 450
execute if score $type ui_temp matches 104 run scoreboard players set $w.ink ui_temp 600
execute if score $type ui_temp matches 105 run scoreboard players set $w.ink ui_temp 700
execute if score $type ui_temp matches 106 run scoreboard players set $w.ink ui_temp 550
execute if score $type ui_temp matches 107 run scoreboard players set $w.ink ui_temp 800
execute if score $type ui_temp matches 108 run scoreboard players set $w.ink ui_temp 700
execute if score $type ui_temp matches 109 run scoreboard players set $w.ink ui_temp 550
execute if score $type ui_temp matches 110 run scoreboard players set $w.ink ui_temp 600
execute if score $type ui_temp matches 111 run scoreboard players set $w.ink ui_temp 1000
execute if score $type ui_temp matches 112 run scoreboard players set $w.ink ui_temp 500
execute if score $type ui_temp matches 113 run scoreboard players set $w.ink ui_temp 550
execute if score $type ui_temp matches 114 run scoreboard players set $w.ink ui_temp 700
execute if score $type ui_temp matches 115 run scoreboard players set $w.ink ui_temp 700
execute if score $type ui_temp matches 201 run scoreboard players set $w.ink ui_temp 700
execute if score $type ui_temp matches 202 run scoreboard players set $w.ink ui_temp 500
execute if score $type ui_temp matches 301 run scoreboard players set $w.ink ui_temp 600
execute if score $type ui_temp matches 399 run scoreboard players set $w.ink ui_temp 1
execute if score $type ui_temp matches 401 run scoreboard players set $w.ink ui_temp 700
execute if score $type ui_temp matches 402 run scoreboard players set $w.ink ui_temp 700
execute if score $type ui_temp matches 403 run scoreboard players set $w.ink ui_temp 400
execute if score $type ui_temp matches 404 run scoreboard players set $w.ink ui_temp 500

# 効果時間
execute if score $type ui_temp matches 101..400 run scoreboard players set $w.time ui_temp 0
execute if score $type ui_temp matches 401..500 run scoreboard players set $w.time ui_temp 100
execute if score $type ui_temp matches 202 run scoreboard players set $w.time ui_temp 20
execute if score $type ui_temp matches 151 run scoreboard players set $w.time ui_temp 100
execute if score $type ui_temp matches 152 run scoreboard players set $w.time ui_temp 100
execute if score $type ui_temp matches 251 run scoreboard players set $w.time ui_temp 25
execute if score $type ui_temp matches 252 run scoreboard players set $w.time ui_temp 120
execute if score $type ui_temp matches 253 run scoreboard players set $w.time ui_temp 120
execute if score $type ui_temp matches 254 run scoreboard players set $w.time ui_temp 160
execute if score $type ui_temp matches 255 run scoreboard players set $w.time ui_temp 120
execute if score $type ui_temp matches 256 run scoreboard players set $w.time ui_temp 200
execute if score $type ui_temp matches 257 run scoreboard players set $w.time ui_temp 180
execute if score $type ui_temp matches 258 run scoreboard players set $w.time ui_temp 0
execute if score $type ui_temp matches 351 run scoreboard players set $w.time ui_temp 20
execute if score $type ui_temp matches 451 run scoreboard players set $w.time ui_temp 126
execute if score $type ui_temp matches 452 run scoreboard players set $w.time ui_temp 206
execute if score $type ui_temp matches 453 run scoreboard players set $w.time ui_temp 203
execute if score $type ui_temp matches 454 run scoreboard players set $w.time ui_temp 160
execute if score $type ui_temp matches 455 run scoreboard players set $w.time ui_temp 160
execute if score $type ui_temp matches 456 run scoreboard players set $w.time ui_temp 210
execute if score $type ui_temp matches 457 run scoreboard players set $w.time ui_temp 190
execute if score $type ui_temp matches 458 run scoreboard players set $w.time ui_temp 200
execute if score $type ui_temp matches 459 run scoreboard players set $w.time ui_temp 220
execute if score $type ui_temp matches 460 run scoreboard players set $w.time ui_temp 200

# クールタイム
execute if score $type ui_temp matches 101..400 run scoreboard players set $w.ct ui_temp 3
execute if score $type ui_temp matches 401..500 run scoreboard players set $w.ct ui_temp 0
execute if score $type ui_temp matches 401 run scoreboard players set $w.ct ui_temp 3
execute if score $type ui_temp matches 402 run scoreboard players set $w.ct ui_temp 6
execute if score $type ui_temp matches 151 run scoreboard players set $w.ct ui_temp 10
execute if score $type ui_temp matches 152 run scoreboard players set $w.ct ui_temp 10
execute if score $type ui_temp matches 251 run scoreboard players set $w.ct ui_temp 0
execute if score $type ui_temp matches 252 run scoreboard players set $w.ct ui_temp 15
execute if score $type ui_temp matches 253 run scoreboard players set $w.ct ui_temp 3
execute if score $type ui_temp matches 254 run scoreboard players set $w.ct ui_temp 0
execute if score $type ui_temp matches 255 run scoreboard players set $w.ct ui_temp 0
execute if score $type ui_temp matches 256 run scoreboard players set $w.ct ui_temp 10
execute if score $type ui_temp matches 257 run scoreboard players set $w.ct ui_temp 3
execute if score $type ui_temp matches 258 run scoreboard players set $w.ct ui_temp 0
execute if score $type ui_temp matches 351 run scoreboard players set $w.ct ui_temp 10
execute if score $type ui_temp matches 451 run scoreboard players set $w.ct ui_temp 6
execute if score $type ui_temp matches 452 run scoreboard players set $w.ct ui_temp 6
execute if score $type ui_temp matches 453 run scoreboard players set $w.ct ui_temp 3
execute if score $type ui_temp matches 454 run scoreboard players set $w.ct ui_temp 10
execute if score $type ui_temp matches 455 run scoreboard players set $w.ct ui_temp 20
execute if score $type ui_temp matches 456 run scoreboard players set $w.ct ui_temp 10
execute if score $type ui_temp matches 457 run scoreboard players set $w.ct ui_temp 15
execute if score $type ui_temp matches 458 run scoreboard players set $w.ct ui_temp 10
execute if score $type ui_temp matches 459 run scoreboard players set $w.ct ui_temp 20
execute if score $type ui_temp matches 460 run scoreboard players set $w.ct ui_temp 20

# スペシャルポイント必要量
execute if score $type ui_temp matches 101.. run scoreboard players set $w.need ui_temp 300

# ネーム
execute if score $type ui_temp matches 101 run data modify storage ui:temp temp.Name set value " - SUB:スプラッシュボム"
execute if score $type ui_temp matches 102 run data modify storage ui:temp temp.Name set value " - SUB:リフレクター"
execute if score $type ui_temp matches 103 run data modify storage ui:temp temp.Name set value " - SUB:クイックボム"
execute if score $type ui_temp matches 104 run data modify storage ui:temp temp.Name set value " - SUB:ライトアップ"
execute if score $type ui_temp matches 105 run data modify storage ui:temp temp.Name set value " - SUB:レンバクボム"
execute if score $type ui_temp matches 106 run data modify storage ui:temp temp.Name set value " - SUB:ナノヒール"
execute if score $type ui_temp matches 107 run data modify storage ui:temp temp.Name set value " - SUB:ボルテックス"
execute if score $type ui_temp matches 108 run data modify storage ui:temp temp.Name set value " - SUB:キューバンボム"
execute if score $type ui_temp matches 109 run data modify storage ui:temp temp.Name set value " - SUB:ポイズンガス"
execute if score $type ui_temp matches 110 run data modify storage ui:temp temp.Name set value " - SUB:インスタントシールド"
execute if score $type ui_temp matches 111 run data modify storage ui:temp temp.Name set value " - SUB:スプリンクラー"
execute if score $type ui_temp matches 112 run data modify storage ui:temp temp.Name set value " - SUB:アクセラレーター"
execute if score $type ui_temp matches 113 run data modify storage ui:temp temp.Name set value " - SUB:ロボットボム"
execute if score $type ui_temp matches 114 run data modify storage ui:temp temp.Name set value " - SUB:カーリングボム"
execute if score $type ui_temp matches 115 run data modify storage ui:temp temp.Name set value " - SUB:タンサンボム"
execute if score $type ui_temp matches 201 run data modify storage ui:temp temp.Name set value " - SUB:リコール"
execute if score $type ui_temp matches 202 run data modify storage ui:temp temp.Name set value " - SUB:ハイジャンプ"
execute if score $type ui_temp matches 301 run data modify storage ui:temp temp.Name set value " - SUB:トラップ"
execute if score $type ui_temp matches 351 run data modify storage ui:temp temp.Name set value " - SUB:メガホンレーザー"
execute if score $type ui_temp matches 399 run data modify storage ui:temp temp.Name set value " - ELSE:ナイスダマの着弾部分"
execute if score $type ui_temp matches 401 run data modify storage ui:temp temp.Name set value " - SUB:ブロードソード"
execute if score $type ui_temp matches 402 run data modify storage ui:temp temp.Name set value " - SUB:ヘルハウンド"
execute if score $type ui_temp matches 403 run data modify storage ui:temp temp.Name set value " - SUB:ラインマーカー"
execute if score $type ui_temp matches 404 run data modify storage ui:temp temp.Name set value " - SUB:ブーメラン"
execute if score $type ui_temp matches 151 run data modify storage ui:temp temp.Name set value " - SP:トルネード"
execute if score $type ui_temp matches 152 run data modify storage ui:temp temp.Name set value " - SP:アメフラシ"
execute if score $type ui_temp matches 251 run data modify storage ui:temp temp.Name set value " - SP:ノヴァ"
execute if score $type ui_temp matches 252 run data modify storage ui:temp temp.Name set value " - SP:スーパースター"
execute if score $type ui_temp matches 253 run data modify storage ui:temp temp.Name set value " - SP:ボムラッシュ"
execute if score $type ui_temp matches 254 run data modify storage ui:temp temp.Name set value " - SP:インクリメント"
execute if score $type ui_temp matches 255 run data modify storage ui:temp temp.Name set value " - SP:レーダー"
execute if score $type ui_temp matches 256 run data modify storage ui:temp temp.Name set value " - SP:スーパーチャクチ"
execute if score $type ui_temp matches 257 run data modify storage ui:temp temp.Name set value " - SP:サヴァイブ"
execute if score $type ui_temp matches 258 run data modify storage ui:temp temp.Name set value " - SP:リゲイン"
execute if score $type ui_temp matches 351 run data modify storage ui:temp temp.Name set value " - SP:メガホンレーザー"
execute if score $type ui_temp matches 451 run data modify storage ui:temp temp.Name set value " - SP:スーパーショット"
execute if score $type ui_temp matches 452 run data modify storage ui:temp temp.Name set value " - SP:マルチミサイル"
execute if score $type ui_temp matches 453 run data modify storage ui:temp temp.Name set value " - SP:トライアングル"
execute if score $type ui_temp matches 454 run data modify storage ui:temp temp.Name set value " - SP:ハイドロポンプ"
execute if score $type ui_temp matches 455 run data modify storage ui:temp temp.Name set value " - SP:ジェットパック"
execute if score $type ui_temp matches 456 run data modify storage ui:temp temp.Name set value " - SP:バウンシーボム"
execute if score $type ui_temp matches 457 run data modify storage ui:temp temp.Name set value " - SP:トリプルトルネード"
execute if score $type ui_temp matches 458 run data modify storage ui:temp temp.Name set value " - SP:ウルトラショット"
execute if score $type ui_temp matches 459 run data modify storage ui:temp temp.Name set value " - SP:ロケッティア"
execute if score $type ui_temp matches 460 run data modify storage ui:temp temp.Name set value " - SP:ナイスダマ"
