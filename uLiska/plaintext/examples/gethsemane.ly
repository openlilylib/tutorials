\version "2.17.3"
\include "deutsch.ly"

\include "lilypond-book-preamble.ly"

stimme = \relative es' {
	\time 4/4
	\key des \major
	\clef bass
	s2 es4. es8 |
	d4. b8 r4 b8 a |
	c2 f,4 r |
	r r f4. f8 |
	ges2( f4.) f8 |
	b,2 r
}

text = \lyricmode {
	Geist der Wahr -- heit, mei -- nen Zwie -- spalt,
	mei -- ne dunk -- le Schuld.
}

stimmeEins = \relative ges' {
%\override NoteHead #'color = #darkred
	\override Score.BarNumber #'break-visibility = #'#(#t #t #t)
	\set Score.currentBarNumber = #66
	\bar ""
	ges4 r f2 | %66
	s2 es'2 | %67
	s2. cis4 | %68
	<d, d'> <cis cis'>8 <c c'> <h h'>4 \clef bass cis4 | %69
	<d, d'> <cis cis'>8 <c c'> s2 
}

stimmeZwei = \relative b {
%	\override NoteHead #'color = #darkblue
	b4 c des c8 ces | %66
	b4 \voiceOne b'( \voiceFour ces \voiceTwo b8 a) | %67
	gis4 gis a gis8 g | %68
	fis4 s2 gis,8 g | %69
	fis4 s h, cis4( | %70
	d cis8 c h4) r
}

stimmeDrei = \relative f' {
%	\override NoteHead #'color = #darkcyan
	s2. f4 | %66
	b2 s4 s | %67
	gis'2 a4 s | %68
	s2 cis,, | %69
	ais2 <cis, h'>2( | %70
	<d ais'>)( <cis h'>) |
}

stimmeVier = \relative f' {
%	\override NoteHead #'color = #darkgreen
	s2. s4 | %66
        ges \voiceTwo f8 fes es4 \voiceFour es' | %67
	e dis8 d cis2 | %68
	s2. \clef bass s4 | %69
	s2.
}

stimmeFuenf = \relative ges {
%	\override NoteHead #'color = #darkred
	ges4\( f8 fes es4\) f | %66
	<d as'>2 <g des'> | %67
	<his fis'>2 <h cis eis>2 | %68
	s4 <gis, gis'> <a f' a> cis4 | %69
	ais2 s
	
}

stimmeSechs = \relative b, {
%	\override NoteHead #'color = #darkblue
	<b d>4 r <a es'>2 | %66
	b4 r es r | %67
	gis4 s <f, h f'>2 | %68
	<fis ais fis' ais>2 <f, f' h cis>2 | %69
	<fis fis'> <f f'> | %70
	<fis fis'> <f f'>
}

stimmeSieben = \relative cis' {
%	\override NoteHead #'color = #darkcyan
	s1*2 | %66
	s2. cis4 | %67
	s1 | %68
	s4 gis, a gis8 g | %69
	fis4 g a g?8 f? | %70
}

stimmeAcht = \relative gis {
%	\override NoteHead #'color = #darkmagenta
	s1*2 | %66
	s4 gis4 a gis8 g | %67
	s2. gis,8 g
	
}

upper = {
	\time 4/4
	\key des \major
	\clef treble
	<<
	\new Voice {
		\voiceOne 
		\stimmeEins
	}
	\new Voice {
		\voiceTwo
		\stimmeZwei
	}
	\new Voice {
		\voiceThree
		\stimmeDrei
	}
	\new Voice {
		\voiceFour
		\stimmeVier
	}
	>>
}
lower = {
	\time 4/4
	\key des \major
	\clef bass
	<<
		\stimmeFuenf \\
		\stimmeSechs \\
		\stimmeSieben \\
		\stimmeAcht
	>>
}

\score {
	<<
	\new Voice = "melodie" <<
		\set Staff.instrumentName = #"Bar."
		\stimme
	>>
	\new Lyrics \lyricsto "melodie" \text
	\new PianoStaff <<
		\set PianoStaff.instrumentName = #"Orch."
		\new Staff = "upper" \upper
		\new Staff = "lower" \lower
	>>
	>>
  \layout { 
  	  \context {
  	  	  \Staff
  	  	  	extraNatural = ##f
  	  }
  }
  \midi { }
}
