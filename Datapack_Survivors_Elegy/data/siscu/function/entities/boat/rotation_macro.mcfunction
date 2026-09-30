
# rotates the display entity on the y axis
# assumes x and z values are fixed
# requires being provided the value $(deg)

# calculate quaternion rotation
# y = sin(rad/2); rad = deg*pi/180 = deg * 0.01745329252
# w = cos(rad/2)

#data modify entity @s transformation.left_rotation[1] set compute entity @s float {type:"sin",input:{type:"div",left:{type:"mul",inputs:[{type:"sub",left:$(deg1),right:$(deg2)},0.0174532]},right:2}}
$data modify entity @s transformation.left_rotation[1] set compute entity @s float {type:"sin",input:{type:"div",left:{type:"mul",inputs:[{type:"sub",left:$(deg2),right:$(deg1)},0.0174532]},right:2}}
$data modify entity @s transformation.left_rotation[3] set compute entity @s float {type:"cos",input:{type:"div",left:{type:"mul",inputs:[{type:"sub",left:$(deg2),right:$(deg1)},0.0174532]},right:2}}