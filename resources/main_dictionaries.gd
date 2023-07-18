# Stores all dictionaries for vocabularies
extends Node

var selected_target: int = 1

var vocab_a = {
	"1": {
		"english_word": "Allow",
		"translation": "Mengizinkan",
		"example": "My mom allows me to play.\nIbuku mengizinkanku untuk bermain",
		"input_done": false,
		"locked": false
	},
	"2": {
		"english_word": "Ask",
		"translation": "Meminta (tolong)/Menanyai",
		"example": "I ask him some questions.\nAku menanyainya beberapa pertanyaan.",
		"input_done": false,
		"locked": true
	},
	"3": {
		"english_word": "Borrow",
		"translation": "Meminjam",
		"example": "I borrow my friend's pencil.\nAku meminjam pulpen temanku.",
		"input_done": false,
		"locked": true
	},
	"4": {
		"english_word": "Buy",
		"translation": "Membeli",
		"example": "He buys five apples.\nDia membeli lima buah apel.",
		"input_done": false,
		"locked": true
	},
	"5": {
		"english_word": "Call",
		"translation": "Memanggil/Menelpon",
		"example": "My father calls me.\nAyahku menelponku.",
		"input_done": false,
		"locked": true
	},
	"6": {
		"english_word": "Cook",
		"translation": "Memasak",
		"example": "Susi cooks a fried chicken.\nSusi memasak ayam goreng.",
		"input_done": false,
		"locked": true
	},
	"7": {
		"english_word": "Cry",
		"translation": "Menangis",
		"example": "She cries loudly.\nDia menangis dengan keras.",
		"input_done": false,
		"locked": true
	},
	"8": {
		"english_word": "Dance",
		"translation": "Menari",
		"example": "Anton dances so well.\nAnton menari dengan sangat baik.",
		"input_done": false,
		"locked": true
	},
	"9": {
		"english_word": "Deliver",
		"translation": "Mengantar",
		"example": "The courier deliver my package.\nKurir itu mengantarkan paketku.",
		"input_done": false,
		"locked": true
	},
	"10": {
		"english_word": "Do Homework",
		"translation": "Mengerjakan PR",
		"example": "I always do my homework.\nAku selalu mengerjakan PR ku.",
		"input_done": false,
		"locked": true
	},
	"11": {
		"english_word": "Drink",
		"translation": "Minum",
		"example": "I drink eight glasses of water everyday.\nAku minum 8 gelas air setiap sehari.",
		"input_done": false,
		"locked": true
	},
	"12": {
		"english_word": "Eat",
		"translation": "Makan",
		"example": "Toni eats three times a day.\nToni makan 3 kali sehari.",
		"input_done": false,
		"locked": true
	},
	"13": {
		"english_word": "Get up",
		"translation": "Bangun tidur",
		"example": "I get up early this morning.\nAku bangun tidur awal pagi hari ini.",
		"input_done": false,
		"locked": true
	},
	"14": {
		"english_word": "Give",
		"translation": "Memberi",
		"example": "Annisa gives me a pen.\nAnnisa memberikanku sebuah pulpen.",
		"input_done": false,
		"locked": true
	},
		"15": {
		"english_word": "Help",
		"translation": "Membantu",
		"example": "I help my mom cooking for dinner.\nAku membantu ibuku memasak untuk makan malam.",
		"input_done": false,
		"locked": true
	},
		"16": {
		"english_word": "Invite",
		"translation": "Mengundng",
		"example": "Deni invites me to his birthday party.\nDeni mengundangku ke pesta ulang tahunnya.",
		"input_done": false,
		"locked": true
	},
		"17": {
		"english_word": "Lend",
		"translation": "Meminjamkan",
		"example": "Andi lends his pencil to me.\nAndi meminjamkan pensilnya padaku.",
		"input_done": false,
		"locked": true
	},
		"18": {
		"english_word": "Play",
		"translation": "Bermain",
		"example": "We play football at the field.\nKami bermain bola di lapangan.",
		"input_done": false,
		"locked": true
	},
		"19": {
		"english_word": "Pray",
		"translation": "Sholat/Berdoa",
		"example": "I pray maghrib at the mosque.\nAku sholat maghrib di masjid.",
		"input_done": false,
		"locked": true
	},
		"20": {
		"english_word": "Read",
		"translation": "Membaca",
		"example": "My father reads news every morning.\nAyahku membaca berita setiap pagi.",
		"input_done": false,
		"locked": true
	},
		"21": {
		"english_word": "Receive",
		"translation": "Menerima",
		"example": "I receive the package.\nAku menerima paket.",
		"input_done": false,
		"locked": true
	},
		"22": {
		"english_word": "Ride a Bike",
		"translation": "Mengendarai Sepeda",
		"example": "Deni rides his bike to school.\nDeni mengendarai sepedanya ke sekolah.",
		"input_done": false,
		"locked": true
	},
		"23": {
		"english_word": "Run",
		"translation": "Berlari",
		"example": "Lisa runs at the park every weekend.\nLisa berlari di taman setiap akhir pekan.",
		"input_done": false,
		"locked": true
	},
		"24": {
		"english_word": "See",
		"translation": "Melihat",
		"example": "I see him at the canteen.\nAku melihatnya di kantin.",
		"input_done": false,
		"locked": true
	},
		"25": {
		"english_word": "Send",
		"translation": "Mengirim",
		"example": "Your mom sends a message for you.\nIbumu mengirim sebuah pesan untukmu.",
		"input_done": false,
		"locked": true
	},
		"26": {
		"english_word": "Sing",
		"translation": "Menyanyi",
		"example": "Susi sings a popular song.\nSusi menyanyikan sebuah lagu populer.",
		"input_done": false,
		"locked": true
	},
		"27": {
		"english_word": "Speak",
		"translation": "Berbicara",
		"example": "My father speaks english fluently.\nAyahku berbicara bahasa Inggris dengan lancar.",
		"input_done": false,
		"locked": true
	},
		"28": {
		"english_word": "Study",
		"translation": "Belajar",
		"example": "I study for the next exam.\nAku belajar untuk ujian selanjutnya.",
		"input_done": false,
		"locked": true
	},
		"29": {
		"english_word": "Sweep",
		"translation": "Menyapu",
		"example": "Andre sweeps the floor this morning.\nAndre menyapu lantai pagi ini.",
		"input_done": false,
		"locked": true
	},
		"30": {
		"english_word": "Take",
		"translation": "Mengambil",
		"example": "My sister take 3 pieces of cookie.\nAdikku mengambil 3 buah kue.",
		"input_done": false,
		"locked": true
	},
		"31": {
		"english_word": "Take a Bath",
		"translation": "Mandi",
		"example": "I take a bath in the morning.\nAku mandi di pagi hari.",
		"input_done": false,
		"locked": true
	},
	"32": {
		"english_word": "Take a Rest",
		"translation": "Membantu",
		"example": "I take a rest for ten minutes.\nAku beristirahat selama 10 menit.",
		"input_done": false,
		"locked": true
	},
	"33": {
		"english_word": "Take a Walk",
		"translation": "Jalan-jalan (kaki)",
		"example": "I take a walk at the park.\nAku jalan-jalan di taman.",
		"input_done": false,
		"locked": true
	},
	"34": {
		"english_word": "Take a Wudhu",
		"translation": "Mengambil Wudhu",
		"example": "I take a wudhu for prayer.\nAku mengambil wudhu untuk sholat.",
		"input_done": false,
		"locked": true
	},
	"35": {
		"english_word": "Visit",
		"translation": "Mengunjungi",
		"example": "My family visits our grandma in the holiday.\nKeluargaku mengunjungi nenek kami di saat liburan.",
		"input_done": false,
		"locked": true
	},
	"36": {
		"english_word": "Walk",
		"translation": "Berjalan",
		"example": "Yanto walks to school everyday.\nYanto berjalan ke sekolah setiap hari.",
		"input_done": false,
		"locked": true
	},
	"37": {
		"english_word": "Wash",
		"translation": "Mencuci",
		"example": "My father washes his car.\nAyahku mencuci mobilnya.",
		"input_done": false,
		"locked": true
	},
	"38": {
		"english_word": "Wash the Hair",
		"translation": "Keramas",
		"example": "I wash my hair this morning.\nAku keramas pagi ini.",
		"input_done": false,
		"locked": true
	},
	"39": {
		"english_word": "Write",
		"translation": "Menulis",
		"example": "My friend writes a letter for me.\nTemanku menulis sebuah surat untukku.",
		"input_done": false,
		"locked": true
	},
	"40": {
		"english_word": "Tidy Up",
		"translation": "Merapihkan",
		"example": "I tidy up my room.\nAku merapihkan kamarku.",
		"input_done": false,
		"locked": true
	}
}

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
