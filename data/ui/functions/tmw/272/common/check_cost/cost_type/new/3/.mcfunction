# デバッグメッセ

# cost_mod を計上して $cost の数値を可変する（コストの上限下限は min max に従う）
data modify storage ui:temp temp.mods set from storage ui:temp card.cost.mods
execute store result score $cost_count ui_temp run data get storage ui:temp card.cost.mods

# cost_countの数だけ走査処理をする
execute if score $cost_count ui_temp matches 1.. run function ui:tmw/272/common/check_cost/cost_type/new/3/burn

# 最終値を最大最小の範囲内に収める（minは記載がない場合0、maxは記載がない場合青天井）
execute store result score $cost_min ui_temp run data get storage ui:temp card.cost.min
execute store result score $cost_max ui_temp run data get storage ui:temp card.cost.max
execute unless data storage ui:temp card.cost.min run scoreboard players set $cost_min ui_temp 0

# 最小値と最大値も封印で増加する
execute if score $broadcast_type ui_temp matches 1 if score $cost_min ui_temp matches -2147483648..2147483647 run scoreboard players operation $cost_min ui_temp += @s ui_tmw272_seal
execute if score $broadcast_type ui_temp matches 1 if score $cost_max ui_temp matches -2147483648..2147483647 run scoreboard players operation $cost_max ui_temp += @s ui_tmw272_seal

#
scoreboard players operation $cost ui_temp > $cost_min ui_temp
execute if data storage ui:temp card.cost.max run scoreboard players operation $cost ui_temp < $cost_max ui_temp

# キャッシュを削除
scoreboard players reset $cost_count ui_temp
data remove storage ui:temp temp.mods
scoreboard players reset $cost_min ui_temp
scoreboard players reset $cost_max ui_temp





execute if score $cost ui_temp matches ..-1 run tellraw @s ["",{"text":"デバッグ用: マナコストが0を下回っています 0になりました","color":"red"}]
scoreboard players operation $cost ui_temp > #0 ui_num

execute if score $cost ui_temp <= @s ui_tmw272_mana run tellraw @s[scores={ui_tmw601_accessory=5007}] ["",{"text":"> ","color":"gray","bold": true},{"text":">@s ","color":"green"},{"text":"タイプ3解決: "},{"text":"SUCCESS","color": "green"},{"text":" : "},{"score":{"name": "$cost","objective": "ui_temp"}},{"text":"<="},{"score":{"name": "@s","objective": "ui_tmw272_mana"}}]
execute unless score $cost ui_temp <= @s ui_tmw272_mana run tellraw @s[scores={ui_tmw601_accessory=5007}] ["",{"text":"> ","color":"gray","bold": true},{"text":">@s ","color":"green"},{"text":"タイプ3解決: "},{"text":"FAILURE","color": "red"},{"text":" : "},{"score":{"name": "$cost","objective": "ui_temp"}},{"text":"!<="},{"score":{"name": "@s","objective": "ui_tmw272_mana"}}]

execute if score $cost ui_temp <= @s ui_tmw272_mana run scoreboard players set $check_cost ui_temp 1
execute if score $check_cost ui_temp matches 1 run scoreboard players operation @s ui_tmw272_mana -= $cost ui_temp

execute if score $check_cost ui_temp matches 0 run scoreboard players operation $cost ui_temp -= @s ui_tmw272_mana
execute if score $check_cost ui_temp matches 0 run tellraw @s ["",{"text":"> ","color":"gray","bold": true},{"text":"このカードの発動には "},{"score":{"name": "$cost","objective": "ui_temp"},"color": "gray"},{"text":" マナ足りません"}]