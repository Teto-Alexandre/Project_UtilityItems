# ミサイル+破片個別ライブラリ

# ミサイルモーション
    execute as @s[scores={ui_gms=..0}] run function ui:tmw/242/fragment/master
    execute as @s[scores={ui_gms=1..}] run function ui:tmw/242/missile/master

# 個別
    function ui:tmw/242/function/main

# 爆発
    execute as @s[tag=ex] run function ui:tmw/242/ex/manager