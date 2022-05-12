scoreboard players reset @s tds_fire
scoreboard players reset @s tds_cold
scoreboard players reset @s tds_amethyst
scoreboard players reset @s tds_amethyst_t
scoreboard players set @s tds_hps 2147483647

#インクの爆発を起こして死ぬ
scoreboard players set $temp ui_temp 0
execute store result score $temp ui_temp run data get entity @s[nbt={SelectedItem:{tag:{tmw:{id:237}}}}] SelectedItem.tag.tmw.gun.Color
execute if score $temp ui_temp matches 1 at @s run fill ~-3 ~-3 ~-3 ~3 ~3 ~3 pink_wool replace #ui:wools
execute if score $temp ui_temp matches 1 at @s run particle dust 1 0.5 1 1 ~ ~ ~ 2 2 2 0 40 force
execute if score $temp ui_temp matches 1 at @s run particle block pink_concrete ~ ~ ~ 2 2 2 0 40 force
execute if score $temp ui_temp matches 2 at @s run fill ~-3 ~-3 ~-3 ~3 ~3 ~3 light_blue_wool replace #ui:wools
execute if score $temp ui_temp matches 2 at @s run particle dust 0.5 1 1 1 ~ ~ ~ 2 2 2 0 40 force
execute if score $temp ui_temp matches 2 at @s run particle block light_blue_concrete ~ ~ ~ 2 2 2 0 40 force