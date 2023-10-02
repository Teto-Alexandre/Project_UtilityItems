# 汎用変数を記録
execute if data storage ui:temp temp.effect.case run function ui:tmw/272/id/1/misc/case/
execute store result score $target_type ui_temp run data get storage ui:temp temp.effect.target_type 1
execute store result score $effect_type ui_temp run data get storage ui:temp temp.effect.effect_type 1
execute store result score $var ui_temp run data get storage ui:temp temp.effect.var 1
execute if data storage ui:temp temp.effect.rand run function ui:tmw/272/id/1/misc/random

# ターゲットにタグを設定する（ゲーム全体効果などの場合は実行段階で場合分けする、エンティティじゃない時はどうするか・・・）
execute if score $target_type ui_temp matches 1 run function ui:tmw/272/id/1/target_type/1
execute if score $target_type ui_temp matches 2 run function ui:tmw/272/id/1/target_type/2
execute if score $target_type ui_temp matches 3 run function ui:tmw/272/id/1/target_type/3
execute if score $target_type ui_temp matches 4 run function ui:tmw/272/id/1/target_type/4
execute if score $target_type ui_temp matches 5 run function ui:tmw/272/id/1/target_type/5
execute if score $target_type ui_temp matches 6 run function ui:tmw/272/id/1/target_type/6
execute if entity @e[tag=tmw272_temp_card_effect_target] run tellraw @s[scores={ui_tmw601_accessory=5007}] ["",{"text":"> ","color":"gray","bold": true},{"text":">@s ","color":"green"},{"selector":"@e[tag=tmw272_temp_card_effect_target]"},{"text":"がターゲットされました"}]
execute unless entity @e[tag=tmw272_temp_card_effect_target] run tellraw @s[scores={ui_tmw601_accessory=5007}] ["",{"text":"> ","color":"gray","bold": true},{"text":">@s ","color":"green"},{"text":"ターゲットが存在しません (・ω・。≡。・ω・)"}]

# ターゲットを対象に取ってエフェクトを実行する
execute if score $effect_type ui_temp matches 1 run function ui:tmw/272/id/1/effect_type/1
execute if score $effect_type ui_temp matches 2 run function ui:tmw/272/id/1/effect_type/2
execute if score $effect_type ui_temp matches 3 run function ui:tmw/272/id/1/effect_type/3
execute if score $effect_type ui_temp matches 4 run function ui:tmw/272/id/1/effect_type/4
execute if score $effect_type ui_temp matches 5 run function ui:tmw/272/id/1/effect_type/5
execute if score $effect_type ui_temp matches 6 run function ui:tmw/272/id/1/effect_type/6

# 一連のエフェクトのターゲットを記録しつつ、次のターゲット用に初期化
tag @e[tag=tmw272_temp_card_effect_target] add tmw272_temp_card_effect_target_old
tag @e[tag=tmw272_temp_card_effect_target] remove tmw272_temp_card_effect_target
