execute as @e[predicate=ui:load_unhurtable,sort=nearest,limit=1] at @s run function ui:common/particle/ss/upper/7/damage
scoreboard players remove $count ui_temp 100
scoreboard players set $mod ui_temp 8
function ui:common/rand
execute if score $rand ui_calc1 matches 0 positioned ^ ^ ^-4 rotated ~25 ~ run function ui:common/particle/ss/upper/7/2
execute if score $rand ui_calc1 matches 1 positioned ^ ^ ^-4 rotated ~-25 ~ run function ui:common/particle/ss/upper/7/2
execute if score $rand ui_calc1 matches 2 positioned ^ ^ ^-4 rotated ~ ~25 run function ui:common/particle/ss/upper/7/2
execute if score $rand ui_calc1 matches 3 positioned ^ ^ ^-4 rotated ~ ~-25 run function ui:common/particle/ss/upper/7/2
execute if score $rand ui_calc1 matches 4 positioned ^ ^ ^-4 rotated ~15 ~15 run function ui:common/particle/ss/upper/7/2
execute if score $rand ui_calc1 matches 5 positioned ^ ^ ^-4 rotated ~-15 ~15 run function ui:common/particle/ss/upper/7/2
execute if score $rand ui_calc1 matches 6 positioned ^ ^ ^-4 rotated ~15 ~-15 run function ui:common/particle/ss/upper/7/2
execute if score $rand ui_calc1 matches 7 positioned ^ ^ ^-4 rotated ~-15 ~-15 run function ui:common/particle/ss/upper/7/2