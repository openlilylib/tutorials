\version "2.16.1"

% -*-
% indent-tabs: yes;
% indent-width: 8;

BassoonThree = {
	\clef bass
	\key c \major
	\relative c, {
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
		r4 c8-.\f r | % 12
		R2 | % 13
		R2 | % 14
		R2 | % 15
		a'8-.\ff c4-- g8~-- | % 16
		g b-. a4-- | % 17
		b16-. c-. a-. b-. c8. g16~-- | % 18
		g4 b8-. a-. | % 19
		g16-. a-. c-. e-. g8. g16 | % 20
		a8-. b4-- g8-. | % 21
		r4 gis,4~\fff | % 22
		gis2~ | % 23
		gis2 | % 24
		d8-. e4-- f8~-- | % 25
		f a b4-- | % 26
		d8[ e f g] | % 27
	}
}