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
##持っているレコードを消去&タグ付け&音楽再生
execute if entity @s[nbt={SelectedItem:{tag:{musicplay:1},},Inventory:[{id:"minecraft:music_disc_11",Slot:-106b}]}] run tag @s add reco_11
execute if entity @s[nbt={SelectedItem:{tag:{musicplay:1},},Inventory:[{id:"minecraft:music_disc_13",Slot:-106b}]}] run tag @s add reco_13
execute if entity @s[nbt={SelectedItem:{tag:{musicplay:1},},Inventory:[{id:"minecraft:music_disc_5",Slot:-106b}]}] run tag @s add reco_5
execute if entity @s[nbt={SelectedItem:{tag:{musicplay:1},},Inventory:[{id:"minecraft:music_disc_cat",Slot:-106b}]}] run tag @s add reco_cat
execute if entity @s[nbt={SelectedItem:{tag:{musicplay:1},},Inventory:[{id:"minecraft:music_disc_blocks",Slot:-106b}]}] run tag @s add reco_blocks
execute if entity @s[nbt={SelectedItem:{tag:{musicplay:1},},Inventory:[{id:"minecraft:music_disc_chirp",Slot:-106b}]}] run tag @s add reco_chirp
execute if entity @s[nbt={SelectedItem:{tag:{musicplay:1},},Inventory:[{id:"minecraft:music_disc_far",Slot:-106b}]}] run tag @s add reco_far
execute if entity @s[nbt={SelectedItem:{tag:{musicplay:1},},Inventory:[{id:"minecraft:music_disc_mall",Slot:-106b}]}] run tag @s add reco_mall
execute if entity @s[nbt={SelectedItem:{tag:{musicplay:1},},Inventory:[{id:"minecraft:music_disc_mellohi",Slot:-106b}]}] run tag @s add reco_mellohi
execute if entity @s[nbt={SelectedItem:{tag:{musicplay:1},},Inventory:[{id:"minecraft:music_disc_stal",Slot:-106b}]}] run tag @s add reco_stal
execute if entity @s[nbt={SelectedItem:{tag:{musicplay:1},},Inventory:[{id:"minecraft:music_disc_strad",Slot:-106b}]}] run tag @s add reco_strad
execute if entity @s[nbt={SelectedItem:{tag:{musicplay:1},},Inventory:[{id:"minecraft:music_disc_ward",Slot:-106b}]}] run tag @s add reco_ward
execute if entity @s[nbt={SelectedItem:{tag:{musicplay:1},},Inventory:[{id:"minecraft:music_disc_wait",Slot:-106b}]}] run tag @s add reco_wait
execute if entity @s[nbt={SelectedItem:{tag:{musicplay:1},},Inventory:[{id:"minecraft:music_disc_otherside",Slot:-106b}]}] run tag @s add reco_otherside
execute if entity @s[nbt={SelectedItem:{tag:{musicplay:1},},Inventory:[{id:"minecraft:music_disc_pigstep",Slot:-106b}]}] run tag @s add reco_pigstep
execute if entity @s[nbt={SelectedItem:{tag:{musicplay:1},},Inventory:[{Slot:-106b,tag:{specialdisc:1}}]}] run tag @s add reco_credits

##アイテムの見た目変更
item replace entity @s[tag=!reco_5,tag=!reco_13,tag=!reco_11] weapon.mainhand with warped_fungus_on_a_stick{display:{Name:'{"text":"Handy Music Player","color":"aqua","bold":true,"italic":false}',Lore:['{"text":" "}','[{"text":"レコード","color":"green","italic":false},{"text":"を入れると音楽がなる機械。","color":"white"}]','{"text":"顔のようなものがうっすら見えるが","color":"white","italic":false}','{"text":"多分気のせい...だと思う。","color":"white","italic":false}','[{"text":"又、通常では入らない","color":"white","italic":false},{"text":"特殊レコード","color":"light_purple","underlined":true},{"text":"も"}]','{"text":"入れることができる。","color":"white","italic":false}','{"text":" "}','{"text":"レコードの入れ方:","color":"gold","italic":false}','{"text":"これを利き手、入れたいものを","color":"white","italic":false}','{"text":"オフハンドにもって右クリック。","color":"white","italic":false}','{"text":"レコードが入った状態で右クリックすると","color":"white","italic":false}','{"text":"中のレコードを取り出せる。","color":"white","italic":false}','{"text":"気が向いたら随時機能更新するかも","color":"dark_gray","italic":false,"strikethrough":true}']},CustomModelData:2021,musicplay:1,Unbreakable:1b}
item replace entity @s[tag=reco_11] weapon.mainhand with warped_fungus_on_a_stick{display:{Name:'{"text":"Handy Music Player","color":"aqua","bold":true,"italic":false}',Lore:['{"text":" "}','[{"text":"レコード","color":"green","italic":false},{"text":"を入れると音楽がなる機械。","color":"white"}]','{"text":"顔のようなものがうっすら見えるが","color":"white","italic":false}','{"text":"多分気のせい...だと思う。","color":"white","italic":false}','[{"text":"又、通常では入らない","color":"white","italic":false},{"text":"特殊レコード","color":"light_purple","underlined":true},{"text":"も"}]','{"text":"入れることができる。","color":"white","italic":false}','{"text":" "}','{"text":"レコードの入れ方:","color":"gold","italic":false}','{"text":"これを利き手、入れたいものを","color":"white","italic":false}','{"text":"オフハンドにもって右クリック。","color":"white","italic":false}','{"text":"レコードが入った状態で右クリックすると","color":"white","italic":false}','{"text":"中のレコードを取り出せる。","color":"white","italic":false}','{"text":"気が向いたら随時機能更新するかも","color":"dark_gray","italic":false,"strikethrough":true}']},CustomModelData:41813,musicplay:1,Unbreakable:1b}
item replace entity @s[tag=reco_13] weapon.mainhand with warped_fungus_on_a_stick{display:{Name:'{"text":"Handy Music Player","color":"aqua","bold":true,"italic":false}',Lore:['{"text":" "}','[{"text":"レコード","color":"green","italic":false},{"text":"を入れると音楽がなる機械。","color":"white"}]','{"text":"顔のようなものがうっすら見えるが","color":"white","italic":false}','{"text":"多分気のせい...だと思う。","color":"white","italic":false}','[{"text":"又、通常では入らない","color":"white","italic":false},{"text":"特殊レコード","color":"light_purple","underlined":true},{"text":"も"}]','{"text":"入れることができる。","color":"white","italic":false}','{"text":" "}','{"text":"レコードの入れ方:","color":"gold","italic":false}','{"text":"これを利き手、入れたいものを","color":"white","italic":false}','{"text":"オフハンドにもって右クリック。","color":"white","italic":false}','{"text":"レコードが入った状態で右クリックすると","color":"white","italic":false}','{"text":"中のレコードを取り出せる。","color":"white","italic":false}','{"text":"気が向いたら随時機能更新するかも","color":"dark_gray","italic":false,"strikethrough":true}']},CustomModelData:41813,musicplay:1,Unbreakable:1b}
item replace entity @s[tag=reco_5] weapon.mainhand with warped_fungus_on_a_stick{display:{Name:'{"text":"Handy Music Player","color":"aqua","bold":true,"italic":false}',Lore:['{"text":" "}','[{"text":"レコード","color":"green","italic":false},{"text":"を入れると音楽がなる機械。","color":"white"}]','{"text":"顔のようなものがうっすら見えるが","color":"white","italic":false}','{"text":"多分気のせい...だと思う。","color":"white","italic":false}','[{"text":"又、通常では入らない","color":"white","italic":false},{"text":"特殊レコード","color":"light_purple","underlined":true},{"text":"も"}]','{"text":"入れることができる。","color":"white","italic":false}','{"text":" "}','{"text":"レコードの入れ方:","color":"gold","italic":false}','{"text":"これを利き手、入れたいものを","color":"white","italic":false}','{"text":"オフハンドにもって右クリック。","color":"white","italic":false}','{"text":"レコードが入った状態で右クリックすると","color":"white","italic":false}','{"text":"中のレコードを取り出せる。","color":"white","italic":false}','{"text":"気が向いたら随時機能更新するかも","color":"dark_gray","italic":false,"strikethrough":true}']},CustomModelData:41813,musicplay:1,Unbreakable:1b}
item replace entity @s weapon.offhand with air

execute if entity @s[tag=reco_5] run function musicplayer:play_records/reco_5
execute if entity @s[tag=reco_11] run function musicplayer:play_records/reco_11
execute if entity @s[tag=reco_13] run function musicplayer:play_records/reco_13
execute if entity @s[tag=reco_cat] run function musicplayer:play_records/reco_cat
execute if entity @s[tag=reco_blocks] run function musicplayer:play_records/reco_blocks
execute if entity @s[tag=reco_chirp] run function musicplayer:play_records/reco_chirp
execute if entity @s[tag=reco_far] run function musicplayer:play_records/reco_far
execute if entity @s[tag=reco_mall] run function musicplayer:play_records/reco_mall
execute if entity @s[tag=reco_mellohi] run function musicplayer:play_records/reco_mellohi
execute if entity @s[tag=reco_stal] run function musicplayer:play_records/reco_stal
execute if entity @s[tag=reco_strad] run function musicplayer:play_records/reco_strad
execute if entity @s[tag=reco_ward] run function musicplayer:play_records/reco_ward
execute if entity @s[tag=reco_wait] run function musicplayer:play_records/reco_wait
execute if entity @s[tag=reco_otherside] run function musicplayer:play_records/reco_otherside
execute if entity @s[tag=reco_pigstep] run function musicplayer:play_records/reco_pigstep
execute if entity @s[tag=reco_credits] run function musicplayer:play_records/reco_credits

##再生中であることを検知するタグ
tag @s add mplaying
##has_recordをはがす
tag @s remove has_record

##演出
execute at @s run playsound block.piston.contract master @s ~ ~ ~ 1 1.5
execute at @s anchored eyes run particle crit ^ ^ ^0.5 0.2 0.2 0.2 1 15 normal @s
