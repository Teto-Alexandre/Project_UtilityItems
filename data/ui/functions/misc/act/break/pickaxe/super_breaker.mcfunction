# スパブレ
    scoreboard players set @s ui_ct 1200

# 通知
    tellraw @s [{"text":"*スーパーブレイカー発動*"}]
    playsound entity.skeleton_horse.death player @a ~ ~ ~ 1 1.2

#
    execute if score @s ui_lvl_mine_lvl matches 1..50 run effect give @s haste 6 3 true
    execute if score @s ui_lvl_mine_lvl matches 51..100 run effect give @s haste 7 3 true
    execute if score @s ui_lvl_mine_lvl matches 101..150 run effect give @s haste 8 3 true
    execute if score @s ui_lvl_mine_lvl matches 151..200 run effect give @s haste 9 3 true
    execute if score @s ui_lvl_mine_lvl matches 201..250 run effect give @s haste 10 3 true
    execute if score @s ui_lvl_mine_lvl matches 251..300 run effect give @s haste 11 3 true
    execute if score @s ui_lvl_mine_lvl matches 301..350 run effect give @s haste 12 3 true
    execute if score @s ui_lvl_mine_lvl matches 351..400 run effect give @s haste 13 3 true
    execute if score @s ui_lvl_mine_lvl matches 401..450 run effect give @s haste 14 3 true
    execute if score @s ui_lvl_mine_lvl matches 451..500 run effect give @s haste 15 3 true
    execute if score @s ui_lvl_mine_lvl matches 501..550 run effect give @s haste 16 3 true
    execute if score @s ui_lvl_mine_lvl matches 551..600 run effect give @s haste 17 3 true
    execute if score @s ui_lvl_mine_lvl matches 601..650 run effect give @s haste 18 3 true
    execute if score @s ui_lvl_mine_lvl matches 651..700 run effect give @s haste 19 3 true
    execute if score @s ui_lvl_mine_lvl matches 701..750 run effect give @s haste 20 3 true
    execute if score @s ui_lvl_mine_lvl matches 751..800 run effect give @s haste 21 3 true
    execute if score @s ui_lvl_mine_lvl matches 801..850 run effect give @s haste 22 3 true
    execute if score @s ui_lvl_mine_lvl matches 851..900 run effect give @s haste 23 3 true
    execute if score @s ui_lvl_mine_lvl matches 901..950 run effect give @s haste 24 3 true
    execute if score @s ui_lvl_mine_lvl matches 951..1000 run effect give @s haste 25 3 true