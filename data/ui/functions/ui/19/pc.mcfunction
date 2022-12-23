# メッセージ
scoreboard players operation $total ui_temp = @s ui_is
execute run tellraw @a [{"color":"gray","text":"BreakPower"},{"color":"green","text":"> TOTAL: "},{"score":{"name":"$total","objective":"ui_temp"},"color":"gold"},{"color":"gray","text":"blocks"}]

# コンボ中断
scoreboard players reset @s ui_is
scoreboard players reset @s ui_is2
playsound entity.skeleton.hurt block @a ~ ~ ~ 1 1.4