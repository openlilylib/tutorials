\version "2.16.1"

% -*-
% indent-tabs: yes;
% indent-width: 8;

PiccoloOneHeading = {
	#(set-accidental-style 'modern)
	\override Staff.Accidental #'hide-tied-accidental-after-break = ##t
	\set Staff.instrumentName = #"Piccolo I "
	\set Staff.midiInstrument = "piccolo"
	\override Staff.InstrumentName #'self-alignment-X = #RIGHT
}

PiccoloTwoHeading = {
	#(set-accidental-style 'modern)
	\override Staff.Accidental #'hide-tied-accidental-after-break = ##t
	\set Staff.instrumentName = #"Piccolo II "
	\set Staff.midiInstrument = "piccolo"
	\override Staff.InstrumentName #'self-alignment-X = #RIGHT
}

FluteOneHeading = {
	#(set-accidental-style 'modern)
	\override Staff.Accidental #'hide-tied-accidental-after-break = ##t
	\set Staff.instrumentName = #"Flute I "
	\set Staff.midiInstrument = "flute"
	\override Staff.InstrumentName #'self-alignment-X = #RIGHT
}

FluteTwoHeading = {
	#(set-accidental-style 'modern)
	\override Staff.Accidental #'hide-tied-accidental-after-break = ##t
	\set Staff.instrumentName = #"Flute II "
	\set Staff.midiInstrument = "flute"
	\override Staff.InstrumentName #'self-alignment-X = #RIGHT
}

OboeOneHeading = {
	#(set-accidental-style 'modern)
	\override Staff.Accidental #'hide-tied-accidental-after-break = ##t
	\set Staff.instrumentName = #"Oboe I "
	\set Staff.midiInstrument = "oboe"
	\override Staff.InstrumentName #'self-alignment-X = #RIGHT
}

OboeTwoHeading = {
	#(set-accidental-style 'modern)
	\override Staff.Accidental #'hide-tied-accidental-after-break = ##t
	\set Staff.instrumentName = #"Oboe II "
	\set Staff.midiInstrument = "oboe"
	\override Staff.InstrumentName #'self-alignment-X = #RIGHT
}

OboeThreeHeading = {
	#(set-accidental-style 'modern)
	\override Staff.Accidental #'hide-tied-accidental-after-break = ##t
	\set Staff.instrumentName = #"Oboe III "
	\set Staff.midiInstrument = "oboe"
	\override Staff.InstrumentName #'self-alignment-X = #RIGHT
}

EnglishHornHeading = {
	#(set-accidental-style 'modern)
	\override Staff.Accidental #'hide-tied-accidental-after-break = ##t
	\set Staff.instrumentName = #"English Horn "
	\set Staff.midiInstrument = "english horn"
	\override Staff.InstrumentName #'self-alignment-X = #RIGHT
}

ClarinetOneHeading = {
	#(set-accidental-style 'modern)
	\override Staff.Accidental #'hide-tied-accidental-after-break = ##t
	\set Staff.instrumentName = \markup \concat { "Clarinet I in B " \smaller \flat " " }
	\set Staff.midiInstrument = "clarinet"
	\override Staff.InstrumentName #'self-alignment-X = #RIGHT
}

ClarinetTwoHeading = {
	#(set-accidental-style 'modern)
	\override Staff.Accidental #'hide-tied-accidental-after-break = ##t
	\set Staff.instrumentName = \markup \concat { "Clarinet II in B " \smaller \flat " " }
	\set Staff.midiInstrument = "clarinet"
	\override Staff.InstrumentName #'self-alignment-X = #RIGHT
}

ClarinetThreeHeading = {
	#(set-accidental-style 'modern)
	\override Staff.Accidental #'hide-tied-accidental-after-break = ##t
	\set Staff.instrumentName = \markup \concat { "Clarinet III in B " \smaller \flat " " }
	\set Staff.midiInstrument = "clarinet"
	\override Staff.InstrumentName #'self-alignment-X = #RIGHT
}

BassClarinetHeading = {
	#(set-accidental-style 'modern)
	\override Staff.Accidental #'hide-tied-accidental-after-break = ##t
	\set Staff.instrumentName = \markup \concat { "Bass Clarinet in B " \smaller \flat " " }
	\set Staff.midiInstrument = "clarinet"
	\override Staff.InstrumentName #'self-alignment-X = #RIGHT
}

BassoonOneHeading = {
	#(set-accidental-style 'modern)
	\override Staff.Accidental #'hide-tied-accidental-after-break = ##t
	\set Staff.instrumentName = #"Bassoon I "
	\set Staff.midiInstrument = "bassoon"
	\override Staff.InstrumentName #'self-alignment-X = #RIGHT
}

BassoonTwoHeading = {
	#(set-accidental-style 'modern)
	\override Staff.Accidental #'hide-tied-accidental-after-break = ##t
	\set Staff.instrumentName = #"Bassoon II "
	\set Staff.midiInstrument = "bassoon"
	\override Staff.InstrumentName #'self-alignment-X = #RIGHT
}

BassoonThreeHeading = {
	#(set-accidental-style 'modern)
	\override Staff.Accidental #'hide-tied-accidental-after-break = ##t
	\set Staff.instrumentName = #"Bassoon III "
	\set Staff.midiInstrument = "bassoon"
	\override Staff.InstrumentName #'self-alignment-X = #RIGHT
}

DoubleBassoonHeading = {
	#(set-accidental-style 'modern)
	\override Staff.Accidental #'hide-tied-accidental-after-break = ##t
	\set Staff.instrumentName = #"Double Bassoon "
	\set Staff.midiInstrument = "bassoon"
	\override Staff.InstrumentName #'self-alignment-X = #RIGHT
}

HornOneHeading = {
	#(set-accidental-style 'modern)
	\override Staff.Accidental #'hide-tied-accidental-after-break = ##t
	\set Staff.instrumentName = #"Horn I in F "
	\set Staff.midiInstrument = "french horn"
	\override Staff.InstrumentName #'self-alignment-X = #RIGHT
}

HornTwoHeading = {
	#(set-accidental-style 'modern)
	\override Staff.Accidental #'hide-tied-accidental-after-break = ##t
	\set Staff.instrumentName = #"Horn II in F "
	\set Staff.midiInstrument = "french horn"
	\override Staff.InstrumentName #'self-alignment-X = #RIGHT
}

HornThreeHeading = {
	#(set-accidental-style 'modern)
	\override Staff.Accidental #'hide-tied-accidental-after-break = ##t
	\set Staff.instrumentName = #"Horn III in F "
	\set Staff.midiInstrument = "french horn"
	\override Staff.InstrumentName #'self-alignment-X = #RIGHT
}

HornFourHeading = {
	#(set-accidental-style 'modern)
	\override Staff.Accidental #'hide-tied-accidental-after-break = ##t
	\set Staff.instrumentName = #"Horn IV in F "
	\set Staff.midiInstrument = "french horn"
	\override Staff.InstrumentName #'self-alignment-X = #RIGHT
}

HornFiveHeading = {
	#(set-accidental-style 'modern)
	\override Staff.Accidental #'hide-tied-accidental-after-break = ##t
	\set Staff.instrumentName = #"Horn V in F "
	\set Staff.midiInstrument = "french horn"
	\override Staff.InstrumentName #'self-alignment-X = #RIGHT
}

HornSixHeading = {
	#(set-accidental-style 'modern)
	\override Staff.Accidental #'hide-tied-accidental-after-break = ##t
	\set Staff.instrumentName = #"Horn VI in F "
	\set Staff.midiInstrument = "french horn"
	\override Staff.InstrumentName #'self-alignment-X = #RIGHT
}

TrumpetOneHeading = {
	#(set-accidental-style 'modern)
	\override Staff.Accidental #'hide-tied-accidental-after-break = ##t
	\set Staff.instrumentName = #"Trompete I in C "
	\set Staff.midiInstrument = "trumpet"
	\override Staff.InstrumentName #'self-alignment-X = #RIGHT
}

TrumpetTwoHeading = {
	#(set-accidental-style 'modern)
	\override Staff.Accidental #'hide-tied-accidental-after-break = ##t
	\set Staff.instrumentName = #"Trompete II in C "
	\set Staff.midiInstrument = "trumpet"
	\override Staff.InstrumentName #'self-alignment-X = #RIGHT
}

TrumpetThreeHeading = {
	#(set-accidental-style 'modern)
	\override Staff.Accidental #'hide-tied-accidental-after-break = ##t
	\set Staff.instrumentName = #"Trompete III in C "
	\set Staff.midiInstrument = "trumpet"
	\override Staff.InstrumentName #'self-alignment-X = #RIGHT
}

TrumpetFourHeading = {
	#(set-accidental-style 'modern)
	\override Staff.Accidental #'hide-tied-accidental-after-break = ##t
	\set Staff.instrumentName = #"Trompete IV in C "
	\set Staff.midiInstrument = "trumpet"
	\override Staff.InstrumentName #'self-alignment-X = #RIGHT
}

TromboneOneHeading = {
	#(set-accidental-style 'modern)
	\override Staff.Accidental #'hide-tied-accidental-after-break = ##t
	\set Staff.instrumentName = #"Trombone I "
	\set Staff.midiInstrument = "trombone"
	\override Staff.InstrumentName #'self-alignment-X = #RIGHT
}

TromboneTwoHeading = {
	#(set-accidental-style 'modern)
	\override Staff.Accidental #'hide-tied-accidental-after-break = ##t
	\set Staff.instrumentName = #"Trombone II "
	\set Staff.midiInstrument = "trombone"
	\override Staff.InstrumentName #'self-alignment-X = #RIGHT
}

TromboneThreeHeading = {
	#(set-accidental-style 'modern)
	\override Staff.Accidental #'hide-tied-accidental-after-break = ##t
	\set Staff.instrumentName = #"Trombone III "
	\set Staff.midiInstrument = "trombone"
	\override Staff.InstrumentName #'self-alignment-X = #RIGHT
}

TubaOneHeading = {
	#(set-accidental-style 'modern)
	\override Staff.Accidental #'hide-tied-accidental-after-break = ##t
	\set Staff.instrumentName = #"Tuba I "
	\set Staff.midiInstrument = "tuba"
	\override Staff.InstrumentName #'self-alignment-X = #RIGHT
}

TubaTwoHeading = {
	#(set-accidental-style 'modern)
	\override Staff.Accidental #'hide-tied-accidental-after-break = ##t
	\set Staff.instrumentName = #"Tuba II "
	\set Staff.midiInstrument = "tuba"
	\override Staff.InstrumentName #'self-alignment-X = #RIGHT
}

TimpaniOneHeading = {
	#(set-accidental-style 'modern)
	\override Staff.Accidental #'hide-tied-accidental-after-break = ##t
	\set Staff.instrumentName = #"Timpani I "
	\set Staff.midiInstrument = "timpani"
	\override Staff.InstrumentName #'self-alignment-X = #RIGHT
}

TimpaniTwoHeading = {
	#(set-accidental-style 'modern)
	\override Staff.Accidental #'hide-tied-accidental-after-break = ##t
	\set Staff.instrumentName = #"Timpani II "
	\set Staff.midiInstrument = "timpani"
	\override Staff.InstrumentName #'self-alignment-X = #RIGHT
}

TriangleHeading = {
	\set DrumStaff.instrumentName = "Triangle "
	\set DrumStaff.midiInstrument = "orchestra kit"
	\override DrumStaff.InstrumentName #'self-alignment-X = #RIGHT
}

TambourineHeading = {
	\set DrumStaff.instrumentName = "Tambourine "
	\set DrumStaff.midiInstrument = "orchestra kit"
	\override DrumStaff.InstrumentName #'self-alignment-X = #RIGHT
}

CymbalsHeading = {
	\set DrumStaff.drumStyleTable = #(alist->hash-table mycymbals)
	\set DrumStaff.instrumentName = "Cymbals "
	\set DrumStaff.midiInstrument = "orchestra kit"
	\override DrumStaff.InstrumentName #'self-alignment-X = #RIGHT
}

BassDrumHeading = {
	\set DrumStaff.drumStyleTable = #(alist->hash-table mybassdrum)
	\set DrumStaff.instrumentName = "Bass Drum "
	\set DrumStaff.midiInstrument = "orchestra kit"
	\override DrumStaff.InstrumentName #'self-alignment-X = #RIGHT
}

GlockenspielHeading = {
	#(set-accidental-style 'modern)
	\override Staff.Accidental #'hide-tied-accidental-after-break = ##t
	\set Staff.instrumentName = #"Glockenspiel "
	\set Staff.midiInstrument = "glockenspiel"
	\override Staff.InstrumentName #'self-alignment-X = #RIGHT
}

HarpOneHeading = {
	#(set-accidental-style 'piano)
	\override Staff.Accidental #'hide-tied-accidental-after-break = ##t
	\set PianoStaff.instrumentName = #"Harp I "
	\set Staff.midiInstrument = "orchestral harp"
	\override PianoStaff.InstrumentName #'self-alignment-X = #RIGHT
}

HarpTwoHeading = {
	#(set-accidental-style 'piano)
	\override Staff.Accidental #'hide-tied-accidental-after-break = ##t
	\set PianoStaff.instrumentName = #"Harp II "
	\set Staff.midiInstrument = "orchestral harp"
	\override PianoStaff.InstrumentName #'self-alignment-X = #RIGHT
}

ViolinOneHeading = {
	#(set-accidental-style 'modern)
	\override Staff.Accidental #'hide-tied-accidental-after-break = ##t
	\set Staff.instrumentName = #"1st Violins "
	\set Staff.midiInstrument = "violin"
	\override Staff.InstrumentName #'self-alignment-X = #RIGHT
}

ViolinTwoHeading = {
	#(set-accidental-style 'modern)
	\override Staff.Accidental #'hide-tied-accidental-after-break = ##t
	\set Staff.instrumentName = #"2nd Violins "
	\set Staff.midiInstrument = "violin"
	\override Staff.InstrumentName #'self-alignment-X = #RIGHT
}

ViolaHeading = {
	#(set-accidental-style 'modern)
	\override Staff.Accidental #'hide-tied-accidental-after-break = ##t
	\set Staff.instrumentName = #"Violas "
	\set Staff.midiInstrument = "viola"
	\override Staff.InstrumentName #'self-alignment-X = #RIGHT
}

VioloncelloHeading = {
	#(set-accidental-style 'modern)
	\override Staff.Accidental #'hide-tied-accidental-after-break = ##t
	\set Staff.instrumentName = #"Violoncellos "
	\set Staff.midiInstrument = "cello"
	\override Staff.InstrumentName #'self-alignment-X = #RIGHT
}

DoubleBassHeading = {
	#(set-accidental-style 'modern)
	\override Staff.Accidental #'hide-tied-accidental-after-break = ##t
	\set Staff.instrumentName = #"Double Basses "
	\set Staff.midiInstrument = "contrabass"
	\override Staff.InstrumentName #'self-alignment-X = #RIGHT
}