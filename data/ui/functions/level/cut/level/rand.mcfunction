# レベル追加ドロップ

#
    execute if score $level ui_temp matches 10.. run function ui:level/cut/level/void
    execute if score $level ui_temp matches 25.. run function ui:level/cut/level/apple
    execute if score $level ui_temp matches 50.. run function ui:level/cut/level/golden_apple