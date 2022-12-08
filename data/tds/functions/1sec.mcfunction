#Jump From tds:tick

# カウントリセット
    scoreboard players set $world tds_tick 1

# 状態異常
    execute as @e[scores={tds_fire=1..}] unless score @s tds_firer matches 1.. at @s run function tds:state/fire
    execute as @e[scores={tds_cold=1..}] unless score @s tds_coldr matches 1.. at @s run function tds:state/cold
    execute as @e[scores={tds_acid=1..}] at @s run function tds:state/acid
    execute as @e[scores={tds_amethyst=1..}] at @s run function tds:state/amethyst

# レジスト減少
    scoreboard players remove @e[scores={tds_firer=1..}] tds_firer 1
    scoreboard players remove @e[scores={tds_coldr=1..}] tds_coldr 1