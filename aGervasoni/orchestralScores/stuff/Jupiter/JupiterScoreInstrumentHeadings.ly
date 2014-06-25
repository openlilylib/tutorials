\version "2.16.1"

% -*-
% indent-tabs: yes;
% indent-width: 8;

PiccolosHeading = {
	#(set-accidental-style 'modern)
	\override Staff.Accidental #'hide-tied-accidental-after-break = ##t
	\set Staff.instrumentName = #"2 Piccolos "
	\set Staff.shortInstrumentName = #"Picc. "
	\set Staff.midiInstrument = "piccolo"
	\override Staff.InstrumentName #'self-alignment-X = #RIGHT
}


FlutesHeading = {
	#(set-accidental-style 'modern)
	\override Staff.Accidental #'hide-tied-accidental-after-break = ##t
	\set Staff.instrumentName = #"2 Flutes "
	\set Staff.shortInstrumentName = #"Fl. "
	\set Staff.midiInstrument = "flute"
	\override Staff.InstrumentName #'self-alignment-X = #RIGHT
}

OboesHeading = {
	#(set-accidental-style 'modern)
	\override StaffGroup.Accidental #'hide-tied-accidental-after-break = ##t
	\set StaffGroup.instrumentName = #"3 Oboes "
	\set StaffGroup.shortInstrumentName = #"Ob. "
	\set StaffGroup.midiInstrument = "oboe"
	\override StaffGroup.InstrumentName #'self-alignment-X = #RIGHT
}

EnglishHornHeading = {
	#(set-accidental-style 'modern)
	\override Staff.Accidental #'hide-tied-accidental-after-break = ##t
	\set Staff.instrumentName = #"English Horn "
	\set Staff.shortInstrumentName =  #"E. H. "
	\set Staff.midiInstrument = "english horn"
	\override Staff.InstrumentName #'self-alignment-X = #RIGHT
}

ClarinetsHeading = {
	#(set-accidental-style 'modern)
	\override StaffGroup.Accidental #'hide-tied-accidental-after-break = ##t
	\set StaffGroup.instrumentName = \markup \concat { "3 Clarinets in B " \smaller \flat " " }
	\set StaffGroup.shortInstrumentName =  #"Cl. "
	\set StaffGroup.midiInstrument = "clarinet"
	\override StaffGroup.InstrumentName #'self-alignment-X = #RIGHT
}

BassClarinetHeading = {
	#(set-accidental-style 'modern)
	\override Staff.Accidental #'hide-tied-accidental-after-break = ##t
	\set Staff.instrumentName = \markup \concat { "Bass Clarinet in B " \smaller \flat " " }
	\set Staff.shortInstrumentName =  #"Bcl. "
	\set Staff.midiInstrument = "clarinet"
	\override Staff.InstrumentName #'self-alignment-X = #RIGHT
}

BassoonsHeading = {
	#(set-accidental-style 'modern)
	\override StaffGroup.Accidental #'hide-tied-accidental-after-break = ##t
	\set StaffGroup.instrumentName = #"3 Bassoons "
	\set StaffGroup.shortInstrumentName = #"Bn. "
	\set Staff.midiInstrument = "bassoon"
	\override StaffGroup.InstrumentName #'self-alignment-X = #RIGHT
}

DoubleBassoonHeading = {
	#(set-accidental-style 'modern)
	\override Staff.Accidental #'hide-tied-accidental-after-break = ##t
	\set Staff.instrumentName = #"Double Bassoon "
	\set Staff.shortInstrumentName = #"Dbn. "
	\set Staff.midiInstrument = "bassoon"
	\override Staff.InstrumentName #'self-alignment-X = #RIGHT
}

HornsHeading = {
	#(set-accidental-style 'modern)
	\override Staff.Accidental #'hide-tied-accidental-after-break = ##t
	\set StaffGroup.instrumentName = #"6 Horns in F             "
	\set StaffGroup.shortInstrumentName = #"Hrn.             "
	\set Staff.midiInstrument = "french horn"
	\override StaffGroup.InstrumentName #'self-alignment-X = #RIGHT
}

TrumpetsHeading = {
	#(set-accidental-style 'modern)
	\override Staff.Accidental #'hide-tied-accidental-after-break = ##t
	\set StaffGroup.instrumentName = #"4 Trumpets in C "
	\set StaffGroup.shortInstrumentName = #"Trp. "
	\set Staff.midiInstrument = "trumpet"
	\override StaffGroup.InstrumentName #'self-alignment-X = #RIGHT
}

TrombonesHeading = {
	#(set-accidental-style 'modern)
	\override Staff.Accidental #'hide-tied-accidental-after-break = ##t
	\set StaffGroup.instrumentName = #"3 Trombones "
	\set StaffGroup.shortInstrumentName = #"Trb. "
	\set Staff.midiInstrument = "trombone"
	\override StaffGroup.InstrumentName #'self-alignment-X = #RIGHT
}

TubasHeading = {
	#(set-accidental-style 'modern)
	\override Staff.Accidental #'hide-tied-accidental-after-break = ##t
	\set Staff.instrumentName = #"2 Tubas "
	\set Staff.shortInstrumentName = #"Tub. "
	\set Staff.midiInstrument = "tuba"
	\override Staff.InstrumentName #'self-alignment-X = #RIGHT
}

TimpaniHeading = {
	#(set-accidental-style 'modern)
	\override StaffGroup.Accidental #'hide-tied-accidental-after-break = ##t
	\set StaffGroup.instrumentName = \markup { \center-column { "6 Timpani" \line { \tiny "(two players)" } } }
	\set StaffGroup.shortInstrumentName = #"Timp. "
	\set StaffGroup.midiInstrument = "timpani"
	\override StaffGroup.InstrumentName #'self-alignment-X = #RIGHT
}

TriangleHeading = {
	\set DrumStaff.instrumentName = "Triangle "
	\set DrumStaff.shortInstrumentName = #"Tri. "
	\set DrumStaff.midiInstrument = "orchestra kit"
	\override DrumStaff.InstrumentName #'self-alignment-X = #RIGHT
}

TambourineHeading = {
	\set DrumStaff.instrumentName = "Tambourine "
	\set DrumStaff.shortInstrumentName = #"Tamb. "
	\set DrumStaff.midiInstrument = "orchestra kit"
	\override DrumStaff.InstrumentName #'self-alignment-X = #RIGHT
}

CymbalsHeading = {
	\set DrumStaff.drumStyleTable = #(alist->hash-table mycymbals)
	\set DrumStaff.instrumentName = "Cymbals "
	\set DrumStaff.shortInstrumentName = #"Cymb. "
	\set DrumStaff.midiInstrument = "orchestra kit"
	\override DrumStaff.InstrumentName #'self-alignment-X = #RIGHT
}

BassDrumHeading = {
	\set DrumStaff.drumStyleTable = #(alist->hash-table mybassdrum)
	\set DrumStaff.instrumentName = "Bass Drum "
	\set DrumStaff.shortInstrumentName = #"B. D. "
	\set DrumStaff.midiInstrument = "orchestra kit"
	\override DrumStaff.InstrumentName #'self-alignment-X = #RIGHT
}

GlockenspielHeading = {
	\set Staff.instrumentName = "Glockenspiel "
	\set Staff.shortInstrumentName = #"Glocken. "
	\set Staff.midiInstrument = "glockenspiel"
	\override Staff.InstrumentName #'self-alignment-X = #RIGHT
}

HarpsHeading = {
	#(set-accidental-style 'piano)
	\override Staff.Accidental #'hide-tied-accidental-after-break = ##t
	\set PianoStaff.instrumentName = #"2 Harps "
	\set PianoStaff.shortInstrumentName = #"2 Hp. "
	\set Staff.midiInstrument = "orchestral harp"
	\override PianoStaff.InstrumentName #'self-alignment-X = #RIGHT
}

ViolinsHeading = {
	#(set-accidental-style 'modern)
	\override StaffGroup.Accidental #'hide-tied-accidental-after-break = ##t
	\set StaffGroup.instrumentName = #"Violins "
	\set StaffGroup.shortInstrumentName = #"Vns. "
	\set Staff.midiInstrument = "string ensemble 1"
	\override StaffGroup.InstrumentName #'self-alignment-X = #RIGHT
}

ViolaHeading = {
	#(set-accidental-style 'modern)
	\override Staff.Accidental #'hide-tied-accidental-after-break = ##t
	\set Staff.instrumentName = #"Violas "
	\set Staff.shortInstrumentName = #"Vas. "
	\set Staff.midiInstrument = "string ensemble 1"
	\override Staff.InstrumentName #'self-alignment-X = #RIGHT
}

VioloncelloHeading = {
	#(set-accidental-style 'modern)
	\override Staff.Accidental #'hide-tied-accidental-after-break = ##t
	\set Staff.instrumentName = #"Violoncellos "
	\set Staff.shortInstrumentName = #"Vc. "
	\set Staff.midiInstrument = "string ensemble 1"
	\override Staff.InstrumentName #'self-alignment-X = #RIGHT
}

DoubleBassHeading = {
	#(set-accidental-style 'modern)
	\override Staff.Accidental #'hide-tied-accidental-after-break = ##t
	\set Staff.instrumentName = #"Doublebasses "
	\set Staff.shortInstrumentName = #"Db. "
	\set Staff.midiInstrument = "string ensemble 1"
	\override Staff.InstrumentName #'self-alignment-X = #RIGHT
}