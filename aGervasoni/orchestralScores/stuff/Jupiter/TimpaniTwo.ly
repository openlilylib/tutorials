\version "2.16.1"

% -*-
% indent-tabs: yes;
% indent-width: 8;

TimpaniTwo = {
	\clef bass
	\key c \major
	\relative c {
		\PersonalSettings
		R2 | % 1
		R2 | % 2
		R2 | % 3
		R2 | % 4
		R2 | % 5
		%{ R2 | % 6
		   R2 | % 7
		   R2 | % 8
		   R2 | % 9
		   R2 | % 10
		   R2 | % 11 %}
		\tag #'inpart { \new CueVoice { \set instrumentCueName = "Horns" } }
		\cueDuring #"Horns" #UP { R2*6 } | % 6-11
		r4 g8\f r | % 12
		R2 | % 13
		R2 | % 14
		R2 | % 15
		r4 r8 g8~\ff | % 16
		g r r4 | % 17
		r4 r8. g16~ | % 18
		g4 r | % 19
		g8. e'16 g,8 r | % 20
		R2 | % 21
		r4 e'\fff\startTrillSpan | % 22
		e2 | % 23
		e | % 24
		d8\stopTrillSpan e4 r8 | % 25
		R2 | % 26
		d8[ e d g,] | % 27
	}
}