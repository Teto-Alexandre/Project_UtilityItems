# lethal の追加効果
    execute store result score $def ui_temp run attribute @s generic.armor get 10
    execute store result score $tough ui_temp run attribute @s generic.armor_toughness get 10
    scoreboard players operation $def ui_temp += $tough ui_temp
    execute if score $def ui_temp <= $level ui_temp run function ui:tmw/255/projectile/modifier/lethal2