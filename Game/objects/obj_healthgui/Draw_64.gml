var heart_spacing = 128;
var spriteIndex = spr_heart; 
var scale = 8; 


var imageX = x - sprite_get_width(spriteIndex) * scale / 2;
var imageY = y - sprite_get_height(spriteIndex) * scale / 2;

for (var i = 0; i < obj_player.max_hp; i++) {
    var heartx = i * heart_spacing + imageX;
	draw_sprite_ext(spriteIndex, 0, heartx - 40, -200, scale, scale, 0, c_white, 1);
}

for (var i = 0; i < obj_player.max_mana; i++) {
    var manay = i * 128;
	if (obj_player.mana > i) {
        draw_sprite_ext(spr_shift_charge_orb, 1, x + obj_camera.width + 380, 20 + manay , 4, 4, 0, c_white, 1);
    }
}
