# レベル追加ドロップ

#
    execute if score $level ui_temp matches 10.. run function ui:level/cut/level/void
    execute if score $level ui_temp matches 25..199 if predicate ui:percentage/30 run function ui:level/cut/level/apple
    execute if score $level ui_temp matches 200.. if predicate ui:percentage/75 run function ui:level/cut/level/apple
    execute if score $level ui_temp matches 50..299 if predicate ui:percentage/5 run function ui:level/cut/level/golden_apple
    execute if score $level ui_temp matches 300.. if predicate ui:percentage/10 run function ui:level/cut/level/golden_apple
    execute if score $level ui_temp matches 100..499 if predicate ui:percentage/1 run function ui:level/cut/level/enchanted_golden_apple
    execute if score $level ui_temp matches 500..999 if predicate ui:percentage/2 run function ui:level/cut/level/enchanted_golden_apple
    execute if score $level ui_temp matches 1000.. if predicate ui:percentage/3 run function ui:level/cut/level/enchanted_golden_apple