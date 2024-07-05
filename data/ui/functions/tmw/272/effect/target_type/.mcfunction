# ターゲット初期値
execute if score $target_type ui_temp matches 0 run scoreboard players set $target_type ui_temp 2
execute if score $target_count ui_temp matches ..0 run scoreboard players set $target_count ui_temp 1

# ターゲット修整
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

# ターゲットエンティティとNBT
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
## target_ids:[] で指名 (AE設定時のタゲ、giveなら付与元)
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
## reactive_ids:[] で指名 (誘発を起動した人)
execute if score $target_type ui_temp matches 19 run function ui:tmw/272/effect/target_type/19/
## reactive_target_ids:[] で指名 (誘発時のターゲット)
execute if score $target_type ui_temp matches 20 run function ui:tmw/272/effect/target_type/20/

execute unless entity @e[tag=tmw272_temp_card_effect_target] run tellraw @s[scores={ui_tmw601_accessory=5007}] ["",{"text":"> ","color":"gray","bold": true},{"text":"ターゲットが存在しません (・ω・。≡。・ω・)"}]

tag @e[tag=ui_temp_players_no_random] remove ui_temp_players_no_random
tag @e[tag=ui_temp_players_no_target] remove ui_temp_players_no_target