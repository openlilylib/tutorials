\version "2.16.1"

% -*-
% indent-tabs: yes;
% indent-width: 8;

OboeThree = {
	\clef treble
	\key c \major
	\relative c'' {
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
		\cueDuring #"Horns" #DOWN { R2*6 } | % 6-11
		r4 g8-.\f r | % 12
		R2 | % 13
		R2 | % 14
		a16-.\f\< c-. d-. a-. c-. d-. a-. c-. | % 15
		d\fortissimoSempreStaccato a c d a c d a | % 16
		c d a c d a c d | % 17
		a c d a c d a c | % 18
		d a c d a c d a | % 19
		c d a c d a c d | % 20
		a c d a c d a c | % 21
		r4 b~\fff | % 22
		b2~ | % 23
		b | % 24
		c8-. c4-- a8~-- | % 25
		a a a4-- | % 26
		f8[ f f f] | % 27
	}
}