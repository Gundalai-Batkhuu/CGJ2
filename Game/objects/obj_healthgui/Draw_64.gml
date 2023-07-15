var heart_spacing = 64;
var spriteIndex = spr_heart; 
var scale = 2; 


var imageX = x - sprite_get_width(spriteIndex) * scale / 2;
var imageY = y - sprite_get_height(spriteIndex) * scale / 2;

for (var i = 0; i < obj_player.max_hp; i++) {
    var heartx = i * heart_spacing + imageX;
	draw_sprite_ext(spriteIndex, 0, heartx, 0, scale, scale, 0, c_white, 1);
}