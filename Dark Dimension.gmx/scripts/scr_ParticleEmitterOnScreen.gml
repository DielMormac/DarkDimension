_emitterOnScreen = part_emitter_create(global.particle_system); 
part_emitter_region(global.particle_system, _emitterOnScreen, 0, room_width, 128, room_height/2, ps_shape_ellipse, ps_distr_linear);

