# Stores all dictionaries for vocabularies
extends Node

var player_name = "Ahnaf Arzaqu Zaki Jumadi"

#bgm playback getter
var bgm_playback
var bgm_playing = true

#vocab menu selected word getter
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
		"example": "She buys five apples.\nDia membeli lima buah apel.",
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
		"example": "Susi cooks in the kitchen.\nSusi memasak di dapur.",
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
		"example": "The courier delivers my package.\nKurir itu mengantarkan paketku.",
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
		"example": "Annisa gives money to a beggar.\nAnnisa memberi uang ke pengemis.",
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
		"translation": "Mengundang",
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
		"example": "John runs at the track.\nJohn berlari di lintasan.",
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
		"example": "My sister takes 3 pieces of cookie.\nAdikku mengambil 3 buah kue.",
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
		"translation": "Beristirahat",
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
		"english_word": "Take a Wudu",
		"translation": "Mengambil Wudu",
		"example": "I take a wudu for prayer.\nAku mengambil wudu untuk sholat.",
		"input_done": false,
		"locked": true
	},
	"35": {
		"english_word": "Tidy Up",
		"translation": "Merapihkan",
		"example": "I tidy up my room.\nAku merapihkan kamarku.",
		"input_done": false,
		"locked": true
	},
	"36": {
		"english_word": "Visit",
		"translation": "Mengunjungi",
		"example": "My family visits our grandma in the holiday.\nKeluargaku mengunjungi nenek kami di saat liburan.",
		"input_done": false,
		"locked": true
	},
	"37": {
		"english_word": "Walk",
		"translation": "Berjalan",
		"example": "Yanto walks to school everyday.\nYanto berjalan ke sekolah setiap hari.",
		"input_done": false,
		"locked": true
	},
	"38": {
		"english_word": "Wash",
		"translation": "Mencuci",
		"example": "My father washes his car.\nAyahku mencuci mobilnya.",
		"input_done": false,
		"locked": true
	},
	"39": {
		"english_word": "Wash the Hair",
		"translation": "Keramas",
		"example": "I wash my hair this morning.\nAku keramas pagi ini.",
		"input_done": false,
		"locked": true
	},
	"40": {
		"english_word": "Write",
		"translation": "Menulis",
		"example": "My friend writes a letter for me.\nTemanku menulis sebuah surat untukku.",
		"input_done": false,
		"locked": true
	}
}

var library_finished = false

#lesson content data
var selected_lesson

const lesson_vn_resource = {
	"lesson_1" = {
		"1" = {
			"text": "Halo! Perkenalkan namaku Ellie, dan selamat datang di [color=orange]Ellie's English Class[/color]. Di sini aku akan memandu teman-teman untuk belajar Bahasa Inggris bersama. Mari kita mulai pelajaran kita hari ini. [color=aquamarine](Tekan tombol panah di sebelah kanan)[/color]",
			"malkuth": "3",
			"content": "1"
		},
		"2" = {
			"text": "Kali ini kita akan belajar cara merangkai kalimat [color=yellow]Simple Present Tense[/color].",
			"malkuth": "1",
			"content": "2"
		},
		"3" = {
			"text": "Kalimat Simple Present Tense adalah jenis kalimat yang digunakan untuk menyatakan suatu [color=yellow]fakta masa kini, kebiasaan, dan kalimat perintah[/color].",
			"malkuth": "1",
			"content": "2"
		},
		"4" = {
			"text": "Untuk merangkai kalimat Simple Present Tense, cukup mudah loh. Pola kalimat Simple Present Tense cukup mirip dengan Bahasa Indonesia.",
			"malkuth": "3",
			"content": "2"
		},
		"5" = {
			"text": "Mari kita lihat contoh di samping ini.",
			"malkuth": "2",
			"content": "3"
		},
		"6" = {
			"text": "[color=aqua]Aku[/color] [color=green]membeli[/color] [color=orange]lima apel[/color], dan dalam Bahasa inggris menjadi [color=aqua]I[/color] [color=green]buy[/color] [color=orange]five apples[/color].",
			"malkuth": "1",
			"content": "3"
		},
		"7" = {
			"text": "Kedua kalimat ini memiliki pola kalimat yang sama yaitu [color=aqua]Subject (Pelaku)[/color] + [color=green]Verb (Kata Kerja)[/color] + [color=orange]Object (Objek/Benda)[/color].",
			"malkuth": "1",
			"content": "4"
		},
		"8" = {
			"text": "Dari contoh ini, subject dalam kalimat adalah [color=aqua]I[/color], kemudian verb adalah [color=green]buy[/color], dan object adalah [color=orange]five apples[/color].",
			"malkuth": "1",
			"content": "5"
		},
		"9" = {
			"text": "Dengan satu pola sederhana ini, [color=aqua]Subject (Pelaku)[/color] + [color=green]Verb (Kata Kerja)[/color] + [color=orange]Object (Objek/Benda)[/color], teman-teman bisa merangkai beragam kalimat seperti contoh di samping ini.",
			"malkuth": "2",
			"content": "6"
		},
		"10" = {
			"text": "Bagaimana? Cukup mudah bukan? ",
			"malkuth": "3",
			"content": "6"
		},
		"11" = {
			"text": "Perlu teman-teman perhatikan, ada juga kata kerja yang tidak memerlukan objek, seperti contohnya di samping ini.",
			"malkuth": "2",
			"content": "7"
		},
		"12" = {
			"text": "Itu saja untuk pelajaran pertama kali ini. Ingat, untuk Simple Preset Tense, pola dasar kalimatnya adalah [color=aqua]Subject (Pelaku)[/color] + [color=green]Verb (Kata Kerja)[/color] + [color=orange]Object (Objek/Benda)[/color]. Sampai berjumpa kembali di kelas lainnya!",
			"malkuth": "1",
			"content": ""
		}
	},
	"lesson_2" = {
		"1" = {
			"text": "Halo! Selamat datang kembali di Ellie's English Class. Ellie akan memandu teman-teman lagi dalam pelajaran kali ini.",
			"malkuth": "3",
			"content": "1"
		},
		"2" = {
			"text": "Dalam pelajaran sebelumnya, kita telah mempelajari pola kalimat dasar simple present tense. Pada pelajaran kali ini, kita akan membahas membahas tentang [color=yellow]perubahan kata kerja[/color] dalam simple present tense.",
			"malkuth": "1",
			"content": "2"
		},
		"3" = {
			"text": "Jika teman-teman perhatikan lebih teliti, di pelajaran sebelumnya ada satu contoh kata kerja yang berubah pada contoh kalimat yang ditampilkan.",
			"malkuth": "2",
			"content": "3"
		},
		"4" = {
			"text": "Perubahan kata kerja terdapat pada contoh ini, He [color=lime]eats[/color] an apple.",
			"malkuth": "1",
			"content": "4"
		},
		"5" = {
			"text": "Kata kerja yang ada di kalimat tersebut merupakan kata 'eat' yang artinya makan. Namun, dalam penggunaan di kalimat tersebut, berubah menjadi '[color=lime]eat[/color][color=yellow]s[/color]'.",
			"malkuth": "1",
			"content": "5"
		},
		"6" = {
			"text": "Dalam pelajaran kali ini, kita akan belajar tentang penyebab terjadi perubahan kata kerja seperti contoh tadi, dan bagaimana menerapkannya dalam menyusun kalimat.",
			"malkuth": "1",
			"content": "5"
		},
		"7" = {
			"text": "Pertama-tama, kita mulai dari kata ganti subjek yang ada di dalam Bahasa Inggris.",
			"malkuth": "1",
			"content": "6"
		},
		"8" = {
			"text": "Seperti yang teman-teman lihat, ada beberapa kata ganti subjek yaitu [color=orange]They, We, I, You,[/color] [color=lime]He, She,[/color] dan [color=lime]It[/color].",
			"malkuth": "1",
			"content": "6"
		},
		"9" = {
			"text": "Dari ketujuh kata ganti tersebut, kita kelompokkan menjadi dua, yang pertama [color=orange]They, We, I, You[/color], dan yang kedua [color=lime]He, She, It[/color].",
			"malkuth": "1",
			"content": "7"
		},
		"10" = {
			"text": "Agar mudah diingat, untuk kelompok [color=yellow]They, We, I, You[/color] bisa teman-teman ingat sebagai '[color=yellow]Dewi Ayu[/color]', dan untuk kelompok ini, verb (kata kerja) [color=orange]tidak mengalami perubahan[/color] dalam simple present tense.",
			"malkuth": "2",
			"content": "8"
		},
		"11" = {
			"text": "Dan untuk kelompok kedua, [color=lime]He, She,[/color] dan [color=lime]It[/color], verb [color=aqua]akan berubah[/color], yang secara umum [color=aqua]ditambahkan huruf 'S'[/color].",
			"malkuth": "1",
			"content": "9"
		},
		"12" = {
			"text": "Jika kita lihat pada contoh sebelumnya, di sini verb [color=lime]eat[/color] ditambahkan 'S' menjadi [color=lime]eat[/color][color=yellow]s[/color] karena subject dalam kalimatnya menggunakan '[color=lime]He[/color]'.",
			"malkuth": "1",
			"content": "5"
		},
		"13" = {
			"text": "Agar mudah diingat, subject [color=lime]He/She/It[/color] [color=aqua]suka minum es[/color], jadi jika teman-teman menggunakannya di dalam kalimat simple present tense, [color=aqua]tambahkan huruf 'S'[/color].",
			"malkuth": "2",
			"content": "10"
		},
		"14" = {
			"text": "Catatan tambahan, sebagian besar verb cukup ditambahkan huruf 'S' saja. Namun, untuk verb dengan akhiran -sh, -ch, -s, -z, dan -x ditambahkan '-es'.",
			"malkuth": "1",
			"content": "11"
		},
		"15" = {
			"text": "Dan untuk verb dengan akhiran konsonan–y, huruf 'y' tersebut berubah menjadi 'i' dan kemudian ditambahkan '-es'. Sedangkan untuk kata dengan akhiran vokal-y, cukup ditambahkan -s saja seperti biasa",
			"malkuth": "1",
			"content": "11"
		},
		"16" = {
			"text": "Semakin sering teman-teman membaca teks Bahasa Inggris, akan semakin mudah untuk teman-teman membedakan mana yang cukup ditambahkan 'S', 'ES', atau 'IES'. ",
			"malkuth": "2",
			"content": "11"
		},
		"17" = {
			"text": "Itu saja untuk pelajaran kali ini. Ingat, jika teman-teman menggunakan subject '[color=lime]He/She/It[/color]' di kalimat simple present tense, tambahkan '[color=aqua]S[/color]' pada verb di kalimat tersebut!",
			"malkuth": "3",
			"content": "11"
		}
	},
	"lesson_3" = {
		"1" = {
			"text": "Selamat datang kembali di Ellie's English Class! Seperti biasanya, Ellie akan memandu teman-teman lagi dalam pelajaran kali ini.",
			"malkuth": "3",
			"content": "1"
		},
		"2" = {
			"text": "Pada pelajaran sebelumnya kita telah mempelajari struktur sederhana kalimat simple present tense.",
			"malkuth": "1",
			"content": "2"
		},
		"3" = {
			"text": "Akan tetapi kalimat yang tersusun masih terlihat kurang lengkap karena hanya menyampaikan objek.",
			"malkuth": "1",
			"content": "2"
		},
		"4" = {
			"text": "Mari kita lihat contoh kalimat yang kita gunakan pada pelajaran sebelumnya, he eats an apple. Kalimat ini menggunakan pola Subject + Verb + Object dan sudah menjadi suatu kalimat yang utuh.",
			"malkuth": "1",
			"content": "3"
		},
		"5" = {
			"text": "Akan tetapi, kalimat ini masih kurang menjelaskan keterangan seperti, dimana dia makan? Kapan dia makan? Bersama siapa dia makan? Berapa kali dia makan?",
			"malkuth": "1",
			"content": "3"
		},
		"6" = {
			"text": "Di sini lah kita gunakan [color=yellow]adverb[/color] untuk menjelaskan kalimat lebih lanjut lagi.",
			"malkuth": "1",
			"content": "3"
		},
		"7" = {
			"text": "Untuk tiga pelajaran ke depan, kita akan membahas tentang [color=yellow]Adverb[/color] atau kata keterangan. Kita akan mempelajari tiga jenis adverb terlebih dahulu, yaitu adverb of [color=aqua]time[/color] (waktu), [color=lime]place[/color] (tempat), dan [color=orange]frequency[/color] (frekuensi). Mari kita mulai pelajaran kali ini.",
			"malkuth": "1",
			"content": "4"
		},
		"8" = {
			"text": "Adverb pertama yang akan kita bahas adalah [color=aqua]adverb of time[/color], atau keterangan waktu. Seperti namanya, kita menggunakan adverb ini untuk menjelaskan waktu kejadian.",
			"malkuth": "1",
			"content": "5"
		},
		"9" = {
			"text": "Perlu teman-teman ingat, kalimat [color=yellow]simple present tense[/color] adalah kalimat untuk menyatakan [color=yellow]fakta masa kini, kebiasaan,[/color] dan [color=yellow]perintah[/color].",
			"malkuth": "1",
			"content": "5"
		},
		"10" = {
			"text": "Oleh karena itu, hanya gunakan adverb of time yang menyatakan waktu masa kini atau waktu secara umum. [color=orange]Hindari penggunaan adverb yang menunjukkan masa lalu (seperti 'kemarin') dan masa depan (seperti 'besok')[/color].",
			"malkuth": "1",
			"content": "5"
		},
		"11" = {
			"text": "Dalam kalimat, posisi adverb berada di [color=yellow]akhir kalimat sesudah object[/color].",
			"malkuth": "2",
			"content": "6"
		},
		"12" = {
			"text": "Untuk menulis keterangan waktu, teman-teman bisa menggunakan ketiga kata penghubung di samping ini. Setiap kata hubung ini memiliki penggunaannya masing-masing seperti berikut ini.",
			"malkuth": "1",
			"content": "7"
		},
		"13" = {
			"text": "Dalam simple present tense, 'In' dapat digunakan untuk menunjukkan [color=yellow]rentang waktu secara umum seperti hari, nama bulan, dan nama musim[/color]. Contoh: in the morning, in August, in summer.",
			"malkuth": "1",
			"content": "8"
		},
		"14" = {
			"text": "Selanjutnya dalam simple present tense, 'At' dapat digunakan untuk menunjukkan [color=yellow]waktu secara lebih spesifik[/color] seperti jam atau saat tertentu. Contoh: at 7:30, at midday, at sunrise, at weekend, at Idul Fitri.",
			"malkuth": "1",
			"content": "9"
		},
		"15" = {
			"text": "Ada satu pengecualian yaitu untuk keterangan waktu 'night' (malam hari), gunakan kata hubung 'at', misal 'I sleep [color=aqua]at night[/color]'.",
			"malkuth": "2",
			"content": "9"
		},
		"16" = {
			"text": "Dan terakhir ada kata hubung waktu 'on'. Kata ini digunakan untuk menunjukkan [color=yellow]tanggal atau hari tertentu[/color]. Contoh: on 25 June, on Friday, on Mondays, on my birthday.",
			"malkuth": "1",
			"content": "10"
		},
		"17" = {
			"text": "Penggunan kata hubung yang tepat penting teman-teman pelajari agar bisa menyusun kalimat dengan baik. Agar mudah mengingatnya, di sini ada perbedaan dari ketiga kata hubung yang telah kita pelajari.",
			"malkuth": "3",
			"content": "11"
		},
		"18" = {
			"text": "Berikut ini beberapa contoh kalimat dengan adverb of time.",
			"malkuth": "1",
			"content": "12"
		},
		"19" = {
			"text": "Mungkin di awal teman-teman akan tertukar antara penggunaan kata hubung satu dengan yang lainnya. Tetapi seiring teman-teman terbiasa membaca dan menulis Bahasa Inggris, teman-teman akan dapat menggunakan kata hubung yang sesuai dengan mudah.",
			"malkuth": "2",
			"content": "12"
		},
		"20" = {
			"text": "Itu saja untuk pelajaran kita kali ini, sampai berjumpa di pelajaran selanjutnya!",
			"malkuth": "3",
			"content": "12"
		}
	},
	"lesson_4" = {
		"1" = {
			"text": "Selamat datang kembali di Ellie's English Class! Seperti biasanya, Ellie akan memandu teman-teman lagi dalam pelajaran kali ini.",
			"malkuth": "3",
			"content": "1"
		},
		"2" = {
			"text": "Di pelajaran sebelumnya, kita telah mempelajari salah satu jenis [color=yellow]adverb[/color] atau kata keterangan, yaitu adverb of time untuk memberikan keterangan waktu pada kalimat.",
			"malkuth": "1",
			"content": "2"
		},
		"3" = {
			"text": "Kali ini kita akan melanjutkan materi adverb selanjutnya yaitu [color=yellow]adverb of  place[/color]. Adverb ini digunakan untuk memberikan keterangan [color=yellow]tempat[/color] dalam kalimat.",
			"malkuth": "1",
			"content": "3"
		},
		"4" = {
			"text": "Dalam kalimat, posisi adverb of place berada di [color=yellow]akhir kalimat sesudah object[/color].",
			"malkuth": "1",
			"content": "4"
		},
		"5" = {
			"text": "Jika teman-teman menambahkan adverb of time juga, letakkan adverb of place terlebih dahulu sebelum adverb of time.",
			"malkuth": "2",
			"content": "5"
		},
		"6" = {
			"text": "Untuk menulis keterangan tempat, teman-teman bisa menggunakan beberapa contoh kata hubung berikut ini.",
			"malkuth": "1",
			"content": "6"
		},
		"7" = {
			"text": "Beberapa kata hubung ini sama dengan yang digunakan untuk adverb of time, tetapi penggunaannya berbeda saat digunakan untuk menunjukkan tempat. Untuk lebih jelasnya mari kita lihat berikut ini.",
			"malkuth": "1",
			"content": "6"
		},
		"8" = {
			"text": "Kata hubung yang pertama yaitu 'at', yang diterjemahkan menjadi 'di' dalam Bahasa Indonesia. Kata hubung ini digunkan untuk menunjukkan suatu [color=yellow]tempat atau aktivitas di suatu tempat[/color].",
			"malkuth": "1",
			"content": "7"
		},
		"9" = {
			"text": "Kata hubung selanjutnya yaitu 'in', yang diterjemahkan menjadi 'di' atau 'di dalam' dalam Bahasa Indonesia. Kata hubung ini digunakan untuk menunjukkan tempat yang berada [color=yellow]di dalam suatu ruang tertentu[/color].",
			"malkuth": "1",
			"content": "8"
		},
		"10" = {
			"text": "Kata hubung ketiga yaitu 'on', yang sering diterjemahkan menjadi 'di atas', digunakan untuk menunjukkan [color=yellow]tempat di atas sesuatu atau permukaan[/color] dan pada [color=yellow]saat naik kendaraan[/color].",
			"malkuth": "1",
			"content": "9"
		},
		"11" = {
			"text": "Jika kita perhatikan, ketiga kata hubung ini sama-sama diterjemahkan menjadi kata 'di', yang dalam Bahasa Indonesia digunakan untuk menunjukkan posisi secara umum.",
			"malkuth": "2",
			"content": "10"
		},
		"12" = {
			"text": "Namun dalam Bahasa Inggris, penggunaan ketiga kata hubung ini sangat berbeda. Mari kita lihat contoh berikut ini untuk lebih jelasnya.",
			"malkuth": "1",
			"content": "10"
		},
		"13" = {
			"text": "Perbandingan pertama yaitu antara kata 'at' dan 'in'. Untuk perbandingan ini kita akan menggunakan kalimat 'at the river' dan 'in the river'.",
			"malkuth": "1",
			"content": "11"
		},
		"14" = {
			"text": "Saat kita menggunakan kata 'at the river', berarti kita sedang berada di area sekitar sungai, yang maknanya kita bisa berada di pinggirnya, atau di tengahnya.",
			"malkuth": "1",
			"content": "12"
		},
		"15" = {
			"text": "Contohnya bisa kita gunakan dalam kalimat 'My father fishes at the river', yang artinya ayahku memancing di sungai. Tentunya sang ayah memancing dari pinggir sungai, bukan menyeburkan diri ke dalam sungai bukan?",
			"malkuth": "1",
			"content": "12"
		},
		"16" = {
			"text": "Sedangkan saat menggunakan kata 'in the river', artinya posisi tersebut berada [color=yellow]di dalam [/color]sungai. Contohnya bisa digunakan dalam kalimat 'The fish swims in the river', yang artinya ikan berenang di dalam sungai.",
			"malkuth": "1",
			"content": "13"
		},
		"17" = {
			"text": "Perbandingan selanjutnya yaitu antara kata 'in' dan 'on' pada saat digunakan untuk menujukkan posisi dalam kendaraan. Untuk perbandingan ini kita akan menggunakan 'in the bus' dan 'on the bus'.",
			"malkuth": "1",
			"content": "14"
		},
		"18" = {
			"text": "Dalam kasus ini, 'in' hanya kita gunakan saat kita ingin [color=yellow]menekankan bahwa posisi kita ada di dalam[/color] suatu bus, baik bis itu sedang berjalan maupun sedang berhenti. Contoh kalimat yang menggunakan 'in' yaitu 'I leave my bag in the bus', yang artinya aku meninggalkan tasku di dalam bis.",
			"malkuth": "1",
			"content": "15"
		},
		"19" = {
			"text": "Sedangkan untuk kata 'on', kita menggunakannya untuk [color=yellow]menekankan kondisi kita yang sudah menaiki[/color] bis yang akan atau sedang berjalan. Contoh kalimat yang menggunakan on yaitu 'I am on the bus', yang artinya aku menaiki bis.",
			"malkuth": "1",
			"content": "16"
		},
		"20" = {
			"text": "Selanjutnya ada kata hubung 'to', yang diterjemahkan dalam Bahasa Indonesia yaitu 'ke'. Penggunaannya sama seperti penggunaan 'ke' dalam Bahasa Indonesia.",
			"malkuth": "1",
			"content": "17"
		},
		"21" = {
			"text": "Berikut ini beberapa contoh kalimat lainnya yang menggunakan [color=yellow]adverb of place[/color].",
			"malkuth": "2",
			"content": "18"
		},
		"22" = {
			"text": "Itu saja untuk materi kita kali ini, sampai berjumpa di kelas lainnya!",
			"malkuth": "3",
			"content": "18"
		}
	},
	"lesson_5" = {
		"1" = {
			"text": "Selamat datang kembali di Ellie's English Class! Seperti biasanya, Ellie akan memandu teman-teman lagi dalam pelajaran kali ini.",
			"malkuth": "3",
			"content": "1"
		},
		"2" = {
			"text": "Pada dua pelajaran sebelumnya, kita telah mempelajari adverb of time dan adverb of place.",
			"malkuth": "1",
			"content": "2"
		},
		"3" = {
			"text": "Untuk pelajaran kali ini, kita akan melanjutkannya ke adverb yang ketiga yaitu [color=yellow]adverb of frequency[/color]. Adverb ini digunakan untuk [color=lime]menunjukkan seberapa sering atau berapa kali[/color] kita melakukan sesuatu.",
			"malkuth": "2",
			"content": "3"
		},
		"4" = {
			"text": "Adverb of frequency terbagi menjadi 2 jenis, yaitu [color=lime]definite[/color] dan [color=aqua]indefinite[/color].",
			"malkuth": "1",
			"content": "4"
		},
		"5" = {
			"text": "Adverb of frequency definite adalah kata hubung yang digunakan untuk menyatakan frekuensi kata kerja [color=lime]yang terbilang jumlahnya[/color]. Contohnya seperti gosok gigi [color=lime]dua kali[/color] sehari, makan [color=lime]tiga kali[/color] sehari, jogging [color=lime]setiap hari minggu[/color].",
			"malkuth": "1",
			"content": "5"
		},
		"6" = {
			"text": "Dalam kalimat, [color=yellow]adverb of frequency[/color] [color=lime]definite[/color] diletakkan di [color=yellow]akhir kalimat[/color].",
			"malkuth": "2",
			"content": "6"
		},
		"7" = {
			"text": "Untuk menulis adverb of frequency [color=lime]definite[/color] ikuti petunjuk berikut ini.",
			"malkuth": "1",
			"content": "7"
		},
		"8" = {
			"text": "Untuk frekuensi satu kali, gunakan [color=lime]once[/color], untuk dua kali [color=lime]twice[/color], dan untuk tiga kali atau lebih, gunakan [angka] + times, misal [color=lime]three times[/color].",
			"malkuth": "1",
			"content": "7"
		},
		"9" = {
			"text": "Kemudian ditambahkan kata [color=yellow]'a'[/color] dan dilanjutkan dengan [color=yellow]rentang waktu[/color] dalam frekuensi tersebut, misal setiap sehari, seminggu, sebulan, atau setahun.",
			"malkuth": "1",
			"content": "7"
		},
		"10" = {
			"text": "Berikut ini  beberapa contoh penggunaan adverb of frequency [color=lime]definite[/color] dengan 'times' dalam kalimat.",
			"malkuth": "1",
			"content": "8"
		},
		"11" = {
			"text": "Dan untuk frekuensi [color=lime]setiap[/color] waktu tertentu, kita gunakan kata [color=lime]every[/color]. Jika rentang waktunya lebih dari satu (misal setiap dua hari, setiap tiga bulan), teman-teman bisa tambahkan angka setelah kata 'every'.",
			"malkuth": "1",
			"content": "9"
		},
		"12" = {
			"text": "Berikut ini  beberapa contoh penggunaan adverb of frequency [color=lime]definite[/color] dengan 'every' dalam kalimat.",
			"malkuth": "1",
			"content": "10"
		},
		"13" = {
			"text": "Kedua frekuensi kali dan setiap ini juga bisa digabungkan dalam satu kalimat, contohnya seperti berikut ini.",
			"malkuth": "2",
			"content": "11"
		},
		"14" = {
			"text": "Selanjutnya ada adverb of frequency [color=aqua]indefinite[/color]. Adverb ini digunakan untuk menunjukkan frekuensi yang [color=aqua]tidak ditentukan/terbilang jumlahnya[/color]. Contohnnya seperti sering, kadang, jarang, dan tidak pernah.",
			"malkuth": "1",
			"content": "12"
		},
		"15" = {
			"text": "Berbeda dengan adverb of frequency [color=lime]definite[/color], untuk adverb of frequency [color=aqua]indefinite[/color] diletakkan [color=aqua]sebelum verb[/color].",
			"malkuth": "2",
			"content": "13"
		},
		"16" = {
			"text": "Berikut ini adalah beberapa contoh kalimat dengan adverb of frequency [color=aqua]indefinite[/color].",
			"malkuth": "1",
			"content": "14"
		},
		"17" = {
			"text": "Itu saja untuk pelajaran kali ini. Ingat, untuk adverb of frequency [color=lime]definite[/color], letakkan [color=lime]di akhir kalimat[/color], dan adverb of frequency [color=aqua]indefinite[/color] diletakkan [color=aqua]sebelum verb[/color]. Sampai berjumpa di pelajaran lainnya!",
			"malkuth": "3",
			"content": "14"
		}
	}
}

var lesson_finished_checker= []
var lesson_finished_indicator = ["lesson_1", "lesson_2", "lesson_3", "lesson_4", "lesson_5"]
var lesson_finished = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

#check if all keys in vocab_a has input_done true
func check_library_finished():
	for key in vocab_a:
		if not vocab_a[key].input_done:
			library_finished = false
			return false
	library_finished = true
	return true

func check_lesson_finished():
	for lesson in lesson_finished_indicator:
		if not lesson_finished_checker.has(lesson):
			lesson_finished = false
			return false
	lesson_finished = true
	return true
