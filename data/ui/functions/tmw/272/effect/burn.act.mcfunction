# 汎用変数を記録
execute if data storage ui:temp temp.effect.delay run function ui:tmw/272/effect/misc/delay/
execute if data storage ui:temp temp.effect.case run function ui:tmw/272/effect/misc/case/
execute store result score $target_type ui_temp run data get storage ui:temp temp.effect.target_type 1
execute store result score $target_count ui_temp run data get storage ui:temp temp.effect.target_count 1
execute store result score $var ui_temp run data get storage ui:temp temp.effect.var 1
execute if data storage ui:temp temp.effect.rand run function ui:tmw/272/effect/misc/random
execute if data storage ui:temp temp.effect.var_input run function ui:tmw/272/effect/misc/input/var

execute if score $target_type ui_temp matches 0 run scoreboard players set $target_type ui_temp 2
execute if score $target_count ui_temp matches ..0 run scoreboard players set $target_count ui_temp 1

execute unless score @s ui_tmw272_surehit matches 1.. if score @s ui_tmw272_confusion matches 1.. if score $target_type ui_temp matches 1 run scoreboard players set $target_type ui_temp 6
execute unless score @s ui_tmw272_surehit matches 1.. if score @s ui_tmw272_confusion matches 1.. if score $target_type ui_temp matches 3 run scoreboard players set $target_type ui_temp 4
execute unless score @s ui_tmw272_surehit matches 1.. if score @s ui_tmw272_confusion matches 1.. if score $target_type ui_temp matches 5 run scoreboard players set $target_type ui_temp 6
execute unless score @s ui_tmw272_surehit matches 1.. if score @s ui_tmw272_confusion matches 1.. if score $target_type ui_temp matches 8 run scoreboard players set $target_type ui_temp 6
execute unless score @s ui_tmw272_surehit matches 1.. if score @s ui_tmw272_confusion matches 1.. if score $target_type ui_temp matches 8 run scoreboard players set $target_count ui_temp 2
execute unless score @s ui_tmw272_surehit matches 1.. if score @s ui_tmw272_confusion matches 1.. if score $target_type ui_temp matches 10 run scoreboard players set $target_type ui_temp 4
execute unless score @s ui_tmw272_surehit matches 1.. if score @s ui_tmw272_confusion matches 1.. if score $target_type ui_temp matches 11 run scoreboard players set $target_type ui_temp 6
execute unless score @s ui_tmw272_surehit matches 1.. if score @s ui_tmw272_confusion matches 1.. if score $target_type ui_temp matches 12 run scoreboard players set $target_type ui_temp 4
execute unless score @s ui_tmw272_surehit matches 1.. if score @s ui_tmw272_confusion matches 1.. if score $target_type ui_temp matches 13 run scoreboard players set $target_type ui_temp 6
execute unless score @s ui_tmw272_surehit matches 1.. if score @s ui_tmw272_blindness matches 1.. if score $target_type ui_temp matches 3 run scoreboard players set $target_type ui_temp 1
execute unless score @s ui_tmw272_surehit matches 1.. if score @s ui_tmw272_blindness matches 1.. if score $target_type ui_temp matches 4 run scoreboard players set $target_type ui_temp 8
execute unless score @s ui_tmw272_surehit matches 1.. if score @s ui_tmw272_nausea matches 1.. if score $target_type ui_temp matches 1 run scoreboard players set $target_type ui_temp 5
execute unless score @s ui_tmw272_surehit matches 1.. if score @s ui_tmw272_nausea matches 1.. if score $target_type ui_temp matches 8 run scoreboard players set $target_type ui_temp 18
execute unless score @s ui_tmw272_surehit matches 1.. if score @s ui_tmw272_dazzle matches 1.. unless score $target_type ui_temp matches 2 unless score $target_type ui_temp matches 8 run scoreboard players operation $target_count ui_temp -= @s ui_tmw272_dazzle
execute unless score @s ui_tmw272_surehit matches 1.. as @e[tag=ui_temp_players] if score @s ui_tmw272_flying matches 1.. run tag @s add ui_temp_players_no_random

execute if data storage ui:temp temp.effect.target_entity run function ui:tmw/272/effect/target_entity/
execute if data storage ui:temp temp.effect.target_nbt run function ui:tmw/272/effect/target_nbt/
#execute if data storage ui:temp temp.effect.target_tag run function ui:tmw/272/effect/target_tag/

# ターゲットにタグを設定する（ゲーム全体効果などの場合は実行段階で場合分けする、エンティティじゃない時はどうするか・・・）
## VEで見ている相手
execute if score $target_type ui_temp matches 1 run function ui:tmw/272/effect/target_type/1
## 自分
execute if score $target_type ui_temp matches 2 run function ui:tmw/272/effect/target_type/2
## 自分以外敵全員
execute if score $target_type ui_temp matches 3 run function ui:tmw/272/effect/target_type/3
## 自分含む全員
execute if score $target_type ui_temp matches 4 run function ui:tmw/272/effect/target_type/4
## 自分以外全員から target_count の数だけランダムに抽選
execute if score $target_type ui_temp matches 5 run function ui:tmw/272/effect/target_type/5
## 自分含む全員から target_count の数だけランダムに抽選
execute if score $target_type ui_temp matches 6 run function ui:tmw/272/effect/target_type/6
## target_ids:[] で指名
execute if score $target_type ui_temp matches 7 run function ui:tmw/272/effect/target_type/7/
## 自分とVEで見ている相手
execute if score $target_type ui_temp matches 8 run function ui:tmw/272/effect/target_type/8
## 戦線に参加している全員（show_textなどにどうぞ）
execute if score $target_type ui_temp matches 9 run function ui:tmw/272/effect/target_type/9
## 自分含む味方全員
execute if score $target_type ui_temp matches 10 run function ui:tmw/272/effect/target_type/10
## 自分含む味方から target_count の数だけランダムに抽選
execute if score $target_type ui_temp matches 11 run function ui:tmw/272/effect/target_type/11
## 自分以外味方全員
execute if score $target_type ui_temp matches 12 run function ui:tmw/272/effect/target_type/12
## 自分以外味方から target_count の数だけランダムに抽選
execute if score $target_type ui_temp matches 13 run function ui:tmw/272/effect/target_type/13
## <summon限定> 召喚者をターゲット
execute if score $target_type ui_temp matches 14 run function ui:tmw/272/effect/target_type/14
## この一連のカードでターゲットになったエンティティ全員
execute if score $target_type ui_temp matches 15 run function ui:tmw/272/effect/target_type/15
## 自分以外全員
execute if score $target_type ui_temp matches 16 run function ui:tmw/272/effect/target_type/16
## 自分以外全員から target_count の数だけランダムに抽選
execute if score $target_type ui_temp matches 17 run function ui:tmw/272/effect/target_type/17
## 自分 + 自分以外全員から target_count の数だけランダムに抽選
execute if score $target_type ui_temp matches 18 run function ui:tmw/272/effect/target_type/18

execute if entity @e[tag=tmw272_temp_card_effect_target] run tellraw @s[scores={ui_tmw601_accessory=5007}] ["",{"text":"> ","color":"gray","bold": true},{"text":">@s ","color":"green"},{"selector":"@e[tag=tmw272_temp_card_effect_target]"},{"text":"がターゲットされました"}]
execute unless entity @e[tag=tmw272_temp_card_effect_target] run tellraw @s[scores={ui_tmw601_accessory=5007}] ["",{"text":"> ","color":"gray","bold": true},{"text":">@s ","color":"green"},{"text":"ターゲットが存在しません (・ω・。≡。・ω・)"}]

execute as @e[tag=tmw272_temp_card_effect_target] if score @s ui_tmw272_reactive_effect_num matches 1.. run function ui:tmw/272/reactive_effect/targetted
function oh_my_dat:please

tag @e[tag=ui_temp_players_no_random] remove ui_temp_players_no_random
tag @e[tag=ui_temp_players_no_target] remove ui_temp_players_no_target

# ターゲットを対象に取ってエフェクトを実行する
## ダメージ  未実装（condition_checker:タゲの現在の体力「最大・最小」）
execute if data storage ui:temp temp.effect{effect_type:"damage"} run function ui:tmw/272/effect/effect_type/damage/

# ここで回避済みならターゲットから消える
tag @e[tag=tmw272_temp_card_effect_dodge] remove tmw272_temp_card_effect_target

## 回復  未実装（condition_checker:タゲの現在の体力「最大・最小」）
execute if data storage ui:temp temp.effect{effect_type:"heal"} run function ui:tmw/272/effect/effect_type/heal/
## ドロー  未実装（condition_checker:手札枚数「最大・最小・合計」）
execute if data storage ui:temp temp.effect{effect_type:"draw"} run function ui:tmw/272/effect/effect_type/draw/
## 捨てる（condition_checker:捨てた枚数）
execute if data storage ui:temp temp.effect{effect_type:"discard"} run function ui:tmw/272/effect/effect_type/discard/
## 仮想デッキドロー  未実装（condition_checker:手札枚数「最大・最小・合計」）
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
## テキストを出す
execute if data storage ui:temp temp.effect{effect_type:"show_text"} run function ui:tmw/272/effect/effect_type/show_text
## 仮想デッキからデッキに前からカード追加、そしてシャッフル   オプションでシャッフル無効にできる
execute if data storage ui:temp temp.effect{effect_type:"insert"} run function ui:tmw/272/effect/effect_type/insert/
## タゲが最後に使ったカードをAEに追加する
execute if data storage ui:temp temp.effect{effect_type:"last_used"} run function ui:tmw/272/effect/effect_type/last_used/
## アフターエフェクトへの編集
execute if data storage ui:temp temp.effect{effect_type:"modify_after_effect"} run function ui:tmw/272/effect/effect_type/modify_after_effect/
## エンティティを戦線に追加する
execute if data storage ui:temp temp.effect{effect_type:"summon"} run function ui:tmw/272/effect/effect_type/summon/ with storage ui:temp temp.effect
## デッキを完全に入れ替える（テスト実装、MOBに使うべからず）
execute if data storage ui:temp temp.effect{effect_type:"list_swap"} run function ui:tmw/272/effect/effect_type/list_swap/
## デスエフェクト
execute if data storage ui:temp temp.effect{effect_type:"death_effect"} run function ui:tmw/272/effect/effect_type/death_effect/
## その他
execute if data storage ui:temp temp.effect{effect_type:"misc"} run function ui:tmw/272/effect/effect_type/misc/
## デスエフェクトへの編集
execute if data storage ui:temp temp.effect{effect_type:"modify_death_effect"} run function ui:tmw/272/effect/effect_type/modify_death_effect/
## 任意コマンド実行
execute if data storage ui:temp temp.effect{effect_type:"command"} run function ui:tmw/272/effect/effect_type/command/
## リアクティブエフェクト
execute if data storage ui:temp temp.effect{effect_type:"reactive_effect"} run function ui:tmw/272/effect/effect_type/reactive_effect/
## リアクティブエフェクトへの編集
execute if data storage ui:temp temp.effect{effect_type:"modify_reactive_effect"} run function ui:tmw/272/effect/effect_type/modify_reactive_effect/

function oh_my_dat:please

# 一連のエフェクトのターゲットを記録しつつ、次のターゲット用に初期化
tag @e[tag=tmw272_temp_card_effect_target] add tmw272_temp_card_effect_target_old
tag @e[tag=tmw272_temp_card_effect_target] remove tmw272_temp_card_effect_target
