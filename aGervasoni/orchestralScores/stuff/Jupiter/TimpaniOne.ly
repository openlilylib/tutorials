\version "2.16.1"

% -*-
% indent-tabs: yes;
% indent-width: 8;

TimpaniOne = {
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
		r4 c8\f r | % 12
		R2 | % 13
		R2 | % 14
		R2 | % 15
		a8\ff b4 r8 | % 16
		r b a4 | % 17
		b16 c a b c4 | % 18
		r b8 a | % 19
		r16 a c r r4 | % 20
		R2 | % 21
		R2 | % 22
		R2 | % 23
		R2 | % 24
		r4 r8 c~\fff | % 25
		c a b4 | % 26
		R2^"C to E" | % 27
	}
}