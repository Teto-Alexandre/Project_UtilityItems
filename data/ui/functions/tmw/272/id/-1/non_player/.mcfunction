data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.list_origin set value []

# デッキビルダー起動
data modify storage ui:cg1 DeckBuilder set value {CardRate:{Standard:1,Unique:1,Theme:1,Meta:0,Only:0.05},Standard:[],Unique:[],Theme:[],Meta:[],Only:[]}

## 種族とかごとのカードセットをここで行う

# ランダム用の確率構築
scoreboard players set $cardrate_total ui_temp 0
execute store result score $cardrate_standard ui_temp run data get storage ui:cg1 DeckBuilder.CardRate.Standard
execute store result score $cardrate_unique ui_temp run data get storage ui:cg1 DeckBuilder.CardRate.Unique
execute store result score $cardrate_theme ui_temp run data get storage ui:cg1 DeckBuilder.CardRate.Theme
execute store result score $cardrate_meta ui_temp run data get storage ui:cg1 DeckBuilder.CardRate.Meta
execute store result score $cardrate_only ui_temp run data get storage ui:cg1 DeckBuilder.CardRate.Only 100
scoreboard players operation $cardrate_total ui_temp += $cardrate_standard ui_temp
scoreboard players operation $cardrate_total ui_temp += $cardrate_unique ui_temp
scoreboard players operation $cardrate_total ui_temp += $cardrate_theme ui_temp
scoreboard players operation $cardrate_total ui_temp += $cardrate_meta ui_temp
## 一個ずつ引いていって、randがマイナスになったらそのカード種類を選ぶ

# 唯一を持ち込むかどうか
scoreboard players set $list_card_oo ui_temp 0
scoreboard players operation $mod ui_calc1 += $cardrate_only ui_temp
function ui:common/rand
execute if score $rand ui_calc1 < $cardrate_only ui_temp run scoreboard players set $list_card_oo ui_temp 1

# カード投入開始
scoreboard players set $list_card_count ui_temp 0
execute if entity @s[type=!creeper,type=!skeleton,type=!spider] run function ui:tmw/272/id/-1/non_player/hc_loop
execute if entity @s[type=creeper] run function ui:tmw/272/id/-1/non_player/raijin
execute if entity @s[type=skeleton] run function ui:tmw/272/id/-1/non_player/skeleton
execute if entity @s[type=spider] run function ui:tmw/272/id/-1/non_player/spider

# リセット
scoreboard players reset $list_card_oo ui_temp
scoreboard players reset $list_card_count ui_temp
scoreboard players reset $cardrate_total ui_temp
scoreboard players reset $cardrate_standard ui_temp
scoreboard players reset $cardrate_unique ui_temp
scoreboard players reset $cardrate_theme ui_temp
scoreboard players reset $cardrate_meta ui_temp
scoreboard players reset $cardrate_only ui_temp

data remove storage ui:cg1 DeckBuilder