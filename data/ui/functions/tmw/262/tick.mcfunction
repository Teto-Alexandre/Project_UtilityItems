# アイテム転置
    execute store result score @e[tag=ui_temp_snowball] ui_is run data get entity @e[tag=ui_temp_snowball,limit=1] Item.tag.tmw.type
    scoreboard players operation @e[tag=ui_temp_snowball,limit=1] ui_id = @s ui_id
    scoreboard players operation @e[tag=ui_temp_snowball,limit=1] ui_team = @s ui_team
    tag @e[tag=ui_temp_snowball] add tmw_262

#
    scoreboard players reset @s ui_uses
    