var _x = argument0;
var _y = argument1;

randomize();
var num = irandom(99);

if(num >= 0 && num < 50){
    //do notthing
}

if(num >= 60 && num < 90){
    instance_create(_x, _y, obj_goldCoin);
}

if(num >= 90 && num < 95){
    instance_create(_x, _y, obj_apple);
}

if(num >= 95 && num < 98){
    instance_create(_x, _y, obj_potion);
}

if(num >= 98 && num < 99){
    instance_create(_x, _y, obj_specialCoin);
}
