\version "2.16.1"

% -*-
% indent-tabs: yes;
% indent-width: 8;

%%%%% to place the bass drum and cymbal notes on the line in single-line staves
#(define mycymbals '((crashcymbal default #t 0)))
#(define mybassdrum '((bassdrum default #t 0)))

#(set-global-staff-size 8)

\header {
	title = \markup \center-column { \fontsize #8 "Jupiter, the Bringer of Jollity" \vspace #1 }
 	composer = "Gustav Holst"
}

\language "nederlands"

%%%%% Include Global Parameters
\include "../Definitions/MyDefinitions.ly"
\include "../Definitions/MyPersonalSettings.ly"
\include "JupiterMetrics.ly"
\include "JupiterScoreInstrumentHeadings.ly"

%%% %% Include Instruments
\include "PiccoloOne.ly"
\include "PiccoloTwo.ly"
\include "FluteOne.ly"
\include "FluteTwo.ly"
\include "OboeOne.ly"
\include "OboeTwo.ly"
\include "OboeThree.ly"
\include "EnglishHorn.ly"
\include "ClarinetOne.ly"
\include "ClarinetTwo.ly"
\include "ClarinetThree.ly"
\include "BassClarinet.ly"
\include "BassoonOne.ly"
\include "BassoonTwo.ly"
\include "BassoonThree.ly"
\include "DoubleBassoon.ly"
\include "HornOne.ly"
\include "HornTwo.ly"
\include "HornThree.ly"
\include "HornFour.ly"
\include "HornFive.ly"
\include "HornSix.ly"
\include "TrumpetOne.ly"
\include "TrumpetTwo.ly"
\include "TrumpetThree.ly"
\include "TrumpetFour.ly"
\include "TromboneOne.ly"
\include "TromboneTwo.ly"
\include "TromboneThree.ly"
\include "TubaOne.ly"
\include "TubaTwo.ly"
\include "TimpaniOne.ly"
\include "TimpaniTwo.ly"
\include "Triangle.ly"
\include "Tambourine.ly"
\include "Cymbals.ly"
\include "BassDrum.ly"
\include "Glockenspiel.ly"
\include "HarpOne.ly"
\include "HarpTwo.ly"
\include "ViolinOne.ly"
\include "ViolinTwo.ly"
\include "Viola.ly"
\include "Cello.ly"
\include "DoubleBass.ly"

PartCombineTexts = { %%%%% this defines the way \partCombine texts to look like
	\set Staff.soloText = #"I"
	\set Staff.soloIIText = #"II"
	\set Staff.aDueText = #"a2"
}

\score {
	<<	
		\override Score.BarNumber #'break-visibility = ##(#f #t #t)
		%%%%% Woodwinds
		\new StaffGroup \with { \BracketinSingleStaff \WithinGroupSpacing } <<
			\new Staff = "piccolos" \with { \ShowEmptyStaves } << 
				\Metrics
				\PiccolosHeading
				\PartCombineTexts
				\removeWithTag #'inpart { 
					\killCues { \transpose c c, { \partcombine \PiccoloOne \PiccoloTwo } } }
				\removeWithTag #'inpart { \PiccoloOneMarks }
			>>
			\new Staff = "flutes" \with { \ShowEmptyStaves } << 
				\FlutesHeading
				\PartCombineTexts
				\removeWithTag #'inpart { 
					\killCues { \partcombine \FluteOne \FluteTwo } }
				\removeWithTag #'inpart { \FluteOneMarks }
			>>		
			\new StaffGroup \with { \OboesHeading \NoSquareinSingleStaff } <<
					\set StaffGroup.systemStartDelimiter = #'SystemStartSquare
					\new Staff = "oboes 1&2" \with { \ShowEmptyStaves } << 
						\set Staff.instrumentName = #"I-II "
						\set Staff.shortInstrumentName = #"I-II "
						\PartCombineTexts
						\removeWithTag #'inpart { \killCues { \partcombine \OboeOne \OboeTwo } }
						\removeWithTag #'inpart { \OboeOneMarks }
					>>
					\new Staff = "oboe 3" \with { \ShowEmptyStaves } << 
						\set Staff.instrumentName = #"III "
						\set Staff.shortInstrumentName = #"III "
						\removeWithTag #'inpart { 
							\killCues { \OboeThree } }
					>>		
			>>
			\new Staff = "english horn" \with { \ShowEmptyStaves } << 
				\EnglishHornHeading
				\removeWithTag #'inpart { \killCues { \transpose c g { \EnglishHorn } } }
			>>
			\new StaffGroup \with { \ClarinetsHeading \NoSquareinSingleStaff } <<
					\set StaffGroup.systemStartDelimiter = #'SystemStartSquare
					\new Staff = "clarinets 1&2" \with { \ShowEmptyStaves } << 
						\set Staff.instrumentName = #"I-II "
						\set Staff.shortInstrumentName = #"I-II "
						\PartCombineTexts
						\removeWithTag #'inpart { \killCues { 
							\transpose c d { \partcombine \ClarinetOne \ClarinetTwo } } }
						\removeWithTag #'inpart { \ClarinetOneMarks }
					>>
					\new Staff = "clarinet 3" \with { \ShowEmptyStaves } << 
						\set Staff.instrumentName = #"III "
						\set Staff.shortInstrumentName = #"III "
						\removeWithTag #'inpart { 
							\killCues { \transpose c d { \ClarinetThree } } }
					>>		
			>>
			\new Staff = "bass clarinet" \with { \ShowEmptyStaves } << 
				\BassClarinetHeading
				\removeWithTag #'inpart { \killCues { \transpose c d' { \BassClarinet } } }
			>>
			\new StaffGroup \with { \BassoonsHeading \NoSquareinSingleStaff } <<
					\set StaffGroup.systemStartDelimiter = #'SystemStartSquare
					\new Staff = "bassoons 1&2" \with { \ShowEmptyStaves } << 
						\set Staff.instrumentName = #"I-II "
						\set Staff.shortInstrumentName = #"I-II "
						\PartCombineTexts
						\removeWithTag #'inpart { \killCues { \partcombine \BassoonOne \BassoonTwo } }
						\removeWithTag #'inpart { \BassoonOneMarks }
					>>
					\new Staff = "bassoon 3" \with { \ShowEmptyStaves } << 
						\set Staff.instrumentName = #"III "
						\set Staff.shortInstrumentName = #"III "
						\removeWithTag #'inpart { \killCues { \BassoonThree } }
					>>
			>>
			\new Staff = "double bassoon" \with { \ShowEmptyStaves } << 
				\DoubleBassoonHeading
				\removeWithTag #'inpart { \killCues { \transpose c c' { \DoubleBassoon } } }
			>>
		>>
		%%%%% Brass
		\new StaffGroup \with { \BracketinSingleStaff \WithinGroupSpacing } <<
			\new StaffGroup \with { \HornsHeading } <<
				\set StaffGroup.systemStartDelimiter = #'SystemStartSquare
				\new Staff = "horns 1&2" \with { \ShowEmptyStaves } << 
					\set Staff.instrumentName = #"I-II " 
					\set Staff.shortInstrumentName = #"I-II "
					\PartCombineTexts
					\removeWithTag #'inpart { \killCues { 
						\transpose c g { \partcombine \HornOne \HornTwo } } }
					\removeWithTag #'inpart { \HornOneMarks }
				>>
				\new Staff = "horns 3&4" \with { \ShowEmptyStaves } << 
					\set Staff.instrumentName = #"III-IV " 
					\set Staff.shortInstrumentName = #"III-IV "
					\PartCombineTexts
					\removeWithTag #'inpart { \killCues { 
						\transpose c g { \partcombine \HornThree \HornFour } } }
					\removeWithTag #'inpart { \HornThreeMarks }
				>>
				\new Staff = "horns 5&6" \with { \ShowEmptyStaves } << 
					\set Staff.instrumentName = #"V-VI " 
					\set Staff.shortInstrumentName = #"V-VI "
					\PartCombineTexts
					\removeWithTag #'inpart { \killCues { 
						\transpose c g { \partcombine \HornFive \HornSix } } }
					\removeWithTag #'inpart { \HornFiveMarks }
				>>
			>>
			\new StaffGroup \with { \TrumpetsHeading \NoSquareinSingleStaff } <<
					\set StaffGroup.systemStartDelimiter = #'SystemStartSquare
					\new Staff = "trumpets 1&2" \with { \ShowEmptyStaves } << 
						\set Staff.instrumentName = #"I-II "
						\set Staff.shortInstrumentName = #"I-II "
						\PartCombineTexts
						\removeWithTag #'inpart { \killCues { \partcombine \TrumpetOne \TrumpetTwo } }
						\removeWithTag #'inpart { \TrumpetOneMarks }
					>>
					\new Staff = "trumpets 3&4" \with { \ShowEmptyStaves } << 
						\set Staff.instrumentName = #"III-IV "
						\set Staff.shortInstrumentName = #"III-IV "
						\PartCombineTexts
						\removeWithTag #'inpart { \killCues { \partcombine \TrumpetThree \TrumpetFour } }
						\removeWithTag #'inpart { \TrumpetThreeMarks }
					>>
			>>
			\new StaffGroup \with { \TrombonesHeading \NoSquareinSingleStaff } <<
					\set StaffGroup.systemStartDelimiter = #'SystemStartSquare
					\new Staff = "trombones 1&2" \with { \ShowEmptyStaves } << 
						\set Staff.instrumentName = #"I-II "
						\set Staff.shortInstrumentName = #"I-II "
						\PartCombineTexts
						\removeWithTag #'inpart { \killCues { \partcombine \TromboneOne \TromboneTwo } }
						\removeWithTag #'inpart { \TromboneOneMarks }
					>>
					\new Staff = "trombone 3" \with { \ShowEmptyStaves } << 
						\set Staff.instrumentName = #"III "
						\set Staff.shortInstrumentName = #"III "
						\removeWithTag #'inpart { \killCues { \TromboneThree } }
					>>
			>>
			\new Staff = "tubas" \with { \ShowEmptyStaves } << 
				\TubasHeading
				\PartCombineTexts
				\removeWithTag #'inpart { \killCues { \partcombine \TubaOne \TubaTwo } }
				\removeWithTag #'inpart { \TubaOneMarks }
			>>
		>>
		%%%%% Percussion
		\new StaffGroup \with { \TimpaniHeading \BracketinSingleStaff \BetweenGroupSpacing } <<
					\set StaffGroup.systemStartDelimiter = #'SystemStartSquare
					\new Staff = "timpani 1" \with { \ShowEmptyStaves } << 
						\set Staff.instrumentName = #"I "
						\set Staff.shortInstrumentName = #"I "
						\removeWithTag #'inpart { \killCues { \TimpaniOne } }
					>>
					\new Staff = "timpani 2" \with { \ShowEmptyStaves } << 
						\set Staff.instrumentName = #"II "
						\set Staff.shortInstrumentName = #"II "
						\removeWithTag #'inpart { \killCues { \TimpaniTwo } }
					>>
		>>
		\new StaffGroup  \with { \BracketinSingleStaff \BetweenGroupSpacing } <<
			\new DrumStaff = "triangle" \with {
				\HideEmptyStaves
				\override StaffSymbol #'line-count = #'1 } <<
				\TriangleHeading
				\removeWithTag #'inpart { \killCues { \Triangle } }
			>>
			\new DrumStaff = "tambourine" \with {
				\HideEmptyStaves
				\override StaffSymbol #'line-count = #'1 } <<
				\TambourineHeading
				\removeWithTag #'inpart { \killCues { \Tambourine } }
			>>
			\new DrumStaff = "cymbals" \with {
				\HideEmptyStaves
				\override StaffSymbol #'line-count = #'1 } <<
				\CymbalsHeading
				\removeWithTag #'inpart { \killCues { \Cymbals } }
			>>
			\new DrumStaff = "bass drum" \with {
				\HideEmptyStaves
				\override StaffSymbol #'line-count = #'1 } <<
				\BassDrumHeading
				\removeWithTag #'inpart { \killCues { \BassDrum } }
			>>
		>>
		\new StaffGroup  \with { \BracketinSingleStaff \BetweenGroupSpacing } <<
			\new Staff = "glockenspiel" \with { \HideEmptyStaves } <<
				\GlockenspielHeading
				\removeWithTag #'inpart { \killCues { \transpose c c,, { \Glockenspiel } } }
			>>
		>>
		%%%%% Harps
		\new PianoStaff \with { \HarpsHeading \KeyboardStaffSpacing \HideEmptyStaves } <<
			\new Staff = "HarpOneRH" \with { \HideEmptyStaves } << 
				\removeWithTag #'inpart { \killCues { \HarpOneRH } } >>
			\new Dynamics = "harp dynamics" { \KeyboardCenteredDynamics \HarpOneDynamics }
			\new Staff = "HarpOneLH" \with { \HideEmptyStaves } << 
				\removeWithTag #'inpart { \killCues { \HarpOneLH } } >>
		>>
		%%%%% Strings
		\new StaffGroup \with { \WithinGroupSpacing } <<
			\new StaffGroup \with { \ViolinsHeading } <<
					\set StaffGroup.systemStartDelimiter = #'SystemStartBrace
					\new Staff = "violin I" \with { 
					\consists "Bar_number_engraver"
					\consists "Metronome_mark_engraver"
					\override BarNumber #'break-visibility = ##(#f #t #f)
					\ShowEmptyStaves } << 
						\set Staff.instrumentName = #"I "
						\set Staff.shortInstrumentName = #"I "
						\Metrics 
						\removeWithTag #'inpart { \killCues { << \ViolinOneA \ViolinOneB >> } }
					>>
				\new Staff = "violin II" \with { \ShowEmptyStaves } << 
					\set Staff.instrumentName = #"II "
					\set Staff.shortInstrumentName = #"II "
					\removeWithTag #'inpart { \killCues { << \ViolinTwoA \ViolinTwoB >> } }
				>>
			>>
			\new Staff = "viola" \with { \ShowEmptyStaves } << 
				\ViolaHeading 
				\removeWithTag #'inpart { \killCues { << \ViolaA \ViolaB >> } }
			>>
			\new Staff = "cello" \with { \ShowEmptyStaves } << 
				\VioloncelloHeading
				\removeWithTag #'inpart { \killCues { << \CelloA \CelloB >> } }
			>>
			\new Staff = "double bass" \with { \ShowEmptyStaves } << 
				\DoubleBassHeading 
				\removeWithTag #'inpart { \killCues { \transpose c c' { << \DoubleBassA \DoubleBassB >> } } }
			>>
		>>
	>>
	\layout {
		\context { \Staff \RemoveEmptyStaves }
		\context { \DrumStaff \RemoveEmptyStaves }
		\context { \Score
			   \override DynamicText #'extra-spacing-width = #'(-0.25 . 0.25)
			   \override NonMusicalPaperColumn #'line-break-permission = ##f
		}
  	}
	%\midi { \context { \Score midiChannelMapping = #'instrument } }
}

\paper {
	two-sided = ##t
	page-limit-inter-system-space = ##t
	page-limit-inter-system-space-factor = 1.3
	ragged-bottom = ##f
	ragged-last-bottom = ##f
	ragged-last = ##t
	indent = 1.2\cm
	short-indent = 0.8\cm
	top-margin = 1.5\cm
	inner-margin = 1.8\cm
	outer-margin = 1.2\cm
	bottom-margin = 0.5\cm
	last-bottom-spacing #'padding = #4
	last-bottom-spacing #'stretchability = #4
	max-systems-per-page = 1
	print-page-number = ##f
	tagline = ##f
}