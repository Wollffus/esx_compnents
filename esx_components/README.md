# Weapon Components
weapon accesories for esx

Modifed to support weapon add on components as well as the standard ones.
This is set up to support the Sig M18, Military M4A1, SR-25, SCAR 17 and the Glock Custom from https://fluffy.tebex.io/category/1908966
As well as the M9A3 and m870 from https://www.markomods.com/shop/

1) Import esx_components.sql in your database
    This sql only provides a few to get you started, you will have to add your weapon component names. 

2) Add this in your server.cfg :

```
ensure esx_components
```

If you want to add a component, it is important to know that the name in the database for the item must match the name on the client side as well.

This script is a modified version of ESX-Easy-Weapon-Accessories https://github.com/Gregorsaur/ESX-Easy-Weapon-Accessories
Whom modified eden_accesories;  original version. https://github.com/ESX-PUBLIC/eden_accesories


Full credits to Solaris, Gregorsaur and JiminyKroket...

