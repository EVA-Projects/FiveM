resource_manifest_version "44febabe-d386-4d18-afbe-5e627f4af937"

-- Example custom radios
supersede_radio "RADIO_01_CLASS_ROCK" { url = "http://195.10.10.222/cope/cadena100.mp3", volume = 0.1 }
supersede_radio "RADIO_02_POP" { url = "http://195.55.74.212/cope/net2.mp3", volume = 0.1 }
supersede_radio "RADIO_03_HIPHOP_NEW" { url = "http://195.10.10.222/cope/rockfm.mp3", volume = 0.1 }
supersede_radio "RADIO_04_PUNK" { url = "http://195.10.10.222/cope/megastar.mp3", volume = 0.1 }
supersede_radio "RADIO_05_TALK_01" { url = "http://icecast-streaming.nice264.com/europafm", volume = 0.1 }
supersede_radio "RADIO_06_COUNTRY" { url = "http://195.10.10.223/rtva/canalflamenco.mp3", volume = 0.1 }
supersede_radio "RADIO_07_DANCE_01" { url = "http://radio3.rtveradio.cires21.com/radio3.mp3", volume = 0.1 }
supersede_radio "RADIO_08_MEXICAN" { url = "http://195.55.74.208/rtva/canalsurradio_master.mp3", volume = 0.1 }
supersede_radio "RADIO_09_HIPHOP_OLD" { url = "http://icecast-streaming.nice264.com/ondacero", volume = 0.1 }
supersede_radio "RADIO_11_TALK_02" { url = "http://icecast-streaming.nice264.com/melodiafm", volume = 0.1 }
supersede_radio "RADIO_12_REGGAE" { url = "http://edge3.adnstream.com:8000/radiointereconomia", volume = 0.1 }

files {
	"index.html"
}

ui_page "index.html"

client_scripts {
	"data.js",
	"client.js"
}
