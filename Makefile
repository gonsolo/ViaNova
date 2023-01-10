NAME = via_nova

all: $(NAME).pdf
	evince -p 1 $<
$(NAME).midi $(NAME).pdf: $(NAME).ly jaeger.ly
	lilypond $<
e: edit
edit:
	vi jaeger.ly +169 # $(NAME).ly
c: clean
clean:
	rm -f $(NAME).pdf $(NAME).midi *.mid $(NAME)-tmp-*  $(NAME)-book.pdf
l: listen
listen: $(NAME).ly jaeger.ly
	timidity via_nova.midi
ardour:
	pw-jack /home/gonsolo/src/ardour/gtk2_ardour/ardev ~/Dokumente/Ardour/ViaVenatoris/ViaVenatoris.ardour &
book: $(NAME)-book.pdf
	evince $<
$(NAME)-book.pdf: $(NAME).pdf
	pdfbook2 $(NAME).pdf
split: $(NAME).midi
	midi_splitter $(NAME).midi
.PHONY: all ardour book c clean e edit l listen split
