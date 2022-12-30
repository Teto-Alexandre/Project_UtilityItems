# 契約書スコア取得
    execute store result score @s ui_tmw_con_id run data get entity @s SelectedItem.tag.tmw.con_id

# 契約
    execute if entity @s[scores={ui_tmw_con_id=1}] run function ui:tmw/501/contract/1
    execute if entity @s[scores={ui_tmw_con_id=2}] run function ui:tmw/501/contract/2
    execute if entity @s[scores={ui_tmw_con_id=3}] run function ui:tmw/501/contract/3
    execute if entity @s[scores={ui_tmw_con_id=4}] run function ui:tmw/501/contract/4
    execute if entity @s[scores={ui_tmw_con_id=5}] run function ui:tmw/501/contract/5
    execute if entity @s[scores={ui_tmw_con_id=6}] run function ui:tmw/501/contract/6
    execute if entity @s[scores={ui_tmw_con_id=7}] run function ui:tmw/501/contract/7
    execute if entity @s[scores={ui_tmw_con_id=8}] run function ui:tmw/501/contract/8
    execute if entity @s[scores={ui_tmw_con_id=9}] run function ui:tmw/501/contract/9
    execute if entity @s[scores={ui_tmw_con_id=10}] run function ui:tmw/501/contract/10
    execute if entity @s[scores={ui_tmw_con_id=11}] run function ui:tmw/501/contract/11
    execute if entity @s[scores={ui_tmw_con_id=13}] run function ui:tmw/501/contract/13
    execute if entity @s[scores={ui_tmw_con_id=15}] run function ui:tmw/501/contract/15
    execute if entity @s[scores={ui_tmw_con_id=16}] run function ui:tmw/501/contract/16
    execute if entity @s[scores={ui_tmw_con_id=17}] run function ui:tmw/501/contract/17
    execute if entity @s[scores={ui_tmw_con_id=18}] run function ui:tmw/501/contract/18

# 契約書消える
    execute if entity @s[scores={ui_tmw_con_id=1..}] run item replace entity @s weapon.mainhand with air