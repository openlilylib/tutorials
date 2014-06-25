\version "2.16.1"

% -*-
% indent-tabs: yes;
% indent-width: 8;

%%%%% to place the bass drum and cymbal notes on the line in single-line staves
#(define mybassdrum '((bassdrum default #t 0)))
#(define mycymbals '((crashcymbal default #t 0)))

\header {
	title = \markup \center-column { \fontsize #4 "Jupiter, the Bringer of Jollity" \vspace #1 }
 	composer = "Gustav Holst"
}

\language "nederlands"

%%%%% Include Global Parameters
\include "../../Definitions/MyDefinitions.ly"
\include "../../Definitions/MyPersonalSettings.ly"
\include "../JupiterMetrics.ly"
\include "JupiterPartInstrumentHeadings.ly"

%%% %% Include Instruments
\include "../PiccoloOne.ly"
\include "../PiccoloTwo.ly"
\include "../FluteOne.ly"
\include "../FluteTwo.ly"
\include "../OboeOne.ly"
\include "../OboeTwo.ly"
\include "../OboeThree.ly"
\include "../EnglishHorn.ly"
\include "../ClarinetOne.ly"
\include "../ClarinetTwo.ly"
\include "../ClarinetThree.ly"
\include "../BassClarinet.ly"
\include "../BassoonOne.ly"
\include "../BassoonTwo.ly"
\include "../BassoonThree.ly"
\include "../DoubleBassoon.ly"
\include "../HornOne.ly"
\include "../HornTwo.ly"
\include "../HornThree.ly"
\include "../HornFour.ly"
\include "../HornFive.ly"
\include "../HornSix.ly"
\include "../TrumpetOne.ly"
\include "../TrumpetTwo.ly"
\include "../TrumpetThree.ly"
\include "../TrumpetFour.ly"
\include "../TromboneOne.ly"
\include "../TromboneTwo.ly"
\include "../TromboneThree.ly"
\include "../TubaOne.ly"
\include "../TubaTwo.ly"
\include "../TimpaniOne.ly"
\include "../TimpaniTwo.ly"
\include "../Triangle.ly"
\include "../Tambourine.ly"
\include "../Cymbals.ly"
\include "../BassDrum.ly"
\include "../Glockenspiel.ly"
\include "../HarpOne.ly"
\include "../HarpTwo.ly"
\include "../ViolinOne.ly"
\include "../ViolinTwo.ly"
\include "../Viola.ly"
\include "../Cello.ly"
\include "../DoubleBass.ly"

\addQuote "Horns" { \HornOne }

%%%%% PiccoloOne
\book {
	\bookOutputSuffix "Piccolo One"
	\score {
		<<
			\override Score.BarNumber #'break-visibility = ##(#f #t #t)
			\new Staff = "piccolo 1" <<
				\compressFullBarRests % this function will only work if you write full bar rests like this: 1*8
				\removeWithTag #'inscore { 
					\Metrics
					\PiccoloOneHeading
					\transpose c c, { << \PiccoloOne \PiccoloOneMarks >> }
				}
			>>
		>>
		\layout { }
	}
	\paper { 
		indent = 5\cm
		top-margin = 1.5\cm
	}
}

%%%%% PiccoloTwo
\book {
	\bookOutputSuffix "Piccolo Two"
	\score {
		<<
			\override Score.BarNumber #'break-visibility = ##(#f #t #t)
			\new Staff = "piccolo 2" <<
				\compressFullBarRests % this function will only work if you write full bar rests like this: 1*8
				\removeWithTag #'inscore { 
					\Metrics
					\PiccoloTwoHeading
					\transpose c c, { << \PiccoloTwo \PiccoloTwoMarks >> }
				}
			>>
		>>
		\layout { }
	}
	\paper { 
		indent = 5\cm
		top-margin = 1.5\cm
	}
}

%%%%% FluteOne
\book {
	\bookOutputSuffix "Flute One"
	\score {
		<<
			\override Score.BarNumber #'break-visibility = ##(#f #t #t)
			\new Staff = "flute 1" <<
				\compressFullBarRests
				\removeWithTag #'inscore { 
					\Metrics
					\FluteOneHeading
					<< \FluteOne \FluteOneMarks >>
				}
			>>
		>>
		\layout { }
	}
	\paper { 
		indent = 5\cm
		top-margin = 1.5\cm
	}
}

%%%%% FluteTwo
\book {
	\bookOutputSuffix "Flute Two"
	\score {
		<<
			\override Score.BarNumber #'break-visibility = ##(#f #t #t)
			\new Staff = "flute 2" <<
				\compressFullBarRests
				\removeWithTag #'inscore { 
					\Metrics
					\FluteTwoHeading
					<< \FluteTwo \FluteTwoMarks >>
				}
			>>
		>>
		\layout { }
	}
	\paper { 
		indent = 5\cm
		top-margin = 1.5\cm
	}
}

%%%%% OboeOne
\book {
	\bookOutputSuffix "Oboe One"
	\score {
		<<
			\override Score.BarNumber #'break-visibility = ##(#f #t #t)
			\new Staff = "oboe 1" <<
				\compressFullBarRests
				\removeWithTag #'inscore { 
					\Metrics
					\OboeOneHeading
					<< \OboeOne \OboeOneMarks >>
				}
			>>
		>>
		\layout { }
	}
	\paper { 
		indent = 5\cm
		top-margin = 1.5\cm
	}
}

%%%%% OboeTwo
\book {
	\bookOutputSuffix "Oboe Two"
	\score {
		<<
			\override Score.BarNumber #'break-visibility = ##(#f #t #t)
			\new Staff = "oboe 2" <<
				\compressFullBarRests
				\removeWithTag #'inscore { 
					\Metrics
					\OboeTwoHeading
					<< \OboeTwo \OboeTwoMarks >>
				}
			>>
		>>
		\layout { }
	}
	\paper { 
		indent = 5\cm
		top-margin = 1.5\cm
	}
}

%%%%% OboeThree
\book {
	\bookOutputSuffix "Oboe Three"
	\score {
		<<
			\override Score.BarNumber #'break-visibility = ##(#f #t #t)
			\new Staff = "oboe 3" <<
				\compressFullBarRests
				\removeWithTag #'inscore { 
					\Metrics
					\OboeThreeHeading
					\OboeThree
				}
			>>
		>>
		\layout { }
	}
	\paper { 
		indent = 5\cm
		top-margin = 1.5\cm
	}
}

%%%%% EnglishHorn
\book {
	\bookOutputSuffix "English Horn"
	\score {
		<<
			\override Score.BarNumber #'break-visibility = ##(#f #t #t)
			\new Staff = "english horn" <<
				\compressFullBarRests
				\removeWithTag #'inscore { 
					\Metrics
					\EnglishHornHeading
					\transpose c g { \EnglishHorn }
				}
			>>
		>>
		\layout { }
	}
	\paper { 
		indent = 5\cm
		top-margin = 1.5\cm
	}
}

%%%%% ClarinetOne
\book {
	\bookOutputSuffix "Clarinet One"
	\score {
		<<
			\override Score.BarNumber #'break-visibility = ##(#f #t #t)
			\new Staff = "clarinet 1" <<
				\compressFullBarRests % this function will only work if you write full bar rests like this: 1*8
				\removeWithTag #'inscore { 
					\Metrics
					\ClarinetOneHeading
					\transpose c d { << \ClarinetOne \ClarinetOneMarks >> } 
				}
			>>
		>>
		\layout { }
	}
	\paper { 
		indent = 5\cm
		top-margin = 1.5\cm
	}
}

%%%%% ClarinetTwo
\book {
	\bookOutputSuffix "Clarinet Two"
	\score {
		<<
			\override Score.BarNumber #'break-visibility = ##(#f #t #t)
			\new Staff = "clarinet 2" <<
				\compressFullBarRests % this function will only work if you write full bar rests like this: 1*8
				\removeWithTag #'inscore { 
					\Metrics
					\ClarinetTwoHeading
					\transpose c d { << \ClarinetTwo \ClarinetTwoMarks >> }
				}
			>>
		>>
		\layout { }
	}
	\paper { 
		indent = 5\cm
		top-margin = 1.5\cm
	}
}

%%%%% ClarinetThree
\book {
	\bookOutputSuffix "Clarinet Three"
	\score {
		<<
			\override Score.BarNumber #'break-visibility = ##(#f #t #t)
			\new Staff = "clarinet 3" <<
				\compressFullBarRests % this function will only work if you write full bar rests like this: 1*8
				\removeWithTag #'inscore { 
					\Metrics
					\ClarinetThreeHeading
					\transpose c d { \ClarinetThree }
				}
			>>
		>>
		\layout { }
	}
	\paper { 
		indent = 5\cm
		top-margin = 1.5\cm
	}
}

%%%%% BassClarinet
\book {
	\bookOutputSuffix "Bass Clarinet"
	\score {
		<<
			\override Score.BarNumber #'break-visibility = ##(#f #t #t)
			\new Staff = "bass clarinet" <<
				\compressFullBarRests
				\removeWithTag #'inscore { 
					\Metrics
					\BassClarinetHeading
					\transpose c d' { \BassClarinet }
				}
			>>
		>>
		\layout { }
	}
	\paper { 
		indent = 5\cm
		top-margin = 1.5\cm
	}
}

%%%%% BassoonOne
\book {
	\bookOutputSuffix "Bassoon One"
	\score {
		<<
			\override Score.BarNumber #'break-visibility = ##(#f #t #t)
			\new Staff = "bassoon 1" <<
				\compressFullBarRests % this function will only work if you write full bar rests like this: 1*8
				\removeWithTag #'inscore { 
					\Metrics
					\BassoonOneHeading
					<< \BassoonOne \BassoonOneMarks >>
				}
			>>
		>>
		\layout { }
	}
	\paper { 
		indent = 5\cm
		top-margin = 1.5\cm
	}
}

%%%%% BassoonTwo
\book {
	\bookOutputSuffix "Bassoon Two"
	\score {
		<<
			\override Score.BarNumber #'break-visibility = ##(#f #t #t)
			\new Staff = "bassoon 2" <<
				\compressFullBarRests % this function will only work if you write full bar rests like this: 1*8
				\removeWithTag #'inscore { 
					\Metrics
					\BassoonTwoHeading
					<< \BassoonTwo \BassoonTwoMarks >>
				}
			>>
		>>
		\layout { }
	}
	\paper { 
		indent = 5\cm
		top-margin = 1.5\cm
	}
}

%%%%% BassoonOne
\book {
	\bookOutputSuffix "Bassoon Three"
	\score {
		<<
			\override Score.BarNumber #'break-visibility = ##(#f #t #t)
			\new Staff = "bassoon 3" <<
				\compressFullBarRests % this function will only work if you write full bar rests like this: 1*8
				\removeWithTag #'inscore { 
					\Metrics
					\BassoonThreeHeading
					\BassoonThree
				}
			>>
		>>
		\layout { }
	}
	\paper { 
		indent = 5\cm
		top-margin = 1.5\cm
	}
}

%%%%% DoubleBassoon
\book {
	\bookOutputSuffix "Double Bassoon"
	\score {
		<<
			\override Score.BarNumber #'break-visibility = ##(#f #t #t)
			\new Staff = "double bassoon" <<
				\compressFullBarRests
				\removeWithTag #'inscore { 
					\Metrics
					\DoubleBassoonHeading
					\transpose c c' { \DoubleBassoon }
				}
			>>
		>>
		\layout { }
	}
	\paper { 
		indent = 5\cm
		top-margin = 1.5\cm
	}
}

%%%%% HornOne
\book {
	\bookOutputSuffix "Horn One"
	\score {
		<<
			\override Score.BarNumber #'break-visibility = ##(#f #t #t)
			\new Staff = "horn 1" <<
				\compressFullBarRests % this function will only work if you write full bar rests like this: 1*8
				\removeWithTag #'inscore { 
					\Metrics
					\HornOneHeading
					\transpose c g { << \HornOne \HornOneMarks >> }
				}
			>>
		>>
		\layout { }
	}
	\paper { 
		indent = 5\cm
		top-margin = 1.5\cm
	}
}

%%%%% HornTwo
\book {
	\bookOutputSuffix "Horn Two"
	\score {
		<<
			\override Score.BarNumber #'break-visibility = ##(#f #t #t)
			\new Staff = "horn 2" <<
				\compressFullBarRests % this function will only work if you write full bar rests like this: 1*8
				\removeWithTag #'inscore { 
					\Metrics
					\HornTwoHeading
					\transpose c g { << \HornTwo \HornTwoMarks >> }
				}
			>>
		>>
		\layout { }
	}
	\paper { 
		indent = 5\cm
		top-margin = 1.5\cm
	}
}

%%%%% HornThree
\book {
	\bookOutputSuffix "Horn One"
	\score {
		<<
			\override Score.BarNumber #'break-visibility = ##(#f #t #t)
			\new Staff = "horn 3" <<
				\compressFullBarRests % this function will only work if you write full bar rests like this: 1*8
				\removeWithTag #'inscore { 
					\Metrics
					\HornOneHeading
					\transpose c g { << \HornThree \HornThreeMarks >> }
				}
			>>
		>>
		\layout { }
	}
	\paper { 
		indent = 5\cm
		top-margin = 1.5\cm
	}
}

%%%%% HornFour
\book {
	\bookOutputSuffix "Horn Four"
	\score {
		<<
			\override Score.BarNumber #'break-visibility = ##(#f #t #t)
			\new Staff = "horn 4" <<
				\compressFullBarRests % this function will only work if you write full bar rests like this: 1*8
				\removeWithTag #'inscore { 
					\Metrics
					\HornFourHeading
					\transpose c g { << \HornFour \HornFourMarks >> }
				}
			>>
		>>
		\layout { }
	}
	\paper { 
		indent = 5\cm
		top-margin = 1.5\cm
	}
}

%%%%% HornFive
\book {
	\bookOutputSuffix "Horn Five"
	\score {
		<<
			\override Score.BarNumber #'break-visibility = ##(#f #t #t)
			\new Staff = "horn 5" <<
				\compressFullBarRests % this function will only work if you write full bar rests like this: 1*8
				\removeWithTag #'inscore { 
					\Metrics
					\HornFiveHeading
					\transpose c g { << \HornFive \HornFiveMarks >> }
				}
			>>
		>>
		\layout { }
	}
	\paper { 
		indent = 5\cm
		top-margin = 1.5\cm
	}
}

%%%%% HornSix
\book {
	\bookOutputSuffix "Horn Six"
	\score {
		<<
			\override Score.BarNumber #'break-visibility = ##(#f #t #t)
			\new Staff = "horn 6" <<
				\compressFullBarRests % this function will only work if you write full bar rests like this: 1*8
				\removeWithTag #'inscore { 
					\Metrics
					\HornSixHeading
					\transpose c g { << \HornSix \HornSixMarks >> }
				}
			>>
		>>
		\layout { }
	}
	\paper { 
		indent = 5\cm
		top-margin = 1.5\cm
	}
}

%%%%% TrumpetOne
\book {
	\bookOutputSuffix "Trumpet One"
	\score {
		<<
			\override Score.BarNumber #'break-visibility = ##(#f #t #t)
			\new Staff = "trumpet 1" <<
				\compressFullBarRests % this function will only work if you write full bar rests like this: 1*8
				\removeWithTag #'inscore { 
					\Metrics
					\TrumpetOneHeading
					<< \TrumpetOne \TrumpetOneMarks >>
				}
			>>
		>>
		\layout { }
	}
	\paper { 
		indent = 5\cm
		top-margin = 1.5\cm
	}
}

%%%%% TrumpetTwo
\book {
	\bookOutputSuffix "Trumpet Two"
	\score {
		<<
			\override Score.BarNumber #'break-visibility = ##(#f #t #t)
			\new Staff = "trumpet 2" <<
				\compressFullBarRests % this function will only work if you write full bar rests like this: 1*8
				\removeWithTag #'inscore { 
					\Metrics
					\TrumpetTwoHeading
					<< \TrumpetTwo \TrumpetTwoMarks >>
				}
			>>
		>>
		\layout { }
	}
	\paper { 
		indent = 5\cm
		top-margin = 1.5\cm
	}
}

%%%%% TrumpetThree
\book {
	\bookOutputSuffix "Trumpet Three"
	\score {
		<<
			\override Score.BarNumber #'break-visibility = ##(#f #t #t)
			\new Staff = "trumpet 3" <<
				\compressFullBarRests % this function will only work if you write full bar rests like this: 1*8
				\removeWithTag #'inscore { 
					\Metrics
					\TrumpetThreeHeading
					<< \TrumpetThree \TrumpetThreeMarks >>
				}
			>>
		>>
		\layout { }
	}
	\paper { 
		indent = 5\cm
		top-margin = 1.5\cm
	}
}

%%%%% TrumpetFour
\book {
	\bookOutputSuffix "Trumpet Four"
	\score {
		<<
			\override Score.BarNumber #'break-visibility = ##(#f #t #t)
			\new Staff = "trumpet 4" <<
				\compressFullBarRests % this function will only work if you write full bar rests like this: 1*8
				\removeWithTag #'inscore { 
					\Metrics
					\TrumpetFourHeading
					<< \TrumpetFour \TrumpetFourMarks >>
				}
			>>
		>>
		\layout { }
	}
	\paper { 
		indent = 5\cm
		top-margin = 1.5\cm
	}
}

%%%%% TromboneOne
\book {
	\bookOutputSuffix "Trombone One"
	\score {
		<<
			\override Score.BarNumber #'break-visibility = ##(#f #t #t)
			\new Staff = "trombone 1" <<
				\compressFullBarRests % this function will only work if you write full bar rests like this: 1*8
				\removeWithTag #'inscore { 
					\Metrics
					\TromboneOneHeading
					<< \TromboneOne \TromboneOneMarks >>
				}
			>>
		>>
		\layout { }
	}
	\paper { 
		indent = 5\cm
		top-margin = 1.5\cm
	}
}

%%%%% TromboneTwo
\book {
	\bookOutputSuffix "Trombone Two"
	\score {
		<<
			\override Score.BarNumber #'break-visibility = ##(#f #t #t)
			\new Staff = "trombone 2" <<
				\compressFullBarRests % this function will only work if you write full bar rests like this: 1*8
				\removeWithTag #'inscore { 
					\Metrics
					\TromboneTwoHeading
					<< \TromboneTwo \TromboneTwoMarks >>
				}
			>>
		>>
		\layout { }
	}
	\paper { 
		indent = 5\cm
		top-margin = 1.5\cm
	}
}

%%%%% TromboneThree
\book {
	\bookOutputSuffix "Trombone One"
	\score {
		<<
			\override Score.BarNumber #'break-visibility = ##(#f #t #t)
			\new Staff = "trombone 3" <<
				\compressFullBarRests % this function will only work if you write full bar rests like this: 1*8
				\removeWithTag #'inscore { 
					\Metrics
					\TromboneThreeHeading
					\TromboneThree
				}
			>>
		>>
		\layout { }
	}
	\paper { 
		indent = 5\cm
		top-margin = 1.5\cm
	}
}

%%%%% TubaOne
\book {
	\bookOutputSuffix "Tuba One"
	\score {
		<<
			\override Score.BarNumber #'break-visibility = ##(#f #t #t)
			\new Staff = "tuba 1" <<
				\compressFullBarRests % this function will only work if you write full bar rests like this: 1*8
				\removeWithTag #'inscore { 
					\Metrics
					\TubaOneHeading
					<< \TubaOne \TubaOneMarks >>
				}
			>>
		>>
		\layout { }
	}
	\paper { 
		indent = 5\cm
		top-margin = 1.5\cm
	}
}

%%%%% TubaTwo
\book {
	\bookOutputSuffix "Tuba Two"
	\score {
		<<
			\override Score.BarNumber #'break-visibility = ##(#f #t #t)
			\new Staff = "tuba 2" <<
				\compressFullBarRests % this function will only work if you write full bar rests like this: 1*8
				\removeWithTag #'inscore { 
					\Metrics
					\TubaTwoHeading
					<< \TubaTwo \TubaTwoMarks >>
				}
			>>
		>>
		\layout { }
	}
	\paper { 
		indent = 5\cm
		top-margin = 1.5\cm
	}
}

%%%%% TimpaniOne
\book {
	\bookOutputSuffix "Timpani One"
	\score {
		<<
			\override Score.BarNumber #'break-visibility = ##(#f #t #t)
			\new Staff = "timpani 1" <<
				\compressFullBarRests % this function will only work if you write full bar rests like this: 1*8
				\removeWithTag #'inscore { 
					\Metrics
					\TimpaniOneHeading
					\TimpaniOne
				}
			>>
		>>
		\layout { }
	}
	\paper { 
		indent = 5\cm
		top-margin = 1.5\cm
	}
}

%%%%% TimpaniTwo
\book {
	\bookOutputSuffix "Timpani Two"
	\score {
		<<
			\override Score.BarNumber #'break-visibility = ##(#f #t #t)
			\new Staff = "timpani 2" <<
				\compressFullBarRests % this function will only work if you write full bar rests like this: 1*8
				\removeWithTag #'inscore { 
					\Metrics
					\TimpaniTwoHeading
					\TimpaniTwo
				}
			>>
		>>
		\layout { }
	}
	\paper { 
		indent = 5\cm
		top-margin = 1.5\cm
	}
}

%%%%% Triangle
\book {
	\bookOutputSuffix "Bass Drum"
	\score {
		<<
			\override Score.BarNumber #'break-visibility = ##(#f #t #t)
			\new DrumStaff = "triangle" \with { \override StaffSymbol #'line-count = #'1 } <<
				\compressFullBarRests % this function will only work if you write full bar rests like this: 1*8
				\removeWithTag #'inscore { 
					\Metrics
					\TriangleHeading
					\Triangle
				}
			>>
		>>
		\layout { }
	}
	\paper { 
		indent = 5\cm
		top-margin = 1.5\cm
	}
}

%%%%% Tambourine
\book {
	\bookOutputSuffix "Tambourine"
	\score {
		<<
			\override Score.BarNumber #'break-visibility = ##(#f #t #t)
			\new DrumStaff = "tambourine" \with { \override StaffSymbol #'line-count = #'1 } <<
				\compressFullBarRests % this function will only work if you write full bar rests like this: 1*8
				\removeWithTag #'inscore { 
					\Metrics
					\TambourineHeading
					\Tambourine
				}
			>>
		>>
		\layout { }
	}
	\paper { 
		indent = 5\cm
		top-margin = 1.5\cm
	}
}

%%%%% Cymbals
\book {
	\bookOutputSuffix "Cymbals"
	\score {
		<<
			\override Score.BarNumber #'break-visibility = ##(#f #t #t)
			\new DrumStaff = "cymbals" \with { \override StaffSymbol #'line-count = #'1 } <<
				\compressFullBarRests % this function will only work if you write full bar rests like this: 1*8
				\removeWithTag #'inscore { 
					\Metrics
					\CymbalsHeading
					\Cymbals
				}
			>>
		>>
		\layout { }
	}
	\paper { 
		indent = 5\cm
		top-margin = 1.5\cm
	}
}


%%%%% BassDrum
\book {
	\bookOutputSuffix "Bass Drum"
	\score {
		<<
			\override Score.BarNumber #'break-visibility = ##(#f #t #t)
			\new DrumStaff = "bass drum" \with { \override StaffSymbol #'line-count = #'1 } <<
				\compressFullBarRests % this function will only work if you write full bar rests like this: 1*8
				\removeWithTag #'inscore { 
					\Metrics
					\BassDrumHeading
					\BassDrum
				}
			>>
		>>
		\layout { }
	}
	\paper { 
		indent = 5\cm
		top-margin = 1.5\cm
	}
}

%%%%% Glockenspiel
\book {
	\bookOutputSuffix "Glockenspiel"
	\score {
		<<
			\override Score.BarNumber #'break-visibility = ##(#f #t #t)
			\new Staff = "glockenspiel" <<
				\compressFullBarRests % this function will only work if you write full bar rests like this: 1*8
				\removeWithTag #'inscore { 
					\Metrics
					\GlockenspielHeading
					\transpose c c,, { \Glockenspiel }
				}
			>>
		>>
		\layout { }
	}
	\paper { 
		indent = 5\cm
		top-margin = 1.5\cm
	}
}

%%%%% HarpOne
\book {
	\bookOutputSuffix "Harp One"
	\score {
		<<
			\override Score.BarNumber #'break-visibility = ##(#f #t #t)
			\new PianoStaff \with { \HarpOneHeading \KeyboardStaffSpacing } <<
				\new Staff = "HarpOneRH" << \removeWithTag #'inscore { \Metrics \HarpOneRH } >>
				\new Dynamics = "harp 1 dynamics" { \KeyboardCenteredDynamics \HarpOneDynamics }
				\new Staff = "HarpOneLH" << \removeWithTag #'inpart { \HarpOneLH } >>
			>>
		>>
		\layout { }
	}
	\paper { 
		indent = 5\cm
		top-margin = 1.5\cm
	}
}

%%%%% HarpTwo
\book {
	\bookOutputSuffix "Harp Two"
	\score {
		<<
			\override Score.BarNumber #'break-visibility = ##(#f #t #t)
			\new PianoStaff \with { \HarpTwoHeading \KeyboardStaffSpacing } <<
				\new Staff = "HarpTwoRH" << \removeWithTag #'inscore { \Metrics \HarpTwoRH } >>
				\new Dynamics = "harp 2 dynamics" { \KeyboardCenteredDynamics \HarpTwoDynamics }
				\new Staff = "HarpTwoLH" << \removeWithTag #'inpart { \HarpTwoLH } >>
			>>
		>>
		\layout { }
	}
	\paper { 
		indent = 5\cm
		top-margin = 1.5\cm
	}
}

%%%%% ViolinOne
\book {
	\bookOutputSuffix "Violin One"
	\score {
		<<
			\override Score.BarNumber #'break-visibility = ##(#f #t #t)
			\new Staff = "violin 1" <<
				\compressFullBarRests % this function will only work if you write full bar rests like this: 1*8
				\removeWithTag #'inscore { 
					\Metrics
					\ViolinOneHeading
					<< \ViolinOneA \ViolinOneB >>
				}
			>>
		>>
		\layout { }
	}
	\paper { 
		indent = 5\cm
		top-margin = 1.5\cm
	}
}

%%%%% ViolinTwo
\book {
	\bookOutputSuffix "Violin Two"
	\score {
		<<
			\override Score.BarNumber #'break-visibility = ##(#f #t #t)
			\new Staff = "violin 2" <<
				\compressFullBarRests % this function will only work if you write full bar rests like this: 1*8
				\removeWithTag #'inscore { 
					\Metrics
					\ViolinTwoHeading
					<< \ViolinTwoA \ViolinTwoB >>
				}
			>>
		>>
		\layout { }
	}
	\paper { 
		indent = 5\cm
		top-margin = 1.5\cm
	}
}

%%%%% Viola
\book {
	\bookOutputSuffix "Viola"
	\score {
		<<
			\override Score.BarNumber #'break-visibility = ##(#f #t #t)
			\new Staff = "viola" <<
				\compressFullBarRests % this function will only work if you write full bar rests like this: 1*8
				\removeWithTag #'inscore { 
					\Metrics
					\ViolaHeading
					<< \ViolaA \ViolaB >>
				}
			>>
		>>
		\layout { }
	}
	\paper { 
		indent = 5\cm
		top-margin = 1.5\cm
	}
}

%%%%% Cello
\book {
	\bookOutputSuffix "Cello"
	\score {
		<<
			\override Score.BarNumber #'break-visibility = ##(#f #t #t)
			\new Staff = "cello" <<
				\compressFullBarRests % this function will only work if you write full bar rests like this: 1*8
				\removeWithTag #'inscore { 
					\Metrics
					\VioloncelloHeading
					<< \CelloA \CelloB >>
				}
			>>
		>>
		\layout { }
	}
	\paper { 
		indent = 5\cm
		top-margin = 1.5\cm
	}
}

%%%%% DoubleBass
\book {
	\bookOutputSuffix "Double Bass"
	\score {
		<<
			\override Score.BarNumber #'break-visibility = ##(#f #t #t)
			\new Staff = "double bass" <<
				\compressFullBarRests % this function will only work if you write full bar rests like this: 1*8
				\removeWithTag #'inscore { 
					\Metrics
					\DoubleBassHeading
					\transpose c c' { << \DoubleBassA \DoubleBassB >> }
				}
			>>
		>>
		\layout { }
	}
	\paper { 
		indent = 5\cm
		top-margin = 1.5\cm
	}
}