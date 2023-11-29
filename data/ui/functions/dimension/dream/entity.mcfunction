#自然湧きゾンビを幽鬼に置き換える（競合が怖いアレ対策済み）

#確率ロール
    scoreboard players set $mod ui_calc1 1000
    function ui:common/rand

#ゾンビを幽鬼に置き換え
    data merge entity @s {CustomName:'{"text":"幽鬼","italic":false}',Silent:1b,ArmorItems:[{id:"iron_boots",Count:1b},{id:"iron_leggings",Count:1b},{id:"iron_chestplate",Count:1b},{id:"iron_block",Count:1b}],HandItems:[{id:"iron_sword",Count:1b},{id:"iron_sword",Count:1b}],ArmorDropChances:[-1.0f,-1.0f,-1.0f,-1.0f],HandDropChances:[-1.0f,-1.0f],DeathLootTable:"ui:entity/dream1",active_effects:[{id:"minecraft:invisibility",amplifier:0,duration:2000000000,show_particles:false},{id:"minecraft:strength",amplifier:0,duration:2000000000,show_particles:false}],Tags:["ui","ui_enemy","ui_enemy_dream","ui_enemy_dream1","T.HardAlreadyInit"]}
    scoreboard players set @s ui_tmw_id 100
    scoreboard players set @s ui_tmw_id2 200
    effect give @s speed 1000000 1 true
    tag @s add ui_dreamed

#０．３％を踏むと幽玄の王も追加スポーンする
    execute if score $rand ui_calc1 matches 0..2 at @s run summon wither_skeleton ~ ~ ~ {CustomName:'{"text":"幽玄の王","italic":false}',Health:200f,Silent:1b,ArmorItems:[{id:"iron_boots",Count:1b},{id:"iron_leggings",Count:1b},{id:"iron_chestplate",Count:1b},{id:"iron_block",Count:1b}],HandItems:[{id:"iron_sword",Count:1b},{id:"iron_sword",Count:1b}],ArmorDropChances:[-1.0f,-1.0f,-1.0f,-1.0f],HandDropChances:[-1.0f,-1.0f],DeathLootTable:"ui:entity/dream2",active_effects:[{id:"minecraft:invisibility",amplifier:0,duration:2000000000,show_particles:false},{id:"minecraft:strength",amplifier:1,duration:2000000000,show_particles:false},{id:"minecraft:fire_resistance",amplifier:1,duration:2000000000,show_particles:false}],Attributes:[{Name:"generic.max_health",Base:200}],Tags:["ui","ui_enemy","ui_enemy_dream","ui_enemy_dream2","T.HardAlreadyInit"]}
    execute as @e[tag=ui_enemy_dream2,tag=!ui_dreamed] at @s run function ui:dimension/dream/entity2
