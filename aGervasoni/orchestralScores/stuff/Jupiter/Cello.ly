\version "2.16.1"

% -*-
% indent-tabs: yes;
% indent-width: 8;

CelloA = {
	\new Voice = "first" {
		\clef bass
		\key c \major
		\relative c' {
			\PersonalSettings
			\oneVoice
			R2 | % 1
			R2 | % 2
			R2 | % 3
			R2 | % 4
			R2 | % 5
			\clef tenor a8-.\forteMoltoPesante b4-- g8~-- | % 6
			g b-. a4-- | % 7
			b16-. c-. a-. b-. c8. g16~-- | % 8
			g4 b8-. c-. | % 9
			g16-. a-. c-. e-. g8. g16 | % 10
			a8-. b4-- g8~-- | % 11
			g r  a16-.\p e-. g-. a-. | % 12
			e^\markup { \italic "sempre staccato" } g a e\cresc g a e g | % 13
			a e g a e g a e | % 14
			g a e g a e g a | % 15
			e\ff g a e g a e g | % 16
			a e g a e g a e | % 17
			g a e g a e g a | % 18
			e g a e g a e g | % 19
			a e g a e g a e | % 20
			g a e g a e g a | % 21
			\clef bass r4 gis,,4~ | % 22
			gis2~ | % 23
			gis2 | % 24
			d8-. e4-- f8~-- | % 25
			f a b4-- | % 26
			d8[ e f g] | % 27
		}
	}
}

CelloB = {
	\new Voice = "second" {
		\relative c, {
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