#見た目
    data merge storage ui:common {input:{Mode:"dist_point"}}
    function ui:common/distance
    scoreboard players operation $Return ui_temp /= #5 ui_num
    scoreboard players operation $damage ui_temp = $damage_max ui_temp
    scoreboard players operation $damage ui_temp -= $Return ui_temp
    execute at @s run function ui:tmw/255/projectile/hit/marker
