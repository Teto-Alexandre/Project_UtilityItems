# 切削する
data modify storage ui:temp temp.effect set from storage ui:temp temp.card.effects[0]

# デバッグメッセ
tellraw @s[scores={ui_tmw601_accessory=5007}] ["",{"text":"> ","color":"gray","bold": true},{"text":">@s ","color":"green"},{"text":"解決"},{"score":{"name": "$count","objective": "ui_temp"}},{"text":" : "},{"storage":"ui:temp","nbt":"temp.effect"}]

# 汎用変数を記録
execute store result score $target_type ui_temp run data get storage ui:temp temp.effect.target_type 1
execute store result score $effect_type ui_temp run data get storage ui:temp temp.effect.effect_type 1
execute store result score $var ui_temp run data get storage ui:temp temp.effect.var 1

# ターゲットにタグを設定する（ゲーム全体効果などの場合は実行段階で場合分けする、エンティティじゃない時はどうするか・・・）
execute if score $target_type ui_temp matches 1 run function ui:tmw/272/id/1/target_type/1
execute if score $target_type ui_temp matches 2 run function ui:tmw/272/id/1/target_type/2
execute if score $target_type ui_temp matches 3 run function ui:tmw/272/id/1/target_type/3
execute if entity @e[tag=tmw272_temp_card_effect_target] run tellraw @s[scores={ui_tmw601_accessory=5007}] ["",{"text":"> ","color":"gray","bold": true},{"text":">@s ","color":"green"},{"selector":"@e[tag=tmw272_temp_card_effect_target]"},{"text":"がターゲットされました"}]
execute unless entity @e[tag=tmw272_temp_card_effect_target] run tellraw @s[scores={ui_tmw601_accessory=5007}] ["",{"text":"> ","color":"gray","bold": true},{"text":">@s ","color":"green"},{"text":"ターゲットが存在しません (・ω・。≡。・ω・)"}]

# ターゲットを対象に取ってエフェクトを実行する
execute if score $effect_type ui_temp matches 1 run function ui:tmw/272/id/1/effect_type/1
execute if score $effect_type ui_temp matches 2 run function ui:tmw/272/id/1/effect_type/2
execute if score $effect_type ui_temp matches 3 run function ui:tmw/272/id/1/effect_type/3

# ヒットエフェクト
execute if score $effect_type ui_temp matches 10001 as @e[tag=tmw272_temp_card_effect_target] run function ui:tmw/272/id/1/hit_effect

# 一連のエフェクトのターゲットを記録しつつ、次のターゲット用に初期化
tag @e[tag=tmw272_temp_card_effect_target] add tmw272_temp_card_effect_target_old
tag @e[tag=tmw272_temp_card_effect_target] remove tmw272_temp_card_effect_target

# まだあるなら - 次のエフェクトに移動
data remove storage ui:temp temp.card.effects[0]
scoreboard players remove $count ui_temp 1
execute if score $count ui_temp matches 1.. run function ui:tmw/272/id/1/burn