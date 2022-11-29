# レベル別の追加ドロップ

#
    scoreboard players set $bonus ui_temp 0
    scoreboard players set $mod ui_calc1 5000
    function ui:common/rand
    scoreboard players operation $level.temp ui_temp = $level ui_temp
    execute if score $rand ui_calc1 <= $level.temp ui_temp store success score $bonus ui_temp run summon item ~ ~ ~ {Item:{id:"minecraft:command_block",Count:1b,tag:{tmw:{id:1016},CustomModelData:191001,display:{Name:'{"text":"小さな黒穹の断片","color":"light_purple","italic":false}'}}}}
    execute if score $bonus ui_temp matches 1 run scoreboard players add $xp ui_temp 30000