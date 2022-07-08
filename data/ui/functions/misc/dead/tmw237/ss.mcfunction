# 死んだ人に実行
    execute as @a[tag=tmw_237_respawning] at @s run function ui:misc/dead/tmw237/respawn

# SSロジック維持
    execute if score $tmw237 ui_rst matches 1.. run schedule function ui:misc/dead/tmw237/ss 1t append