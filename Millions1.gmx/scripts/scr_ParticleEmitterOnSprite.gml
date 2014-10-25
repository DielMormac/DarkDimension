_emitterOnSprite = part_emitter_create(global.particle_system); 
part_emitter_region(global.particle_system, _emitterOnSprite, x, x+sprite_get_width(sprite_index), y, y+sprite_get_height(sprite_index), ps_shape_ellipse, ps_distr_linear);

