extends ColorRect

var  parent_name
# Called when the node enters the scene tree for the first time.
func _ready():
	parent_name = get_parent().name
	
	if parent_name == "quiz_a":
		$VBoxContainer/quiz_guide.text = "1. Bacalah perintah pada soal yang diberikan.\n2. Pilihlah jawaban yang menurutmu benar.\n3. Tekan tombol [submit] untuk mengunci jawaban.\n4. Setelah mengunci jawaban, tekan tombol [next]\nuntuk melanjutkan ke soal berikutnya.\n\nSelamat mengerjakan!!"
	elif parent_name == "quiz_b":
		$VBoxContainer/quiz_guide.text = "1. Bacalah perintah pada soal yang diberikan.\n2. Tekan tombol [kata] untuk menginput kata.\n3. Susunlah sebuah kalimat dengan menggunakan\nkata yang tersedia\n4. Tekan tombol [clear] untuk menghapus kata\nyang sudah diinput.\n5. Tekan tombol [submit] untuk mengunci jawaban.\n6. Setelah mengunci jawaban, tekan tombol [next]\nuntuk melanjutkan ke soal berikutnya.\n\nSelamat mengerjakan!!"

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_start_quiz_pressed():
	queue_free()
