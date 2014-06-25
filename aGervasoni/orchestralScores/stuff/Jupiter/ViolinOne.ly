\version "2.16.1"

% -*-
% indent-tabs: yes;
% indent-width: 8;

ViolinOneA = {
	\new Voice = "first" {
		\clef treble
		\key c \major
		\relative c'' {
			\PersonalSettings
			r4^"div." \voiceOne a16-.\f c-. d-. a-. | % 1
			e'_\markup { \italic "sempre staccato" } g a e a c d a | % 2
			c d a c d a c d | % 3
			a c d a c d a c | % 4
			d a c d a c d a | % 5
			c d a c d a c d | % 6
			a c d a c d a c | % 7
			d a c d a c d a | % 8
			c d a c d a c d | % 9
			a c d a c d a c | % 10
			d a c d a c d a | % 11
			c d a c d\p a c d | % 12
			\oneVoice a^"unis." c d a\cresc c d a c | % 13
			d a c d a c d a | % 14
			c d a c d a c d | % 15
			a\ff c d a c d a c | % 16
			d a c d a c d a | % 17
			c d a c d a c d | % 18
			a c d a c d a c | % 19
			d a c d a c d a | % 20
			c d a c d a c d | % 22
			r4 e:32\fff | % 22
			e2: | % 23
			e: | % 24
			g8-. f4 c8~--| % 25
			c e d4-- | % 26
			c8[ b a g] | % 27
		}
	}
}

ViolinOneB = {
	\new Voice = "second" {
		\relative c'' {
			\PersonalSettings
			\voiceTwo
			s4 a16-. c-. d-. a-. | % 1
			e' g a e g a e g | % 2
			a e g a e g a e | % 3
			g a e g a e g a | % 4
			e g a e g a e g | % 5
			a e g a e g a e | % 6
			g a e g a e g a | % 7
			e g a e g a e g | % 8
			a e g a e g a e | % 9
			g a e g a e g a | % 10
			e g a e g a e g | % 11
			a e g a e g a e | % 12
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