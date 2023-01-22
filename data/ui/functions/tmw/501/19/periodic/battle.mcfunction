## 移動速度はベース: 20%
## ジャンプ無し
## 常に盲目

## 要素:エネルギー
## 容量多め
## ・外部カメラ(毎秒EN消費　オンオフ可能) 盲目状態を解除する 　エネルギー回復が遅くなる程度に常時消費
## ・飛行用ジェット(一部機体のみ搭載) 浮遊付与して飛ばせる　落下は自由落下、マニュアルジェットで耐えろ
## ・ローラーダッシュ(シフトで起動) 移動距離比例でエネルギー消費　速く移動
## ・その他固有アクティブ、パッシブ
## 
## 要素:モード: モードの切り替えは数秒 or 無防備
## ・コンバットモード  武装使用可能
## ・スキャンモード  武装使用不可 + エネルギー回復は大
## ・モード変更中  移動不可、武装使用不可、エネルギー回復は並

# 戦闘時の tick

# 戦闘開始時
execute if entity @s[tag=tmw_501_19_battle_second] run function ui:tmw/501/19/periodic/battle_second
execute if entity @s[tag=tmw_501_19_battle_first] run function ui:tmw/501/19/periodic/battle_first

# 回復
function ui:tmw/501/19/functions/shield/regen

# ダメージ
function ui:tmw/501/19/battle/rotation

# 落下
execute if entity @s[nbt={OnGround:1b}] if score @s ui_tmw501_19_test_fd matches 1.. run function ui:tmw/501/19/battle/fall/core
execute if score @s ui_tmw501_19_test_dt matches 1.. run function ui:tmw/501/19/battle/damaged/core

# 状況変化
function ui:tmw/501/19/battle/mode/core
function ui:tmw/501/19/battle/camera/core
function ui:tmw/501/19/battle/jet/core
execute if score @s ui_tmw501_19_stat_speed_type matches 1.. if score @s ui_tmw501_19_mct matches 0 run function ui:tmw/501/19/battle/speed/core

# time
execute store result score $time ui_temp run time query gametime
scoreboard players operation $time ui_temp %= #2 ui_num

# HUD
execute if score $time ui_temp matches 0 if score @s ui_tmw501_19_stat_hudt matches 1.. run function ui:tmw/501/19/battle/hud/core
