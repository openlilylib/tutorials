\version "2.16.1"

% -*-
% indent-tabs: yes;
% indent-width: 8;

TromboneThree = {
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
		r4 c8-.\f r | % 12
		R2 | % 13
		R2 | % 14
		R2 | % 15
		R2 | % 16
		R2 | % 17
		R2 | % 18
		R2 | % 19
		R2 | % 20
		R2 | % 21
		r4 gis4~\fff | % 22
		gis2~ | % 23
		gis2 | % 24
		d8-. e4-- f8~-- | % 25
		f a b4-- | % 26
		d8[ d d d] | % 27
	}
}