#> ui:misc/act/use
#
# 人参棒を右クリした時に実行、スニークキーを押しているかで分岐
#
# アイテムの検知に便利なタグを付与する
#
# @public

#
    execute as @s[scores={ui_st=..0}] run tag @s add tmw_use_n
    execute as @s[scores={ui_st=1..}] run tag @s add tmw_use_s
    scoreboard players set @s ui_use2_tc 6