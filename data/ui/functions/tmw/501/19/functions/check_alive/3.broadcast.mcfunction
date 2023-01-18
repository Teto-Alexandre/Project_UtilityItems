# システムアクティベート
execute if score $temp ui_temp matches 0 run tellraw @a {"text":"勝者なし"}
execute if score $temp ui_temp matches 1 run tellraw @a {"text":"チーム 1 の勝利"}
execute if score $temp ui_temp matches 2 run tellraw @a {"text":"チーム 2 の勝利"}
execute if score $temp ui_temp matches 3 run tellraw @a {"text":"チーム 3 の勝利"}
execute if score $temp ui_temp matches 4 run tellraw @a {"text":"チーム 4 の勝利"}
execute if score $temp ui_temp matches 5 run tellraw @a {"text":"チーム 5 の勝利"}
execute if score $temp ui_temp matches 6 run tellraw @a {"text":"チーム 6 の勝利"}
execute if score $temp ui_temp matches 7 run tellraw @a {"text":"チーム 7 の勝利"}
execute if score $temp ui_temp matches 8 run tellraw @a {"text":"チーム 8 の勝利"}
execute if score $temp ui_temp matches 9 run tellraw @a {"text":"チーム 9 の勝利"}
execute if score $temp ui_temp matches 10 run tellraw @a {"text":"チーム 10 の勝利"}
execute if score $temp ui_temp matches 11 run tellraw @a {"text":"チーム 11 の勝利"}
execute if score $temp ui_temp matches 12 run tellraw @a {"text":"チーム 12 の勝利"}
execute if score $temp ui_temp matches 13 run tellraw @a {"text":"チーム 13 の勝利"}
execute if score $temp ui_temp matches 14 run tellraw @a {"text":"チーム 14 の勝利"}
execute if score $temp ui_temp matches 15 run tellraw @a {"text":"チーム 15 の勝利"}
execute if score $temp ui_temp matches 16 run tellraw @a {"text":"チーム 16 の勝利"}

execute as @a if entity @s[tag=tmw_501_19] run function ui:tmw/501/19/functions/lobby
