#=======================================================================================================

scoreboard players operation @s ui_hp_plusc = @s ui_hp_plus

execute as @s[scores={ui_hp_plusc=0..}] run attribute @s generic.max_health modifier remove 0-0-0-0-1
execute as @s[scores={ui_hp_plusc=0..}] run attribute @s generic.max_health modifier remove 0-0-0-0-2
execute as @s[scores={ui_hp_plusc=0..}] run attribute @s generic.max_health modifier remove 0-0-0-0-3
execute as @s[scores={ui_hp_plusc=0..}] run attribute @s generic.max_health modifier remove 0-0-0-0-4
execute as @s[scores={ui_hp_plusc=0..}] run attribute @s generic.max_health modifier remove 0-0-0-0-5
execute as @s[scores={ui_hp_plusc=0..}] run attribute @s generic.max_health modifier remove 0-0-0-0-6
execute as @s[scores={ui_hp_plusc=0..}] run attribute @s generic.max_health modifier remove 0-0-0-0-7
execute as @s[scores={ui_hp_plusc=0..}] run attribute @s generic.max_health modifier remove 0-0-0-0-8
execute as @s[scores={ui_hp_plusc=0..}] run attribute @s generic.max_health modifier remove 0-0-0-0-9
execute as @s[scores={ui_hp_plusc=0..}] run attribute @s generic.max_health modifier remove 0-0-0-0-A
execute as @s[scores={ui_hp_plusc=0..}] run attribute @s generic.max_health modifier remove 0-0-0-0-B
execute as @s[scores={ui_hp_plusc=0..}] run attribute @s generic.max_health modifier remove 0-0-0-0-C

execute as @s[scores={ui_hp_plusc=2048..}] run attribute @s generic.max_health modifier add 0-0-0-0-1 "ui_curse2" 2048 add
execute as @s[scores={ui_hp_plusc=2048..}] run scoreboard players remove @s ui_hp_plusc 2048
execute as @s[scores={ui_hp_plusc=1024..}] run attribute @s generic.max_health modifier add 0-0-0-0-2 "ui_curse2" 1024 add
execute as @s[scores={ui_hp_plusc=1024..}] run scoreboard players remove @s ui_hp_plusc 1024
execute as @s[scores={ui_hp_plusc=512..}] run attribute @s generic.max_health modifier add 0-0-0-0-3 "ui_curse2" 512 add
execute as @s[scores={ui_hp_plusc=512..}] run scoreboard players remove @s ui_hp_plusc 512
execute as @s[scores={ui_hp_plusc=256..}] run attribute @s generic.max_health modifier add 0-0-0-0-4 "ui_curse2" 256 add
execute as @s[scores={ui_hp_plusc=256..}] run scoreboard players remove @s ui_hp_plusc 256
execute as @s[scores={ui_hp_plusc=128..}] run attribute @s generic.max_health modifier add 0-0-0-0-5 "ui_curse2" 128 add
execute as @s[scores={ui_hp_plusc=128..}] run scoreboard players remove @s ui_hp_plusc 128
execute as @s[scores={ui_hp_plusc=64..}] run attribute @s generic.max_health modifier add 0-0-0-0-6 "ui_curse2" 64 add
execute as @s[scores={ui_hp_plusc=64..}] run scoreboard players remove @s ui_hp_plusc 64
execute as @s[scores={ui_hp_plusc=32..}] run attribute @s generic.max_health modifier add 0-0-0-0-7 "ui_curse2" 32 add
execute as @s[scores={ui_hp_plusc=32..}] run scoreboard players remove @s ui_hp_plusc 32
execute as @s[scores={ui_hp_plusc=16..}] run attribute @s generic.max_health modifier add 0-0-0-0-8 "ui_curse2" 16 add
execute as @s[scores={ui_hp_plusc=16..}] run scoreboard players remove @s ui_hp_plusc 16
execute as @s[scores={ui_hp_plusc=8..}] run attribute @s generic.max_health modifier add 0-0-0-0-9 "ui_curse2" 8 add
execute as @s[scores={ui_hp_plusc=8..}] run scoreboard players remove @s ui_hp_plusc 8
execute as @s[scores={ui_hp_plusc=4..}] run attribute @s generic.max_health modifier add 0-0-0-0-A "ui_curse2" 4 add
execute as @s[scores={ui_hp_plusc=4..}] run scoreboard players remove @s ui_hp_plusc 4
execute as @s[scores={ui_hp_plusc=2..}] run attribute @s generic.max_health modifier add 0-0-0-0-B "ui_curse2" 2 add
execute as @s[scores={ui_hp_plusc=2..}] run scoreboard players remove @s ui_hp_plusc 2
execute as @s[scores={ui_hp_plusc=1..}] run attribute @s generic.max_health modifier add 0-0-0-0-C "ui_curse2" 1 add
execute as @s[scores={ui_hp_plusc=1..}] run scoreboard players remove @s ui_hp_plusc 1

execute as @s[scores={ui_hp_plusc=1..}] run tellraw @s {"text":"あなたの魂の容量はこれ以上増えないようだ・・・"}

#回復効果を受けないと見た目上の最大HPが変化しないのでHPを0回復する
effect give @s instant_health 1 30 true

scoreboard players operation @s ui_hp_plusc = @s ui_hp_plus

#=======================================================================================================
