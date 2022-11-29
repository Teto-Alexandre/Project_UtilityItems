# レベル別の追加ドロップ

#
    scoreboard players set $bonus ui_temp 0
    scoreboard players set $mod ui_calc1 2
    function ui:common/rand
    execute if score $level ui_temp matches ..199 if score $rand ui_calc1 matches 0 store success score $bonus ui_temp run summon item ~ ~ ~ {Item:{id:"minecraft:glowstone_dust",Count:1b}}
    execute if score $level ui_temp matches 200.. if score $rand ui_calc1 matches 0..1 store success score $bonus ui_temp run summon item ~ ~ ~ {Item:{id:"minecraft:glowstone_dust",Count:4b}}
    execute if score $bonus ui_temp matches 1 run scoreboard players add $xp ui_temp 1000