\version "2.16.1"

% -*-
% indent-tabs: yes;
% indent-width: 8;

ViolaA = {
	\new Voice = "first" {
		\clef alto
		\key c \major
		\relative c' {
			\PersonalSettings
			\oneVoice
			R2 | % 1
			R2 | % 2
			R2 | % 3
			R2 | % 4
			R2 | % 5
			a8-.\forteMoltoPesante b4-- g8~-- | % 6
			g b-. a4-- | % 7
			b16-. c-. a-. b-. c8. g16~-- | % 8
			g4 b8-. c-. | % 9
			g16-. a-. c-. e-. g8. g16 | % 10
			a8-. b4-- g8~-- | % 11
			g r \clef treble c'16-.\p d-. a-. c-. | % 12
			d^\markup { \italic "sempre staccato" } a c d\cresc a c d a | % 13
			c d a c d a c d | % 14
			a c d a c d a c | % 15
			d\ff a c d a c d a | % 16
			c d a c d a c d | % 17
			a c d a c d a c | % 18
			d a c d a c d a | % 19
			c d a c d a c d | % 20
			a c d a c d a c | % 21
			r4 <e, e'>:32\fff | % 22
			<e e'>2: | % 23
			<e e'>: | % 24
			c8-. c4-- \clef alto a8~-- | % 25
			a f f4-- | % 26
			<f d'>8 <f d'> <f d'> <f d'> | % 27
		}
	}
}

ViolaB = {
	\new Voice = "second" {
		\relative c' {
			\PersonalSettings
			\voiceTwo
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
			s2 | % 12
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