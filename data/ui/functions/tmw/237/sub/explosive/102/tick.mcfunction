# 反射結界

# 常時実行
    execute if score @s ui_uses matches 5.. run tag @s add ui_c_ref_p
    execute if score @s ui_uses matches 5.. run tag @s add ui_c_ref
    execute if score @s ui_uses matches 5.. run tag @s add ui_refd
    execute if score @s ui_uses matches 5.. run particle crit ~ ~ ~ 2.5 2.5 2.5 0 10 normal
    execute if score @s ui_uses matches 60.. run tag @s add ui_237_sub_explode

# 処理終了
    execute if entity @s[tag=ui_237_sub_explode] run function ui:tmw/237/sub/explosive/102/end