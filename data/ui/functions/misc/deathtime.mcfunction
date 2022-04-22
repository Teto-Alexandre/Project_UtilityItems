#死んだときに実行する奴全般
execute as @s run function tds:deathtime
scoreboard players set @s ui_hp 0
tag @s remove tmw_401_5

#始動スコアリセット
scoreboard players set @s ui_dc 0