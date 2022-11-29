# レベル別の追加ドロップ

#
    summon item ~ ~ ~ {Item:{id:"minecraft:apple",Count:1b}}
    execute if score $level ui_temp matches 200.. run summon item ~ ~ ~ {Item:{id:"minecraft:apple",Count:2b}}
    scoreboard players add $xp ui_temp 1500