\version "2.16.1"

% -*-
% indent-tabs: yes;
% indent-width: 8;

OboeTwo = {
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
		r4 c8-. r | % 12
		R2 | % 13
		R2 | % 14
		r4 e16-. g-. a-. e-. | % 15
		g a e g a e g a | % 16
		e g a e g a e g | % 17
		a e g a e g a e | % 18
		g a e g a e g a | % 19
		e g a e g a e g | % 20
		a e g a e g a e | % 21
		r4 e~ | % 22
		e2~ | % 23
		e | % 24
		a8-. a4-- f8~-- | % 25
		f f f4-- | % 26
		d8[ d d d] | % 27
	}
}

OboeTwoMarks = {
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