# ヘルメット

# ディメンション
execute if score $head ui_temp matches 4001 run function ui:tmw/601/head/1/main

# 採掘
execute if score $head ui_temp matches 4501 run function ui:tmw/601/head/501/main

# 粘土削り
execute if score $head ui_temp matches 4600 run function ui:tmw/601/head/600/main

# ロボトップ
execute if score $head ui_temp matches 4601 run function ui:tmw/601/head/601/main
execute if score $head ui_temp matches 4602 run function ui:tmw/601/head/602/main

