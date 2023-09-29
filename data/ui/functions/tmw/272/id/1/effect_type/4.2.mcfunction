# カードを捨てるテスト
execute store result score $condition_checker_temp ui_temp run clear @s #ui:all{IsCG1:1} 1
scoreboard players operation $condition_checker ui_temp += $condition_checker_temp ui_temp
scoreboard players reset $condition_checker_temp ui_temp