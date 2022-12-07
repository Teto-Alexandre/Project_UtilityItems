# レベル追加ドロップ

#
    execute if score $level ui_temp matches 10.. run function ui:level/mine/level/void
    execute if score $level ui_temp matches 25..99 if predicate ui:percentage/10 run function ui:level/mine/level/glowstone_dust
    execute if score $level ui_temp matches 100.. if predicate ui:percentage/25 run function ui:level/mine/level/glowstone_dust
    execute if score $level ui_temp matches 50..199 if predicate ui:percentage/1 run function ui:level/mine/level/diamond
    execute if score $level ui_temp matches 200..499 if predicate ui:percentage/2 run function ui:level/mine/level/diamond
    execute if score $level ui_temp matches 500..999 if predicate ui:percentage/3 run function ui:level/mine/level/diamond
    execute if score $level ui_temp matches 1000.. if predicate ui:percentage/5 run function ui:level/mine/level/diamond
    execute if score $level ui_temp matches 100..599 if predicate ui:percentage/0.1 run function ui:level/mine/level/netherite_scrap
    execute if score $level ui_temp matches 600..999 if predicate ui:percentage/0.25 run function ui:level/mine/level/netherite_scrap
    execute if score $level ui_temp matches 1000.. if predicate ui:percentage/0.5 run function ui:level/mine/level/netherite_scrap