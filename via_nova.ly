% Copyright 2023 A. Wendleder

\version "2.20.0"

\header {
	title = "Via Venatoris"
	subtitle = "Dauer: 6:10"
	%composer = "A. Wendleder"
	tagline = ##f
}

\layout {
	indent = 3.0\cm
	short-indent = 1.0\cm
	\context {
		% Remove empty lines
		\Staff \RemoveEmptyStaves
		% Also remove first empty line
		%\override VerticalAxisGroup.remove-first = ##t
	}
}

%{
%}
\include "jaeger.ly"
%{
%}

