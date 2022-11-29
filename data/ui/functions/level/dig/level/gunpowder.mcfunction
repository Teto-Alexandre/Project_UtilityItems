# レベル別の追加ドロップ

#
    scoreboard players set $bonus ui_temp 0
    scoreboard players set $mod ui_calc1 5
    function ui:common/rand
    execute if score $level ui_temp matches ..499 if score $rand ui_calc1 matches 0 store success score $bonus ui_temp run summon item ~ ~ ~ {Item:{id:"minecraft:gunpowder",Count:1b}}
    execute if score $level ui_temp matches 500.. if score $rand ui_calc1 matches 0..1 store success score $bonus ui_temp run summon item ~ ~ ~ {Item:{id:"minecraft:gunpowder",Count:16b}}
    execute if score $bonus ui_temp matches 1 run scoreboard players add $xp ui_temp 2000