# カードスコア取得
    execute store result score @s ui_tmw_con_id run data get entity @s SelectedItem.tag.tmw.con_id
    execute store result score $lv ui_temp run data get entity @s SelectedItem.tag.tmw.con_lv
    execute store result score $lv.test ui_temp run experience query @s levels
    execute if score $lv.test ui_temp < $lv ui_temp run scoreboard players set @s ui_tmw_con_id 0

# レべル消費する
    execute if score $lv ui_temp matches 1.. if entity @s[scores={ui_tmw_con_id=1..}] run function ui:tmw/521/lv_use

# カード消える
    execute if entity @s[scores={ui_tmw_con_id=1..}] run item replace entity @s weapon.mainhand with air

# 使用
    execute if entity @s[scores={ui_tmw_con_id=1}] run function ui:tmw/521/consume/1
    execute if entity @s[scores={ui_tmw_con_id=4}] run function ui:tmw/521/consume/4
    execute if entity @s[scores={ui_tmw_con_id=11}] run function ui:tmw/521/consume/11
    execute if entity @s[scores={ui_tmw_con_id=21}] run function ui:tmw/521/consume/21
    execute if entity @s[scores={ui_tmw_con_id=101}] run function ui:tmw/521/consume/101
    execute if entity @s[scores={ui_tmw_con_id=102}] run function ui:tmw/521/consume/102
    execute if entity @s[scores={ui_tmw_con_id=103}] run function ui:tmw/521/consume/103
    execute if entity @s[scores={ui_tmw_con_id=104}] run function ui:tmw/521/consume/104
    execute if entity @s[scores={ui_tmw_con_id=105}] run function ui:tmw/521/consume/105
    execute if entity @s[scores={ui_tmw_con_id=106}] run function ui:tmw/521/consume/106
    execute if entity @s[scores={ui_tmw_con_id=107}] run function ui:tmw/521/consume/107
    execute if entity @s[scores={ui_tmw_con_id=108}] run function ui:tmw/521/consume/108

# 音
    execute if entity @s[scores={ui_tmw_con_id=1..}] run playsound entity.illusioner.cast_spell player @a ~ ~ ~ 1 1 0
    execute if entity @s[scores={ui_tmw_con_id=0}] run playsound block.dispenser.fail player @a ~ ~ ~ 1 0.8 0

# temp
    scoreboard players reset $lv ui_temp
    scoreboard players reset $lv.test ui_temp