\version "2.16.1"

% -*-
% indent-tabs: yes;
% indent-width: 8;

ViolinTwoA = {
	\new Voice = "first" {
		\clef treble
		\key c \major
		\relative c' {
			\PersonalSettings
			\voiceOne
			e16-.\f^"div." g-. a-. e-. g-. a-. e-. g-. | % 1
			c_\markup { \italic "sempre staccato" } d a c d a c d | % 2
			a c d a c d a c | % 3
			d a c d a c d a | % 4
			c d a c d a c d | % 5
			a c d a c d a c | % 6
			d a c d a c d a | % 7
			c d a c d a c d | % 8
			a c d a c d a c | % 9
			d a c d a c d a | % 10
			c d a c d a c d | % 11
			a c d a c\p d a c | % 12
			\oneVoice g'^"unis." a e g\cresc a e g a | % 13
			e g a e g a e g | % 14
			a e g a e g a e | % 15
			g\ff a e g a e g a | % 16
			e g a e g a e g | % 17
			a e g a e g a e | % 18
			g a e g a e g a | % 19
			e g a e g a e g | % 20
			a e g a e g a e | % 21
			r4 <b b'>:32\fff | % 22
			<b b'>2: | % 23
			<b b'>: | % 24
			<a g'>8-. <a f'>4-- c8~-- | % 25
			c e d4-- | % 26
			c8[ b a g] | % 27
		}
	}
}

ViolinTwoB = {
	\new Voice = "second" {
		\relative c' {
			\PersonalSettings
			\voiceTwo
			e16-. g-. a-. e-. g-. a-. e-. g-. | % 1
			a e g a e g a e | % 2
			g a e g a e g a | % 3
			e g a e g a e g | % 4
			a e g a e g a e | % 5
			g a e g a e g a | % 6
			e g a e g a e g | % 7
			a e g a e g a e | % 8
			g a e g a e g a | % 9
			e g a e g a e g | % 10
			a e g a e g a e | % 11
			g a e g a e g a | % 12
			s2 | % 13
			s2 | % 14
			s2 | % 15
			s2 | % 16
			s2 | % 17
			s2 | % 18
			s2 | % 19
			s2 | % 20
			s2 | % 21
			s2 | % 22
			s2 | % 23
			s2 | % 24
			s2 | % 25
			s2 | % 26
			s2 | % 27
		}
	}
}