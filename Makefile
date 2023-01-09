NAME = via_nova

all: $(NAME).pdf
	evince -p 1 $<
$(NAME).pdf: $(NAME).ly jaeger.ly
	lilypond $<
e: edit
edit:
	vi jaeger.ly +169 # $(NAME).ly
c: clean
clean:
	rm -f $(NAME).pdf $(NAME).midi
l: listen
listen: $(NAME).ly jaeger.ly
	timidity via_nova.midi
ardour:
	pw-jack /home/gonsolo/src/ardour/gtk2_ardour/ardev
