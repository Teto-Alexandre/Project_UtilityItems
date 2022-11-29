# レベル追加ドロップ

#
    execute if score $level ui_temp matches 10.. run function ui:level/mine/level/void
    execute if score $level ui_temp matches 25.. run function ui:level/mine/level/glowstone_dust
    execute if score $level ui_temp matches 50.. run function ui:level/mine/level/diamond