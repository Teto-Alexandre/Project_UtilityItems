#アメジストタイムカウント減少
    scoreboard players remove @s tds_amethyst_t 1
    execute if score @s tds_amethyst_t matches ..0 run function tds:state/amethyst_t

#視覚効果
    particle dust 1 0.5 1 1 ~ ~1 ~ 0.8 0.8 0.8 0 15
