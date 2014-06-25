\version "2.16.1"

% -*-
% indent-tabs: yes;
% indent-width: 8;

ClarinetOne = {
	\clef treble
	\key c \major
	\relative c''' {
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
		r4 g8-. r | % 12
		R2 | % 13
		r16 e-. g-. a-. e-. g-. a-. e-. | % 14
		g-. a-. e-. g-. a-. e-. g-. a-. | % 15
		e g a e g a e g | % 16
		a e g a e g a e | % 17
		g a e g a e g a | % 18
		e g a e g a e g | % 19
		a e g a e g a e | % 20
		g a e g a e g a | % 18
		r4 b,~ | % 22
		b2~ | % 23
		b | % 24
		a'8-. a4-- f8~-- | % 25
		f f f4-- | % 26
		f8[ f f f] | % 27
	}
}

ClarinetOneMarks = {
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
	s16 s8.\p\< s4 | % 14
	s2 | % 15
	s2\fortissimoSempreStaccato | % 16
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