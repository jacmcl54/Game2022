extends RichTextLabel



func _ready():
	Signals.connect("udaptesscore", self, "udaptesscore")
	
func udaptesscore(score):
	self.text = String(score)
