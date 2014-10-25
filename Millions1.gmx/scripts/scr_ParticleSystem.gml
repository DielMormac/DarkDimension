global.particle_system = part_system_create(); 
part_system_automatic_draw(global.particle_system,true);
part_system_automatic_update(global.particle_system, true);
part_system_depth(global.particle_system,0);
