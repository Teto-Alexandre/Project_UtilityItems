# カスタムモデルアマスタに実行
    execute as @e[tag=ui_common_projectile_-10018_model] at @s run function ui:common/particle/ss/downer/10018/custom_model/tick

# SSロジック維持
    execute if entity @e[tag=ui_common_projectile_-10018_model] run schedule function ui:common/particle/ss/downer/10018/custom_model/ss 1t append