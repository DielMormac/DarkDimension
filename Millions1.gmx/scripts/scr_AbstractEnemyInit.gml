///Init
_mother = -1;

_health = 2;
_isDead = false;
_fearOfHeight = false;

experience = 1;
_velocity = 3;
_gravity = 0.2;
_hSpeed = 0;
_vSpeed = 0;

if(global.worldPlayer._side == 1){
    _side = -1;
}
if(global.worldPlayer._side == -1){
    _side = 1;
}
