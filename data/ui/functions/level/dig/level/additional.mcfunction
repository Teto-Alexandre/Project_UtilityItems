# レベル追加ドロップ

#
    execute if score $level ui_temp matches 10.. run function ui:level/dig/level/void
    execute if score $level ui_temp matches 50..199 if predicate ui:percentage/10 run function ui:level/dig/level/gunpowder
    execute if score $level ui_temp matches 200..999 if predicate ui:percentage/25 run function ui:level/dig/level/gunpowder
    execute if score $level ui_temp matches 1000.. if predicate ui:percentage/50 run function ui:level/dig/level/gunpowder

# mineに丸投げ
    execute if score $level ui_temp matches 25..399 if predicate ui:percentage/1 run function ui:level/mine/level/glowstone_dust
    execute if score $level ui_temp matches 400.. if predicate ui:percentage/5 run function ui:level/mine/level/glowstone_dust
    execute if score $level ui_temp matches 100..299 if predicate ui:percentage/0.25 run function ui:level/mine/level/diamond
    execute if score $level ui_temp matches 300..699 if predicate ui:percentage/0.5 run function ui:level/mine/level/diamond
    execute if score $level ui_temp matches 700.. if predicate ui:percentage/1 run function ui:level/mine/level/diamond