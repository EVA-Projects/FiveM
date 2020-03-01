/*
    This script was developed by Piter Van Rujpen/TheGamerRespow for Vulkanoa (https://discord.gg/bzMnYPS).
    Do not re-upload this script without my authorization. (I only give authorization by PM on FiveM.net (https://forum.fivem.net/u/TheGamerRespow))
*/

var VK = new Object(); // DO NOT CHANGE
VK.server = new Object(); // DO NOT CHANGE

VK.backgrounds = new Object(); // DO NOT CHANGE
VK.backgrounds.actual = 0; // DO NOT CHANGE
VK.backgrounds.way = true; // DO NOT CHANGE
VK.config = new Object(); // DO NOT CHANGE
VK.tips = new Object(); // DO NOT CHANGE
VK.gente = new Object(); // DO NOT CHANGE
VK.music = new Object(); // DO NOT CHANGE
VK.info = new Object(); // DO NOT CHANGE
VK.social = new Object(); // DO NOT CHANGE
VK.players = new Object(); // DO NOT CHANGE 

//////////////////////////////// CONFIG

VK.config.loadingSessionText = "Es un dia bonito para cargar el servidor..."; // Loading session text
VK.config.firstColor = [0, 191, 255]; // First color in rgb : [r, g, b]
VK.config.secondColor = [255, 150, 0]; // Second color in rgb : [r, g, b]
VK.config.thirdColor = [52, 152, 219]; // Third color in rgb : [r, g, b]

VK.backgrounds.list = [ // Backgrounds list, can be on local or distant(http://....)
    "img/1.jpg",
    "img/2.jpg",
    "img/3.jpg",
];
VK.backgrounds.duration = 5000; // Background duration (in ms) before transition (the transition lasts 1/3 of this time)

VK.tips.enable = true; //Enable tips (true : enable, false : prevent)
VK.tips.list = [ // Tips list
    "Generando el mundo existencial....", // If you use double-quotes, make sure to put a \ before each double quotes
    "¡Pulsa \"F1\" para usar el telefono!",
	"¡Dando las ultimas pinzeladas a la creacion!",
    "¡Manten \"X\" para levantar las manos!",
	"¡Ten paciencia el server esta en fase beta!",
	"¡Prueba a llamar a tus amigos con el movil!",
];

VK.music.url = "music.ogg"; // Music url, can be on local or distant(http://....) ("NONE" to desactive music)
VK.music.volume = 0.1; // Music volume (0-1)
VK.music.title = "DELUXE LIFE RP"; // Music title ("NONE" to desactive)
VK.music.submitedBy = "VERSION 0.2"; // Music submited by... ("NONE" to desactive)
VK.gente = "Wololo Pruebas"; // Music submited by... ("NONE" to desactive) 

VK.info.logo = "icon/vulkanoa.png"; // Logo, can be on local or distant(http://....) ("NONE" to desactive)
VK.info.text = "Cargando..."; // Bottom right corner text ("NONE" to desactive) 
VK.info.website = "Creado por Boomer"; // Website url ("NONE" to desactive) 
VK.info.ip = "134.255.217.130:30120"; // Your server ip and port ("ip:port")

VK.social.discord = "/NpacXc5"; // Discord url ("NONE" to desactive)
VK.social.twitter = "/deluxeliferp"; // Twitter url ("NONE" to desactive)
VK.social.facebook = "/deluxeliferp"; // Facebook url ("NONE" to desactive)
VK.social.youtube = "/deluxeliferp"; // Youtube url ("NONE" to desactive)
VK.social.twitch = "/deluxeliferp"; // Twitch url ("NONE" to desactive)

VK.players.enable = true; // Enable the players count of the server (true : enable, false : prevent)
VK.players.multiplePlayersOnline = "@Jugador en linea"; // @players equals the players count
VK.players.onePlayerOnline = "Jugadores online"; // Text when only one player is on the server
VK.players.noPlayerOnline = "Sin jugadores online"; // Text when the server is empty

////////////////////////////////
