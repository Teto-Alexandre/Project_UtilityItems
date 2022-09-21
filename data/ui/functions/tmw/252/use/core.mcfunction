#召喚する

# id共有
scoreboard players operation $team ui_temp = @s ui_team
execute as @e[predicate=ui:load_unhurtable] unless score @s ui_team = $team ui_temp run tag @s add ui_temp_target

# 乱数生成
scoreboard players set $mod ui_calc1 1000
function ui:common/rand
scoreboard players operation $rand ui_temp = $rand ui_calc1

# 召喚
execute if score $rand ui_temp matches 0..99 run summon zombie ~ ~ ~ {Tags:["ui_temp_summoned","tmw_252_base"],ActiveEffects:[{Id:11,Amplifier:6,Duration:2,ShowParticles:false}]}
execute if score $rand ui_temp matches 100..199 run summon skeleton ~ ~ ~ {Tags:["ui_temp_summoned","tmw_252_base"],ActiveEffects:[{Id:11,Amplifier:6,Duration:2,ShowParticles:false}],HandItems:[{id:"bow",Count:1b}]}
execute if score $rand ui_temp matches 200..299 run summon creeper ~ ~ ~ {Tags:["ui_temp_summoned","tmw_252_base"],ActiveEffects:[{Id:11,Amplifier:6,Duration:2,ShowParticles:false}]}
execute if score $rand ui_temp matches 300..399 run summon spider ~ ~ ~ {Tags:["ui_temp_summoned","tmw_252_base"],ActiveEffects:[{Id:11,Amplifier:6,Duration:2,ShowParticles:false}]}
execute if score $rand ui_temp matches 400..499 run summon blaze ~ ~ ~ {Tags:["ui_temp_summoned","tmw_252_base"],ActiveEffects:[{Id:11,Amplifier:6,Duration:2,ShowParticles:false}]}
execute if score $rand ui_temp matches 500..599 run summon endermite ~ ~ ~ {Tags:["ui_temp_summoned","tmw_252_base"],ActiveEffects:[{Id:11,Amplifier:6,Duration:2,ShowParticles:false}]}
execute if score $rand ui_temp matches 600..699 run summon husk ~ ~ ~ {Tags:["ui_temp_summoned","tmw_252_base"],ActiveEffects:[{Id:11,Amplifier:6,Duration:2,ShowParticles:false}]}
execute if score $rand ui_temp matches 700..799 run summon cow ~ ~ ~ {Tags:["ui_temp_summoned"],ActiveEffects:[{Id:11,Amplifier:6,Duration:2,ShowParticles:false}],Passengers:[{id:"zombie",Tags:["ui_temp_summoned","tmw_252_base"]}]}
execute if score $rand ui_temp matches 800..899 run summon bat ~ ~ ~ {Tags:["ui_temp_summoned"],ActiveEffects:[{Id:11,Amplifier:6,Duration:2,ShowParticles:false}],Passengers:[{id:"shulker",Tags:["ui_temp_summoned","tmw_252_base"]}]}
execute if score $rand ui_temp matches 900..999 run summon witch ~ ~ ~ {Tags:["ui_temp_summoned","tmw_252_base"],ActiveEffects:[{Id:11,Amplifier:6,Duration:2,ShowParticles:false}]}
#execute if score $rand ui_temp matches 0..999 run summon blaze ~ ~ ~ {Tags:["ui_temp_summoned","tmw_252_base"],ActiveEffects:[{Id:11,Amplifier:6,Duration:2,ShowParticles:false}]}
#schedule function ui:tmw/252/mob/ss 1t append

# 召喚説明文
execute if score $rand ui_temp matches 0..99 run tellraw @s ["",{"text":"SlashSummon","color":"gray"},{"text":">> ","color":"green"},{"text":"Zombie","color":"white"},{"text":" : ","color":"gray"},{"text":"✦","color":"white"}]
execute if score $rand ui_temp matches 100..199 run tellraw @s ["",{"text":"SlashSummon","color":"gray"},{"text":">> ","color":"green"},{"text":"Skeleton","color":"white"},{"text":" : ","color":"gray"},{"text":"✦","color":"white"}]
execute if score $rand ui_temp matches 200..299 run tellraw @s ["",{"text":"SlashSummon","color":"gray"},{"text":">> ","color":"green"},{"text":"Creeper","color":"white"},{"text":" : ","color":"gray"},{"text":"✦","color":"white"}]
execute if score $rand ui_temp matches 300..399 run tellraw @s ["",{"text":"SlashSummon","color":"gray"},{"text":">> ","color":"green"},{"text":"Spider","color":"white"},{"text":" : ","color":"gray"},{"text":"✦","color":"white"}]
execute if score $rand ui_temp matches 400..499 run tellraw @s ["",{"text":"SlashSummon","color":"gray"},{"text":">> ","color":"green"},{"text":"Blaze","color":"white"},{"text":" : ","color":"gray"},{"text":"✦","color":"white"}]
execute if score $rand ui_temp matches 500..599 run tellraw @s ["",{"text":"SlashSummon","color":"gray"},{"text":">> ","color":"green"},{"text":"Endermite","color":"white"},{"text":" : ","color":"gray"},{"text":"✦","color":"white"}]
execute if score $rand ui_temp matches 600..699 run tellraw @s ["",{"text":"SlashSummon","color":"gray"},{"text":">> ","color":"green"},{"text":"Husk","color":"white"},{"text":" : ","color":"gray"},{"text":"✦","color":"white"}]
execute if score $rand ui_temp matches 700..799 run tellraw @s ["",{"text":"SlashSummon","color":"gray"},{"text":">> ","color":"green"},{"text":"CowRider","color":"white"},{"text":" : ","color":"gray"},{"text":"✦","color":"white"}]
execute if score $rand ui_temp matches 800..899 run tellraw @s ["",{"text":"SlashSummon","color":"gray"},{"text":">> ","color":"green"},{"text":"BatBit","color":"white"},{"text":" : ","color":"gray"},{"text":"✦","color":"white"}]
execute if score $rand ui_temp matches 900..999 run tellraw @s ["",{"text":"SlashSummon","color":"gray"},{"text":">> ","color":"green"},{"text":"Witch","color":"white"},{"text":" : ","color":"gray"},{"text":"✦","color":"white"}]
#execute if score $rand ui_temp matches 0..999 run tellraw @s ["",{"text":"SlashSummon","color":"gray"},{"text":">> ","color":"green"},{"text":"SuperBlaze","color":"white"},{"text":" : ","color":"gray"},{"text":"✦✦✦","color":"white"}]

# チームセットアップ
execute if score $team ui_temp matches 1 run team join blue @s
execute if score $team ui_temp matches 2 run team join red @s
execute if score $team ui_temp matches 3 run team join yellow @s
execute if score $team ui_temp matches 4 run team join green @s

# 召喚獣にチーム割り振り
execute if score $team ui_temp matches 1 run team join blue @e[tag=ui_temp_summoned]
execute if score $team ui_temp matches 2 run team join red @e[tag=ui_temp_summoned]
execute if score $team ui_temp matches 3 run team join yellow @e[tag=ui_temp_summoned]
execute if score $team ui_temp matches 4 run team join green @e[tag=ui_temp_summoned]
execute if score $team ui_temp matches 1 run scoreboard players set @e[tag=ui_temp_summoned] ui_team 1
execute if score $team ui_temp matches 2 run scoreboard players set @e[tag=ui_temp_summoned] ui_team 2
execute if score $team ui_temp matches 3 run scoreboard players set @e[tag=ui_temp_summoned] ui_team 3
execute if score $team ui_temp matches 4 run scoreboard players set @e[tag=ui_temp_summoned] ui_team 4

# ランダム値
scoreboard players operation @e[tag=ui_temp_summoned] ui_is = $rand ui_temp

# タゲ設定
summon area_effect_cloud ~ ~ ~ {Age:4,Duration:6,Effects:[{Id:6,Amplifier:0,Duration:1,ShowIcon:false,ShowParticles:false},{Id:7,Amplifier:0,Duration:1,ShowIcon:false,ShowParticles:false}],Tags:["ui_temp_pot"]}
summon area_effect_cloud ~ ~1 ~ {Age:4,Duration:6,Effects:[{Id:6,Amplifier:0,Duration:1,ShowIcon:false,ShowParticles:false},{Id:7,Amplifier:0,Duration:1,ShowIcon:false,ShowParticles:false}],Tags:["ui_temp_pot"]}
summon area_effect_cloud ~ ~2 ~ {Age:4,Duration:6,Effects:[{Id:6,Amplifier:0,Duration:1,ShowIcon:false,ShowParticles:false},{Id:7,Amplifier:0,Duration:1,ShowIcon:false,ShowParticles:false}],Tags:["ui_temp_pot"]}
execute as @e[tag=ui_temp_pot] run data modify entity @s Owner set from entity @e[tag=ui_temp_target,sort=nearest,limit=1] UUID

# タグ消し
tag @e[tag=ui_temp_summoned] remove ui_temp_summoned
tag @e[tag=ui_temp_target] remove ui_temp_target
tag @e[tag=ui_temp_pot] remove ui_temp_pot

# 武器消滅
#clear @s carrot_on_a_stick{tmw:{id:252}} 1

#
scoreboard players set $success ui_temp 1