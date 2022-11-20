#全アイテムをドロップする

# からっぽじゃないならアイテムを一個一個ドロップさせる
    execute if data storage ui:common temp[0].id at @s run function ui:common/chest/dropall/drop

# スロット内の全てを削除
    item replace block ~ ~ ~ container.0 with air
    item replace block ~ ~ ~ container.1 with air
    item replace block ~ ~ ~ container.2 with air
    item replace block ~ ~ ~ container.3 with air
    item replace block ~ ~ ~ container.4 with air
    item replace block ~ ~ ~ container.5 with air
    item replace block ~ ~ ~ container.6 with air
    item replace block ~ ~ ~ container.7 with air
    item replace block ~ ~ ~ container.8 with air
    item replace block ~ ~ ~ container.9 with air
    item replace block ~ ~ ~ container.10 with air
    item replace block ~ ~ ~ container.11 with air
    item replace block ~ ~ ~ container.12 with air
    item replace block ~ ~ ~ container.13 with air
    item replace block ~ ~ ~ container.14 with air
    item replace block ~ ~ ~ container.15 with air
    item replace block ~ ~ ~ container.16 with air
    item replace block ~ ~ ~ container.17 with air
    item replace block ~ ~ ~ container.18 with air
    item replace block ~ ~ ~ container.19 with air
    item replace block ~ ~ ~ container.20 with air
    item replace block ~ ~ ~ container.21 with air
    item replace block ~ ~ ~ container.22 with air
    item replace block ~ ~ ~ container.23 with air
    item replace block ~ ~ ~ container.24 with air
    item replace block ~ ~ ~ container.25 with air
    item replace block ~ ~ ~ container.26 with air