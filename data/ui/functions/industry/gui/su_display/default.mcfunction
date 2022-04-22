#function ui:industry/gui/su_display/default

#万能ディスプレイ（default用）
    execute if score @s ui_i_su matches 1.. if score @s ui_i_su = @s ui_i_sum run item replace block ~ ~ ~ container.18 with orange_stained_glass_pane{display:{Lore:[]},ui:{ismenu:1}}
    execute if score @s ui_i_su matches 1.. unless score @s ui_i_su = @s ui_i_sum run item replace block ~ ~ ~ container.18 with yellow_stained_glass_pane{display:{Lore:[]},ui:{ismenu:1}}
    execute if score @s ui_i_su matches 0 run item replace block ~ ~ ~ container.18 with black_stained_glass_pane{display:{Lore:[]},ui:{ismenu:1}}
    scoreboard players operation $su ui_calc1 = @s ui_i_su
    scoreboard players operation $sum ui_calc1 = @s ui_i_sum
    scoreboard players set $sui ui_calc1 0
    scoreboard players operation $sui ui_calc1 = @s ui_i_sui
    scoreboard players set $suu ui_calc1 0
    scoreboard players operation $suu ui_calc1 = @s ui_i_suu
    scoreboard players operation $suo ui_calc1 = @s ui_i_suo
    execute if score $sui ui_calc1 matches 0 run item modify block ~ ~ ~ container.18 ui:su_display
    execute unless score $sui ui_calc1 matches 0 run item modify block ~ ~ ~ container.18 ui:su_display2