# レベル追加ドロップ

#
    execute if score $level ui_temp matches 10.. run function ui:level/dig/level/void
    execute if score $level ui_temp matches 25.. run function ui:level/dig/level/glowstone_dust
    execute if score $level ui_temp matches 45.. run function ui:level/dig/level/gunpowder
    execute if score $level ui_temp matches 60.. run function ui:level/dig/level/diamond