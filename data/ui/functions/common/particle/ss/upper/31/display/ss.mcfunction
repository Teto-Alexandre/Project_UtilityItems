# カスタムモデルアマスタに実行
    execute as @e[tag=ui_common_projectile_31_display] at @s run function ui:common/particle/ss/upper/31/display/tick

# SSロジック維持
    execute if entity @e[tag=ui_common_projectile_31_display] run schedule function ui:common/particle/ss/upper/31/display/ss 1t append