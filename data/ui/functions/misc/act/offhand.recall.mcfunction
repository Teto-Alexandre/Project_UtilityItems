# ササッ、お前のメインハンドに素早く戻す
    item replace entity @s weapon.mainhand from entity @s weapon.offhand
    item replace entity @s weapon.offhand with air

# 付与
    execute as @s[scores={ui_st=..0}] run tag @s add tmw_oh_n
    execute as @s[scores={ui_st=1..}] run tag @s add tmw_oh_s