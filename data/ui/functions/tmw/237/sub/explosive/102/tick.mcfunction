# 反射結界

# 常時実行
    tag @s add ui_c_ref_p
    tag @s add ui_c_ref
    tag @s add ui_refd
    particle crit ~ ~ ~ 2.5 2.5 2.5 0 10 normal
    
# 処理終了
    execute if score @s ui_uses matches 100.. run function ui:tmw/237/sub/explosive/102/end