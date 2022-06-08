# ランダム
    scoreboard players operation $mod ui_calc1 = $speed.plus ui_temp
    execute if score $mod ui_calc1 matches 1.. run function ui:common/rand
    execute if score $mod ui_calc1 matches 1.. run scoreboard players operation $speed.add ui_temp = $rand ui_calc1

# 弾を出す
    execute anchored eyes run summon minecraft:armor_stand ^ ^ ^ {Marker:1b,NoGravity:1b,Invisible:1b,Tags:["tds.attack","ui","ui_proj","tmw_237","ui_temp_unpower"],ArmorItems:[{id:"minecraft:stone",Count:1b,tag:{display:{Name:'{"text":"null"}'}}},{},{},{}]}
    execute anchored eyes run summon minecraft:marker ^ ^ ^1 {Tags:["ui","ui_marker"]}
    scoreboard players operation $mod ui_temp = $spread ui_temp
    execute if score $mod ui_temp matches 1.. run function ui:tmw/237/square_shuffle
    execute as @e[tag=ui_temp_unpower] at @s facing entity @e[tag=ui_marker,limit=1] feet run teleport @s ^ ^ ^1 ~ ~
    execute store result score @e[tag=ui_temp_unpower] ui_bpart run data get storage ui:gun temp2.FlyParticle
    execute store result score @e[tag=ui_temp_unpower] ui_hpart run data get storage ui:gun temp2.EndParticle
    scoreboard players operation @e[tag=ui_temp_unpower] ui_bm = $speed ui_temp
    scoreboard players operation @e[tag=ui_temp_unpower] ui_bm += $speed.add ui_temp
    scoreboard players operation @e[tag=ui_temp_unpower] ui_br = $range ui_temp
    scoreboard players operation @e[tag=ui_temp_unpower] ui_gpc = $rangetype ui_temp
    scoreboard players operation @e[tag=ui_temp_unpower] ui_dmg = $damage ui_temp
    scoreboard players set @e[tag=ui_temp_unpower] ui_bdt 1
    scoreboard players operation @e[tag=ui_temp_unpower] ui_id = @s ui_id
    scoreboard players operation @e[tag=ui_temp_unpower] ui_team = @s ui_team
    data modify entity @e[tag=ui_temp_unpower,limit=1] ArmorItems.[0].tag.display.Name set from storage ui:gun temp.DisplayName
    tag @e[tag=ui_temp_unpower] remove ui_temp_unpower
    kill @e[tag=ui_marker]

# ショットガン.lp
    scoreboard players remove $multishot ui_temp 1
    execute if score $multishot ui_temp matches 1.. run function ui:tmw/237/attack/shot/loop