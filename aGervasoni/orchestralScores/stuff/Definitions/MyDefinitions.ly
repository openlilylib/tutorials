\version "2.16.1"

% -*-
% indent-tabs: yes;
% indent-width: 8;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Tuplets
bracketUp = \override TupletBracket #'direction = #UP
bracketNeutral = \revert TupletBracket #'direction
bracketDown = \override TupletBracket #'direction = #DOWN
hideTupletBracket = \once \override TupletBracket #'stencil = ##f 
hideTupletNumber = \once \override TupletNumber #'stencil = ##f

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Rests
restMiddle = \override Rest #'staff-position = #0
restFourthLine = \override Rest #'staff-position = #2
restNeutral = \revert Rest #'staff-position
multirestMiddle = \override MultiMeasureRest #'staff-position = #-0.01
multirestFourthLine = \override MultiMeasureRest #'staff-position = #2
multirestNeutral = \revert MultiMeasureRest #'staff-position
restTransparent = \override Rest #'transparent = ##t
restVisible = \override Rest #'transparent = ##f

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Dynamics
fmp = #(make-dynamic-script "fmp")
sfzmf = #(make-dynamic-script "sfzmf")
niente = #(make-dynamic-script #{ \markup \line { \hspace #-2.6 \normal-text \normalsize \italic "niente" } #})
n = #(make-dynamic-script #{ \markup \line { \normal-text \normalsize \italic "n." } #})
spacer = #(make-dynamic-script (markup ""))
fortissimoSempreStaccato =  \tweak DynamicText #'self-alignment-X #-1 #(
   make-dynamic-script (
    markup #:line (
      #:left-align
      #:dynamic "ff"
      #:hspace -1
      #:normal-text
      #:italic "sempre staccato" 
    )
  )
)
forteMoltoPesante = \tweak DynamicText #'self-alignment-X #-1 #(
   make-dynamic-script (
    markup #:line (
      #:left-align
      #:dynamic "f"
      #:hspace -1
      #:normal-text
      #:italic "molto pesante" 
    )
  )
)
InstrumentCenteredDynamics = {
	\override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = 
	#'((basic-distance . 1)
	(minimum-distance . 1)
	(padding . 0.5)
	(stretchability . 0))
	\override DynamicText #'self-alignment-X = #-1
	\override VerticalAxisGroup #'nonstaff-unrelatedstaff-spacing #'stretchability = #0
	\override VerticalAxisGroup #'nonstaff-relatedstaff-spacing #'stretchability = #0
}
KeyboardCenteredDynamics = {
	%\override DynamicText #'self-alignment-X = #-0.5
	\override VerticalAxisGroup #'nonstaff-unrelatedstaff-spacing #'stretchability = #0
	\override VerticalAxisGroup #'nonstaff-relatedstaff-spacing #'stretchability = #0
}
roundMF = \markup { \left-align \concat { \bold { \italic ( } \dynamic mf \bold { \italic ) } } }
boxMF = \markup { \bracket { \dynamic mf } }
crescendo = \markup { \italic "cresc." }
parenF = #(make-dynamic-script (markup #:line (#:normal-text #:italic
           #:fontsize 2 "(" #:hspace -0.8 #:dynamic "f" #:normal-text
           #:italic #:fontsize 2 ")")))
AlignPPP = {
	\once \override Staff.DynamicText #'self-alignment-X = #LEFT
	\once \override Staff.DynamicText #'X-offset = #'-1.25
	\once \override Dynamics.DynamicText #'self-alignment-X = #LEFT
	\once \override Dynamics.DynamicText #'X-offset = #'-1.25
}
AlignPPPP = {
	\once \override Staff.DynamicText #'self-alignment-X = #LEFT
	\once \override Staff.DynamicText #'X-offset = #'-0.5
	\once \override Dynamics.DynamicText #'self-alignment-X = #LEFT
	\once \override Dynamics.DynamicText #'X-offset = #'-0.5
}
whitePPPMarkup = \markup {\whiteout \pad-markup #0.5 \dynamic ppp}
whitePPP = #(make-dynamic-script whitePPPMarkup)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Hairpins
hairpinRoundTip = \override Hairpin #'circled-tip = ##t
hairpinSharpTip = \override Hairpin #'circled-tip = ##f
hairpinWithCenteredText =
#(define-music-function (parser location text) (markup?)
#{
  \override Voice.Hairpin #'stencil = #(lambda (grob)
    (ly:stencil-aligned-to
     (ly:stencil-combine-at-edge
      (ly:stencil-aligned-to (ly:hairpin::print grob) X CENTER)
      Y DOWN
      (ly:stencil-aligned-to (grob-interpret-markup grob text) X CENTER))
     X LEFT))
#})
hairpinPoco = \hairpinWithCenteredText \markup { \italic poco }
hairpinMolto = \hairpinWithCenteredText \markup { \italic molto }
hairpinNoText = \revert Voice.Hairpin #'stencil
hairpinBetweenText =
#(define-music-function (parser location leftText rightText) (markup? markup?)	
   #{
     \once \override Hairpin #'stencil =
     #(lambda (grob)
        (ly:stencil-combine-at-edge
         (ly:stencil-combine-at-edge
          (ly:stencil-aligned-to (grob-interpret-markup grob $leftText) Y CENTER)
          X RIGHT
          (ly:stencil-aligned-to (ly:hairpin::print grob) Y CENTER)
          0)
         X RIGHT
         (ly:stencil-aligned-to (grob-interpret-markup grob $rightText) Y CENTER)
         0.6))
   #})
parenthesizedHairpin = \hairpinBetweenText \markup "(" \markup ")"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Trills
trillDown = { \once \override TrillSpanner #'direction = #DOWN \once \override Staff.TrillSpanner #'Y-offset = #1 }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Staff
BracketinSingleStaff = {
	\override StaffGroup.SystemStartBracket #'collapse-height = #1
	\override Score.SystemStartBar #'collapse-height = #1
}

NoBracketinSingleStaff = { 
	\override StaffGroup.SystemStartBracket #'collapse-height = #10
	\override Score.SystemStartBar #'collapse-height = #10
}

NoSquareinSingleStaff = { 
	\override StaffGroup.SystemStartSquare #'collapse-height = #10
	\override Score.SystemStartBar #'collapse-height = #10
}

ShowEmptyStaves =  { 
	\override Staff.VerticalAxisGroup #'remove-empty = ##f
	\override DrumStaff.VerticalAxisGroup #'remove-empty = ##f
	\override PianoStaff.VerticalAxisGroup #'remove-empty = ##f
	\override StaffGroup.VerticalAxisGroup #'remove-empty = ##f
}

HideEmptyStaves =  {
	\override Staff.VerticalAxisGroup #'remove-empty = ##t
	\override DrumStaff.VerticalAxisGroup #'remove-empty = ##t
	\override PianoStaff.VerticalAxisGroup #'remove-empty = ##t
	\override StaffGroup.VerticalAxisGroup #'remove-empty = ##t
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Tempo changes
accel = \markup { \bold \italic "accel." }
accelerando = \markup { \bold \italic "accelerando" }
accelpoco = \markup { \bold \italic "accel. poco a poco" }
pocoaccel = \markup { \bold \italic "poco accel." }
stretto = \markup { \bold \italic "stretto" }
rit = \markup { \bold \italic "rit." }
ritardando = \markup { \bold \italic "ritardando" }
rubato = \markup { \bold \italic "rubato" }
moltorubato = \markup { \bold \italic "molto rubato" }
semprerubato = \markup { \bold \italic "sempre rubato" }
senzarubato = \markup { \bold \italic "senza rubato" }
pocorit = \markup { \bold \italic "poco rit." }
moltorit = \markup { \bold \italic "molto rit." }
riten = \markup { \bold \italic "riten." }
ritenuto = \markup { \bold \italic "ritenuto" }
allarg = \markup { \bold \italic "allarg." }
piumosso = \markup { \bold \italic \concat { pi \char ##x00F9 mosso } }
menomosso = \markup { \bold \italic "meno mosso" }
piulento = \markup { \bold \italic \concat { pi \char ##x00F9 lento } }
rapido = \markup { \bold \italic "rapido" }
atempo = \markup { \left-align \bold \italic "a tempo" }
pocoatempo = \markup { \bold \italic "a tempo poco a poco" }
tempoi = \markup { \bold \italic "Tempo I" }
tempoii = \markup { \bold \italic "Tempo II" }
RitardandoSpanner = {
	\override TextSpanner #'(bound-details left text) = \markup { \bold \italic "rit. " }
	\override TextSpanner #'to-barline = ##t
	\override TextSpanner #'bound-details #'right #'padding = #1
}
AccelerandoSpanner = {
	\override TextSpanner #'(bound-details left text) = \markup { \bold \italic "accel. " }
	\override TextSpanner #'to-barline = ##t
	\override TextSpanner #'bound-details #'right #'padding = #1
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Special metronome marks
DottedHalfEqualsHalf = \mark \markup {
	\concat { \tiny \general-align #Y #DOWN \note #"2." #1 
		" = " \tiny \general-align #Y #DOWN \note #"2" #1 } 
}

FourthEqualsDottedForth = \mark \markup {
	\concat { \tiny \general-align #Y #DOWN \note #"4" #1
		" = " \tiny \general-align #Y #DOWN \note #"4." #1 
	} 
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Other texts
OneStar = \markup { \bold \fontsize #2 "(*)" }
TwoStars = \markup { \bold \fontsize #2 "(**)" }
ThreeStars = \markup { \bold \fontsize #2 "(***)" }
ADue = \markup { \bold "a2" }
First = \markup { \bold "I" }
Second = \markup { \bold "II" }
TextRight = {
	\once \override TextScript #'Y-extent = #'(1 . -1) 
	\once \override TextScript #'self-alignment-X = #LEFT
	\once \override TextScript #'extra-offset = #'(1 . 1.5)
}
TextLeft = {
	\once \override TextScript #'Y-extent = #'(1 . -1) 
	\once \override TextScript #'self-alignment-X = #RIGHT
	\once \override TextScript #'extra-offset = #'(-1 . 1.5)
}
TextLeftClose = { 
	\once \override TextScript #'Y-extent = #'(1 . -1) 
	\once \override TextScript #'self-alignment-X = #RIGHT
	\once \override TextScript #'extra-offset = #'(0 . 0.5)
}
TextLeftMid = { 
	\once \override TextScript #'Y-extent = #'(1 . -1) 
	\once \override TextScript #'self-alignment-X = #RIGHT
	\once \override TextScript #'extra-offset = #'(-1 . 0.5)
}
TextLeftFar = { 
	\once \override TextScript #'Y-extent = #'(1 . -1) 
	\once \override TextScript #'self-alignment-X = #RIGHT
	\once \override TextScript #'extra-offset = #'(-2 . 0.5)
}
AvoidSlurCollision = \override TextScript #'avoid-slur = #'around
IgnoreSlurCollision = \override TextScript #'avoid-slur = #'ignore
simile = \markup { \italic "sim." }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Add accidentals to trill spanner
sharpTrill = \once \override TrillSpanner #'edge-text = 
#(cons (markup #:line (#:halign -0.5 #:musicglyph "scripts.trill" #:teeny #:raise 0.65 #:sharp)) "")
flatTrill = \once \override TrillSpanner #'edge-text = 
#(cons (markup #:line (#:halign -0.5 #:musicglyph "scripts.trill" #:teeny #:raise 0.5 #:flat)) "")
naturalTrill = \once \override TrillSpanner #'edge-text = 
#(cons (markup #:line (#:halign -0.5 #:musicglyph "scripts.trill" #:teeny #:raise 0.65 #:natural)) "")

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Special midi effects
mute = \set Staff.midiInstrument = "muted trumpet"
hnopen = \set Staff.midiInstrument = "french horn"
tpopen = \set Staff.midiInstrument = "trumpet"
tbopen = \set Staff.midiInstrument = "trombone"
tuopen = \set Staff.midiInstrument = "tuba"
pizz = \set Staff.midiInstrument = "pizzicato strings"
arco = \set Staff.midiInstrument = "string ensemble 1"
vnarco = \set Staff.midiInstrument = "violin"
vlarco = \set Staff.midiInstrument = "viola"
vcarco = \set Staff.midiInstrument = "cello"
cbarco = \set Staff.midiInstrument = "contrabass"
legno = \set Staff.midiInstrument = "taiko drum"
bpizz = \set Staff.midiInstrument = "agogo"
vnsolo = \set Staff.midiInstrument = "violin"
vlsolo = \set Staff.midiInstrument = "viola"
vcsolo = \set Staff.midiInstrument = "cello"
cbsolo = \set Staff.midiInstrument = "contrabass"
tutti = \set Staff.midiInstrument = "string ensemble 1"
sord = \set Staff.midiInstrument = "string ensemble 2"
nosord = \set Staff.midiInstrument = "string ensemble 1"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Filters

%% To add staccatos:
#(define (addStaccatoFilterFunction event)
  (let ((eventname (ly:music-property event 'name)))
    (if (eq? eventname 'EventChord)
      (let ((elements (ly:music-property event 'elements)))
        ; don't add staccato to rests!
        (if (not (eq? (ly:music-property (car elements) 'name) 'RestEvent))
          (set! (ly:music-property event 'elements)
            (append elements (list (make-music 'ArticulationEvent
'articulation-type "staccato"))
  )))))))

addStaccato = #(define-music-function (parser location music) (ly:music?)
   (music-filter addStaccatoFilterFunction music))

%% To remove various elements in partcombine situations:
#(define (filterOneEvent event)
( let ( (eventname (ly:music-property  event 'name)) )
 (not
  (or     ;; add here event name you do NOT want
   (eq? eventname 'MultiMeasureTextEvent)
   (eq? eventname 'AbsoluteDynamicEvent)
   (eq? eventname 'TextScriptEvent)
   (eq? eventname 'ArticulationEvent)
  )
 )
))

filtermusic = #(define-music-function (parser location music) (ly:music?)
   (music-filter filterOneEvent music)
)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Warnings
IgnoreClashingColumns = \override NoteColumn #'ignore-collision = ##t
RestoreClashingColumns = \override NoteColumn #'ignore-collision = ##f

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Special notation
smallFlageolet = #(let ((m (make-articulation "flageolet")))
			(set! (ly:music-property m 'tweaks)
			(acons 'font-size -3
			(ly:music-property m 'tweaks)))
			m)
glissandoSkipOn = { \override NoteColumn #'glissando-skip = ##t }
glissandoSkipOff = { \revert NoteColumn #'glissando-skip }
staccTripletsOn = { % based on Kieren snippet by MacMillan
	\override Script #'stencil = #ly:text-interface::print 
	\override Script #'text = \markup \concat { \musicglyph #"scripts.staccato" \hspace #0.4
							\musicglyph #"scripts.staccato" \hspace #0.4 \musicglyph #"scripts.staccato" } 
	\override Script #'X-offset = #-0.3 
}
staccTripletsOff = { 
    \revert Script #'stencil
    \revert Script #'text 
    \revert Script #'X-offset
}
divisiBracket = {
	\arpeggioBracket 
	\override Arpeggio #'positions = #(lambda (grob) (interval-widen (ly:arpeggio::calc-positions grob) -0.4))
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Spacing
WithinGroupSpacing = {
	\override StaffGroup.StaffGrouper #'staff-staff-spacing = #'((basic-distance . 9)
								     (minimum-distance . 7)
								     (padding . 1)
								     (stretchability . 3.5))
	\override StaffGroup.StaffGrouper #'staffgroup-staff-spacing = #'((basic-distance . 9)
									  (minimum-distance . 7)
									  (padding . 1)
									  (stretchability . 3.5))
}

BetweenGroupSpacing = {
	\override StaffGroup.StaffGrouper #'staffgroup-staff-spacing = #'((basic-distance . 12)
									  (minimum-distance . 7)
									  (padding . 1)
									  (stretchability . 3.5))
}

KeyboardStaffSpacing = {
	\override PianoStaff.StaffGrouper #'staff-staff-spacing = #'((basic-distance . 9)
								     (minimum-distance . 7)
								     (padding . 1)
								     (stretchability . 3.5)) 
	\override PianoStaff.StaffGrouper #'staffgroup-staff-spacing = #'((basic-distance . 12)
									  (minimum-distance . 7)
									  (padding . 1)
									  (stretchability . 3.5))
}