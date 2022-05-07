#> ui:tmw/214/refmain
#
# 反射の加護に代表される「飛び道具の反射」を司る
#
# 1tickおきの実行なのでたまにすり抜ける
#
# @public

tag @e[distance=..5,type=#ui:reflect,tag=!ui_refr] add ui_refr
execute as @e[tag=ui_refr,distance=..5,tag=!ui_refd] run function ui:tmw/214/ref