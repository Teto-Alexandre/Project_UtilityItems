# ツルハシを使う標準準備動作

#
    execute as @a if score @s ui_id = $id ui_temp run tag @s add ui_temp_this

#
    scoreboard players operation $level ui_temp = @a[tag=ui_temp_this] ui_lvl_cut_lvl
    scoreboard players operation $fortune ui_temp = @a[tag=ui_temp_this] ui_cut_f
    scoreboard players operation $temp ui_temp = $fortune ui_temp
    scoreboard players operation $temp ui_temp /= #100 ui_num
    scoreboard players operation $temp2 ui_temp = $fortune ui_temp
    scoreboard players operation $temp2 ui_temp %= #100 ui_num

#
    scoreboard players set $mod ui_calc1 100
    function ui:common/rand
    #tellraw @a [{"score":{"name":"$rand","objective":"ui_calc1"}},{"text":"/"},{"score":{"name":"$temp2","objective":"ui_temp"}}]
    execute if score $rand ui_calc1 < $temp2 ui_temp run scoreboard players add $temp ui_temp 1
    execute if score $temp ui_temp matches 1.. run function ui:level/cut/fortune

#
    execute if predicate ui:percentage/10 at @s run function ui:level/cut/level/additional

#
    scoreboard players operation @a[tag=ui_temp_this] ui_lvl_cut_exp += $xp ui_temp
    tag @a[tag=ui_temp_this] remove ui_temp_this