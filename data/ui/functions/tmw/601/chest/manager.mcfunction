# チェストプレート

# 自爆
execute if score $chest ui_temp matches 3001 run function ui:tmw/601/chest/1
# ガード
execute if score $chest ui_temp matches 3002 run function ui:tmw/601/chest/2
# 消音
execute if score $chest ui_temp matches 3003 run function ui:tmw/601/chest/3

# 採掘
execute if score $chest ui_temp matches 3501 run function ui:tmw/601/chest/501/main
