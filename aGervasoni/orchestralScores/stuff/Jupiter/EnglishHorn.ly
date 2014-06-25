\version "2.16.1"

% -*-
% indent-tabs: yes;
% indent-width: 8;

EnglishHorn = {
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
		r4 c8-.\f r | % 12
		R2 | % 13
		r4 e,16-.\p\< g-. a-. e-. | % 14
		g-. a-. e-. g-. a-. e-. g-. a-. | % 15
		e\fortissimoSempreStaccato g a e g a e g | % 16
		a e g a e g a e | % 17
		g a e g a e g a | % 18
		e g a e g a e g | % 19
		a e g a e g a e | % 20
		g a e g a e g a | % 21
		r4 e~\fff | % 22
		e2~ | % 23
		e | % 24
		a8-. a4-- f8~-- | % 25
		f f f4-- | % 26
		d8[ d d d] | % 27
	}
}