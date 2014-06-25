\version "2.16.1"

% -*-
% indent-tabs: yes;
% indent-width: 8;

TromboneOne = {
	\clef tenor
	\key c \major
	\relative c' {
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
		r4 e8-. r | % 12
		R2 | % 13
		R2 | % 14
		R2 | % 15
		a,8-. c4-- g8~-- | % 16
		g b-. a4-- | % 17
		b16-. c-. a-. b-. c8. g16~-- | % 18
		g4 b8-. a-. | % 19
		g16-. a-. c-. e-. g8. g,16 | % 20
		a8-. b4-- g8-. | % 21
		r4 e'4~ | % 22
		e2~ | % 23
		e2 | % 24
		\partcombineChords
		a8-. a4-- a8~-- | % 25
		a a a4-- | % 26
		f8[ f f f] | % 27
	}
}

TromboneOneMarks = {
	s2 | % 1
	s2 | % 2
	s2 | % 3
	s2 | % 4
	s2 | % 5
	s2 | % 6
	s2 | % 7
	s2 | % 8
	s2 | % 9
	s2 | % 10
	s2 | % 11
	s4 s\f | % 12
	s2 | % 13
	s2 | % 14
	s2 | % 15
	s2\ff | % 16
	s2 | % 17
	s2 | % 18
	s2 | % 19
	s2 | % 20
	s2 | % 21
	s4 s\fff | % 22
	s2 | % 23
	s2 | % 24
	s2 | % 25
	s2 | % 26
	s2 | % 27
}