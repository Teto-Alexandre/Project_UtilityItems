scoreboard players reset @s tds_fire
scoreboard players reset @s tds_cold
scoreboard players reset @s tds_amethyst
scoreboard players reset @s tds_amethyst_t

#インクの爆発を起こして死ぬ
scoreboard players set $temp ui_temp 0
execute store result score $temp ui_temp run data get entity @s[nbt={SelectedItem:{tag:{tmw:{id:15}}}}] SelectedItem.tag.tmw.type
execute if score $temp ui_temp matches 16..19 at @s run fill ~-3 ~-3 ~-3 ~3 ~3 ~3 pink_wool replace #ui:wools
execute if score $temp ui_temp matches 26..29 at @s run fill ~-3 ~-3 ~-3 ~3 ~3 ~3 light_blue_wool replace #ui:wools