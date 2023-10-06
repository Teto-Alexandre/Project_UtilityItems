# 汎用変数を記録
execute if data storage ui:temp temp.effect.case run function ui:tmw/272/effect/misc/case/
execute store result score $target_type ui_temp run data get storage ui:temp temp.effect.target_type 1
#execute store result score $effect_type ui_temp run data get storage ui:temp temp.effect.effect_type 1
execute store result score $var ui_temp run data get storage ui:temp temp.effect.var 1
execute if data storage ui:temp temp.effect.rand run function ui:tmw/272/effect/misc/random
execute if data storage ui:temp temp.effect.var_input run function ui:tmw/272/effect/misc/input

# ターゲットにタグを設定する（ゲーム全体効果などの場合は実行段階で場合分けする、エンティティじゃない時はどうするか・・・）
## VEで見ている相手
execute if score $target_type ui_temp matches 1 run function ui:tmw/272/effect/target_type/1
## 自分
execute if score $target_type ui_temp matches 2 run function ui:tmw/272/effect/target_type/2
## 自分以外全員
execute if score $target_type ui_temp matches 3 run function ui:tmw/272/effect/target_type/3
## 自分含む全員
execute if score $target_type ui_temp matches 4 run function ui:tmw/272/effect/target_type/4
## 自分以外全員から target_count の数だけランダムに抽選
execute if score $target_type ui_temp matches 5 run function ui:tmw/272/effect/target_type/5
## 自分含む全員から target_count の数だけランダムに抽選
execute if score $target_type ui_temp matches 6 run function ui:tmw/272/effect/target_type/6
## target_ids:[] で指名
execute if score $target_type ui_temp matches 7 run function ui:tmw/272/effect/target_type/7/
execute if entity @e[tag=tmw272_temp_card_effect_target] run tellraw @s[scores={ui_tmw601_accessory=5007}] ["",{"text":"> ","color":"gray","bold": true},{"text":">@s ","color":"green"},{"selector":"@e[tag=tmw272_temp_card_effect_target]"},{"text":"がターゲットされました"}]
execute unless entity @e[tag=tmw272_temp_card_effect_target] run tellraw @s[scores={ui_tmw601_accessory=5007}] ["",{"text":"> ","color":"gray","bold": true},{"text":">@s ","color":"green"},{"text":"ターゲットが存在しません (・ω・。≡。・ω・)"}]

# ターゲットを対象に取ってエフェクトを実行する
## ダメージ　未実装（condition_checker:タゲの現在の体力「最大・最小」）
execute if data storage ui:temp temp.effect{effect_type:"damage"} run function ui:tmw/272/effect/effect_type/damage
## 回復　未実装（condition_checker:タゲの現在の体力「最大・最小」）
execute if data storage ui:temp temp.effect{effect_type:"heal"} run function ui:tmw/272/effect/effect_type/heal
## ドロー　未実装（condition_checker:手札枚数「最大・最小・合計」）
execute if data storage ui:temp temp.effect{effect_type:"draw"} run function ui:tmw/272/effect/effect_type/draw/
## 捨てる（condition_checker:捨てた枚数）
execute if data storage ui:temp temp.effect{effect_type:"discard"} run function ui:tmw/272/effect/effect_type/discard/
## 仮想デッキドロー　未実装（condition_checker:手札枚数「最大・最小・合計」）
execute if data storage ui:temp temp.effect{effect_type:"create"} run function ui:tmw/272/effect/effect_type/create/
## 効果反復
execute if data storage ui:temp temp.effect{effect_type:"duplication"} run function ui:tmw/272/effect/effect_type/duplication
## アフターエフェクト
execute if data storage ui:temp temp.effect{effect_type:"after_effect"} run function ui:tmw/272/effect/effect_type/after_effect/
## 体力平均化
execute if data storage ui:temp temp.effect{effect_type:"health_averaging"} run function ui:tmw/272/effect/effect_type/health_averaging
## 体力入れ替え（全員の体力をランダムに入れ替え、変化なしにならないように）
execute if data storage ui:temp temp.effect{effect_type:"health_swap"} run function ui:tmw/272/effect/effect_type/health_swap/
## ターゲットの持つ様々な数値を $condition_checker に入力する
execute if data storage ui:temp temp.effect{effect_type:"condition_input"} run function ui:tmw/272/effect/effect_type/condition_input/
## $var を ターゲットの持つ様々な数値に出力する
execute if data storage ui:temp temp.effect{effect_type:"modify_value"} run function ui:tmw/272/effect/effect_type/modify_value/
## マナの数値を加算する
execute if data storage ui:temp temp.effect{effect_type:"mana"} run function ui:tmw/272/effect/effect_type/mana
## マナの最大値を加算する
execute if data storage ui:temp temp.effect{effect_type:"mana_max"} run function ui:tmw/272/effect/effect_type/mana_max

# 一連のエフェクトのターゲットを記録しつつ、次のターゲット用に初期化
tag @e[tag=tmw272_temp_card_effect_target] add tmw272_temp_card_effect_target_old
tag @e[tag=tmw272_temp_card_effect_target] remove tmw272_temp_card_effect_target
