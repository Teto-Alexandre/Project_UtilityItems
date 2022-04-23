#> ui:tmw/-3
#
# ダメージを受けた時に実行されるコマンド
#
# 魔導障壁の耐久値減少にのみ使用している
#
# @public

scoreboard players set @a[scores={ui_dr=1..},nbt=!{ActiveEffects:[{Id:11b,Amplifier:4b}]}] ui_dr 0
execute as @a[scores={ui_dr=1..}] run function ui:tmw/-3_1
