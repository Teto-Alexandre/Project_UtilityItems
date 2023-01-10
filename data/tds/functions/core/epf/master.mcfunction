# EPF共通処理

# ダメージタイプでケース分岐
    execute if score $DamageType tds_dmg matches 1 run function tds:core/epf/damagetypes/1
    execute if score $DamageType tds_dmg matches 2 run function tds:core/epf/damagetypes/2
    execute if score $DamageType tds_dmg matches 3 run function tds:core/epf/damagetypes/3
    execute if score $DamageType tds_dmg matches 4 run function tds:core/epf/damagetypes/4
    execute if score $DamageType tds_dmg matches 5 run function tds:core/epf/damagetypes/5
    execute if score $DamageType tds_dmg matches 6 run function tds:core/epf/damagetypes/6
    execute if score $DamageType tds_dmg matches 7 run function tds:core/epf/damagetypes/7
    execute if score $DamageType tds_dmg matches 8 run function tds:core/epf/damagetypes/8
    execute if score $DamageType tds_dmg matches 9 run function tds:core/epf/damagetypes/9
    execute if score $DamageType tds_dmg matches 10 run function tds:core/epf/damagetypes/10
    execute if score $DamageType tds_dmg matches 11 run function tds:core/epf/damagetypes/11

# カスタムエンチャントを持っているなら分岐
    scoreboard players set $temp tds_dmg 0
    execute unless data storage tds:temp armor_head.tmw.ench unless data storage tds:temp armor_chest.tmw.ench unless data storage tds:temp armor_legs.tmw.ench unless data storage tds:temp armor_feet.tmw.ench run scoreboard players set $temp tds_dmg 1
    execute if score $temp tds_dmg matches 0 run function tds:core/epf/tmw

# リセット
    scoreboard players reset $Temp tds_dmg
    data remove storage tds:temp armor_head
    data remove storage tds:temp armor_chest
    data remove storage tds:temp armor_legs
    data remove storage tds:temp armor_feet