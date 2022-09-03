#   Copyright © 2022 kookun

#   Licensed under the Apache License, Version 2.0 (the "License");
#   you may not use this file except in compliance with the License.
#   You may obtain a copy of the License at

#       http://www.apache.org/licenses/LICENSE-2.0

#   Unless required by applicable law or agreed to in writing, software
#   distributed under the License is distributed on an "AS IS" BASIS,
#   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#   See the License for the specific language governing permissions and
#   limitations under the License.
##レコードを持っているかどうかの確認
execute if entity @s[nbt={Inventory:[{id:"minecraft:music_disc_11",Slot:-106b}]}] run tag @s add has_record
execute if entity @s[nbt={Inventory:[{id:"minecraft:music_disc_13",Slot:-106b}]}] run tag @s add has_record
execute if entity @s[nbt={Inventory:[{id:"minecraft:music_disc_5",Slot:-106b}]}] run tag @s add has_record
execute if entity @s[nbt={Inventory:[{id:"minecraft:music_disc_cat",Slot:-106b}]}] run tag @s add has_record
execute if entity @s[nbt={Inventory:[{id:"minecraft:music_disc_blocks",Slot:-106b}]}] run tag @s add has_record
execute if entity @s[nbt={Inventory:[{id:"minecraft:music_disc_chirp",Slot:-106b}]}] run tag @s add has_record
execute if entity @s[nbt={Inventory:[{id:"minecraft:music_disc_far",Slot:-106b}]}] run tag @s add has_record
execute if entity @s[nbt={Inventory:[{id:"minecraft:music_disc_mall",Slot:-106b}]}] run tag @s add has_record
execute if entity @s[nbt={Inventory:[{id:"minecraft:music_disc_mellohi",Slot:-106b}]}] run tag @s add has_record
execute if entity @s[nbt={Inventory:[{id:"minecraft:music_disc_stal",Slot:-106b}]}] run tag @s add has_record
execute if entity @s[nbt={Inventory:[{id:"minecraft:music_disc_strad",Slot:-106b}]}] run tag @s add has_record
execute if entity @s[nbt={Inventory:[{id:"minecraft:music_disc_ward",Slot:-106b}]}] run tag @s add has_record
execute if entity @s[nbt={Inventory:[{id:"minecraft:music_disc_wait",Slot:-106b}]}] run tag @s add has_record
execute if entity @s[nbt={Inventory:[{id:"minecraft:music_disc_otherside",Slot:-106b}]}] run tag @s add has_record
execute if entity @s[nbt={Inventory:[{id:"minecraft:music_disc_pigstep",Slot:-106b}]}] run tag @s add has_record
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{specialdisc:1}}]}] run tag @s add has_record

##レコード持ってないときに右クリックしたときの反応
execute at @s[tag=!has_record,tag=!mplaying] run playsound minecraft:block.dispenser.fail master @s ~ ~ ~ 1
execute at @s[tag=!has_record,tag=!mplaying] anchored eyes run particle minecraft:smoke ^ ^ ^0.5 0.2 0.2 0.2 0 15 normal @s
title @s[tag=!has_record,tag=!mplaying] times 1 15 9
title @s[tag=!has_record,tag=!mplaying] title {"text": " "}
title @s[tag=!has_record,tag=!mplaying] subtitle {"text": "レコードを左手に持ってください！","color": "red"}

##再生中の人のレコードを取り出す
item replace entity @s[tag=mplaying,nbt={SelectedItem:{tag:{musicplay:1}}}] weapon.mainhand with warped_fungus_on_a_stick{display:{Name:'{"text":"Handy Music Player","color":"aqua","bold":true,"italic":false}',Lore:['{"text":" "}','[{"text":"レコード","color":"green","italic":false},{"text":"を入れると音楽がなる機械。","color":"white"}]','{"text":"顔のようなものがうっすら見えるが","color":"white","italic":false}','{"text":"多分気のせい...だと思う。","color":"white","italic":false}','[{"text":"又、通常では入らない","color":"white","italic":false},{"text":"特殊レコード","color":"light_purple","underlined":true},{"text":"も"}]','{"text":"入れることができる。","color":"white","italic":false}','{"text":" "}','{"text":"レコードの入れ方:","color":"gold","italic":false}','{"text":"これを利き手、入れたいものを","color":"white","italic":false}','{"text":"オフハンドにもって右クリック。","color":"white","italic":false}','{"text":"レコードが入った状態で右クリックすると","color":"white","italic":false}','{"text":"中のレコードを取り出せる。","color":"white","italic":false}','{"text":"気が向いたら随時機能更新するかも","color":"dark_gray","italic":false,"strikethrough":true}']},CustomModelData:2020,musicplay:1,Unbreakable:1b}
execute if entity @s[tag=mplaying] run function musicplayer:play_records/get_records

tag @s[tag=mplaying,tag=has_record] remove has_record

##has_record時function実行
execute if entity @s[tag=has_record] run function musicplayer:musicplayer_play
