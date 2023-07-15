var heart_spacing = 64;

for (var i = 0; i < obj_player.max_hp; i++) {
    var heartx = i * heart_spacing;
    var heart_frame = i < obj_player.hp ? 0 : 1;
    draw_sprite(spr_heart, 0, heartx, 0);
}