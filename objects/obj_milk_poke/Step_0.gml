if(x<=253){
speedes=0;
if(obj_controler_poke.milkv == true){
speeddir=2.4}
}else{
x-=speedes;
}
x+=speeddir;

if(x>=380){
instance_destroy();
}