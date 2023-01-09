NAME = via_nova

all: $(NAME).pdf
	evince -p 1 $<
$(NAME).pdf: $(NAME).ly jaeger.ly
	lilypond $<
e: edit
edit:
	vi jaeger.ly # $(NAME).ly
c: clean
clean:
	rm -f $(NAME).pdf $(NAME).midi
