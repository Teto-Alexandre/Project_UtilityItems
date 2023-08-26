execute if score @s ui_st2 matches 1 run tellraw @a [{"text":"<"},{"selector":"@s"},{"text":"> どうかしましたか？"}]

execute if score @s ui_st2 matches 200.. if predicate ui:percentage/5 run tellraw @a [{"text":"<"},{"selector":"@s"},{"text":"> 爆発します！"}]
execute if score @s ui_st2 matches 250.. if predicate ui:percentage/5 run tellraw @a [{"text":"<"},{"selector":"@s"},{"text":"> あのかわいそうな人達を見てみてください"}]
execute if score @s ui_st2 matches 300.. if predicate ui:percentage/5 run tellraw @a [{"text":"<"},{"selector":"@s"},{"text":"> 何か問題ありましたか？"}]
execute if score @s ui_st2 matches 350.. if predicate ui:percentage/5 run tellraw @a [{"text":"<"},{"selector":"@s"},{"text":"> 消し飛んでしまいます！"}]
execute if score @s ui_st2 matches 400.. if predicate ui:percentage/5 run tellraw @a [{"text":"<"},{"selector":"@s"},{"text":"> 危険ではありません"}]

execute if score @s ui_st2 matches 200.. if predicate ui:percentage/10 run playsound minecraft:entity.wither.hurt player @a ~ ~ ~ 5 0.5 0
execute if score @s ui_st2 matches 300.. if predicate ui:percentage/10 run playsound minecraft:entity.ender_dragon.flap player @a ~ ~ ~ 5 1.5 0
execute if score @s ui_st2 matches 400.. if predicate ui:percentage/10 run playsound entity.ghast.scream player @a ~ ~ ~ 5 1.2 0
execute if score @s ui_st2 matches 500.. if predicate ui:percentage/10 run playsound item.totem.use player @a ~ ~ ~ 1 0.5 1
execute if score @s ui_st2 matches 600.. run playsound entity.wither.death player @a ~ ~ ~ 1 1 1

execute if score @s ui_st2 matches 200.. run particle end_rod ~ ~ ~ 0 0 0 1 250 force
execute if score @s ui_st2 matches 300.. run effect give @s glowing
execute if score @s ui_st2 matches 400.. run effect give @s slowness 1000000 127 true
execute if score @s ui_st2 matches 500.. run particle dust 1 1 1 5 ~ ~ ~ 10 10 10 1 50 force

execute if score @s ui_st2 matches 600.. run kill @a[tag=!ui_temp_player]