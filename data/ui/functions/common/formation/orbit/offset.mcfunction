# 軌道配置のオフセット

# エラー対策
    scoreboard players operation $offset ui_temp %= #3600 ui_num

#
    execute if score $offset ui_temp matches 2048.. run execute as @e[tag=x] at @e[tag=p,limit=1] facing entity @e[tag=q,limit=1] feet facing ^ ^1 ^ positioned ^ ^ ^2000 rotated as @s positioned ^ ^ ^10 facing entity @e[tag=p,limit=1] feet positioned ^ ^ ^2000 rotated as @s positioned ^ ^ ^-10 facing entity @e[tag=p,limit=1] feet positioned as @e[tag=p,limit=1] positioned ^ ^ ^2000 facing entity @e[tag=q,limit=1] feet positioned ^ ^ ^2000 rotated as @s run tp @s ~ ~ ~ ~204.8 0
    scoreboard players remove $offset ui_temp 2048
    execute if score $offset ui_temp matches 1024.. run execute as @e[tag=x] at @e[tag=p,limit=1] facing entity @e[tag=q,limit=1] feet facing ^ ^1 ^ positioned ^ ^ ^2000 rotated as @s positioned ^ ^ ^10 facing entity @e[tag=p,limit=1] feet positioned ^ ^ ^2000 rotated as @s positioned ^ ^ ^-10 facing entity @e[tag=p,limit=1] feet positioned as @e[tag=p,limit=1] positioned ^ ^ ^2000 facing entity @e[tag=q,limit=1] feet positioned ^ ^ ^2000 rotated as @s run tp @s ~ ~ ~ ~102.4 0
    scoreboard players remove $offset ui_temp 1024
    execute if score $offset ui_temp matches 512.. run execute as @e[tag=x] at @e[tag=p,limit=1] facing entity @e[tag=q,limit=1] feet facing ^ ^1 ^ positioned ^ ^ ^2000 rotated as @s positioned ^ ^ ^10 facing entity @e[tag=p,limit=1] feet positioned ^ ^ ^2000 rotated as @s positioned ^ ^ ^-10 facing entity @e[tag=p,limit=1] feet positioned as @e[tag=p,limit=1] positioned ^ ^ ^2000 facing entity @e[tag=q,limit=1] feet positioned ^ ^ ^2000 rotated as @s run tp @s ~ ~ ~ ~51.2 0
    scoreboard players remove $offset ui_temp 512
    execute if score $offset ui_temp matches 256.. run execute as @e[tag=x] at @e[tag=p,limit=1] facing entity @e[tag=q,limit=1] feet facing ^ ^1 ^ positioned ^ ^ ^2000 rotated as @s positioned ^ ^ ^10 facing entity @e[tag=p,limit=1] feet positioned ^ ^ ^2000 rotated as @s positioned ^ ^ ^-10 facing entity @e[tag=p,limit=1] feet positioned as @e[tag=p,limit=1] positioned ^ ^ ^2000 facing entity @e[tag=q,limit=1] feet positioned ^ ^ ^2000 rotated as @s run tp @s ~ ~ ~ ~25.6 0
    scoreboard players remove $offset ui_temp 256
    execute if score $offset ui_temp matches 128.. run execute as @e[tag=x] at @e[tag=p,limit=1] facing entity @e[tag=q,limit=1] feet facing ^ ^1 ^ positioned ^ ^ ^2000 rotated as @s positioned ^ ^ ^10 facing entity @e[tag=p,limit=1] feet positioned ^ ^ ^2000 rotated as @s positioned ^ ^ ^-10 facing entity @e[tag=p,limit=1] feet positioned as @e[tag=p,limit=1] positioned ^ ^ ^2000 facing entity @e[tag=q,limit=1] feet positioned ^ ^ ^2000 rotated as @s run tp @s ~ ~ ~ ~12.8 0
    scoreboard players remove $offset ui_temp 128
    execute if score $offset ui_temp matches 64.. run execute as @e[tag=x] at @e[tag=p,limit=1] facing entity @e[tag=q,limit=1] feet facing ^ ^1 ^ positioned ^ ^ ^2000 rotated as @s positioned ^ ^ ^10 facing entity @e[tag=p,limit=1] feet positioned ^ ^ ^2000 rotated as @s positioned ^ ^ ^-10 facing entity @e[tag=p,limit=1] feet positioned as @e[tag=p,limit=1] positioned ^ ^ ^2000 facing entity @e[tag=q,limit=1] feet positioned ^ ^ ^2000 rotated as @s run tp @s ~ ~ ~ ~6.4 0
    scoreboard players remove $offset ui_temp 64
    execute if score $offset ui_temp matches 32.. run execute as @e[tag=x] at @e[tag=p,limit=1] facing entity @e[tag=q,limit=1] feet facing ^ ^1 ^ positioned ^ ^ ^2000 rotated as @s positioned ^ ^ ^10 facing entity @e[tag=p,limit=1] feet positioned ^ ^ ^2000 rotated as @s positioned ^ ^ ^-10 facing entity @e[tag=p,limit=1] feet positioned as @e[tag=p,limit=1] positioned ^ ^ ^2000 facing entity @e[tag=q,limit=1] feet positioned ^ ^ ^2000 rotated as @s run tp @s ~ ~ ~ ~3.2 0
    scoreboard players remove $offset ui_temp 32
    execute if score $offset ui_temp matches 16.. run execute as @e[tag=x] at @e[tag=p,limit=1] facing entity @e[tag=q,limit=1] feet facing ^ ^1 ^ positioned ^ ^ ^2000 rotated as @s positioned ^ ^ ^10 facing entity @e[tag=p,limit=1] feet positioned ^ ^ ^2000 rotated as @s positioned ^ ^ ^-10 facing entity @e[tag=p,limit=1] feet positioned as @e[tag=p,limit=1] positioned ^ ^ ^2000 facing entity @e[tag=q,limit=1] feet positioned ^ ^ ^2000 rotated as @s run tp @s ~ ~ ~ ~1.6 0
    scoreboard players remove $offset ui_temp 16
    execute if score $offset ui_temp matches 8.. run execute as @e[tag=x] at @e[tag=p,limit=1] facing entity @e[tag=q,limit=1] feet facing ^ ^1 ^ positioned ^ ^ ^2000 rotated as @s positioned ^ ^ ^10 facing entity @e[tag=p,limit=1] feet positioned ^ ^ ^2000 rotated as @s positioned ^ ^ ^-10 facing entity @e[tag=p,limit=1] feet positioned as @e[tag=p,limit=1] positioned ^ ^ ^2000 facing entity @e[tag=q,limit=1] feet positioned ^ ^ ^2000 rotated as @s run tp @s ~ ~ ~ ~0.8 0
    scoreboard players remove $offset ui_temp 8
    execute if score $offset ui_temp matches 4.. run execute as @e[tag=x] at @e[tag=p,limit=1] facing entity @e[tag=q,limit=1] feet facing ^ ^1 ^ positioned ^ ^ ^2000 rotated as @s positioned ^ ^ ^10 facing entity @e[tag=p,limit=1] feet positioned ^ ^ ^2000 rotated as @s positioned ^ ^ ^-10 facing entity @e[tag=p,limit=1] feet positioned as @e[tag=p,limit=1] positioned ^ ^ ^2000 facing entity @e[tag=q,limit=1] feet positioned ^ ^ ^2000 rotated as @s run tp @s ~ ~ ~ ~0.4 0
    scoreboard players remove $offset ui_temp 4
    execute if score $offset ui_temp matches 2.. run execute as @e[tag=x] at @e[tag=p,limit=1] facing entity @e[tag=q,limit=1] feet facing ^ ^1 ^ positioned ^ ^ ^2000 rotated as @s positioned ^ ^ ^10 facing entity @e[tag=p,limit=1] feet positioned ^ ^ ^2000 rotated as @s positioned ^ ^ ^-10 facing entity @e[tag=p,limit=1] feet positioned as @e[tag=p,limit=1] positioned ^ ^ ^2000 facing entity @e[tag=q,limit=1] feet positioned ^ ^ ^2000 rotated as @s run tp @s ~ ~ ~ ~0.2 0
    scoreboard players remove $offset ui_temp 2
    execute if score $offset ui_temp matches 1.. run execute as @e[tag=x] at @e[tag=p,limit=1] facing entity @e[tag=q,limit=1] feet facing ^ ^1 ^ positioned ^ ^ ^2000 rotated as @s positioned ^ ^ ^10 facing entity @e[tag=p,limit=1] feet positioned ^ ^ ^2000 rotated as @s positioned ^ ^ ^-10 facing entity @e[tag=p,limit=1] feet positioned as @e[tag=p,limit=1] positioned ^ ^ ^2000 facing entity @e[tag=q,limit=1] feet positioned ^ ^ ^2000 rotated as @s run tp @s ~ ~ ~ ~0.1 0
    scoreboard players remove $offset ui_temp 1