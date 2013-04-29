%{
  LilyPond-Tutorial: Tackle More Complex Tasks
  Urs Liska, 2011
  LilyPond source file
  
  Feel free to use, modify or redistribute any techniques 
  or templates discussed in this tutorial.
  The music is under copyright, however. I obtained
  the permission to use it as an example in this 
  tutorial and to publish it on my web site
  (www.ursliska.de). But any further use is
  not allowed. (Fortunately there isn't any practical
  use that would be regarded as an abuse ...)
  
  "Nie ward ich, Herrin, müd" | Nr. 4 aus "6 Orchesterlieder" | 
  für Gesang und Orchester | op. 8/1
  © Copyright 1911 by Universal Edition A.G., Wien/UE 3041
  www.universaledition.com

%}

\version "2.14.0"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% General options
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\paper {
  indent = 0\cm
  ragged-right = ##f
}

\include "debugCurves.ily"

global = {
  \key f \major
  \time 2/2
}

tweakPhrasingSlur = { 
  % Shape the PhrasingSlur from m.1 to m.3
  \displayControlPointsOnce
  \shape #'((0 . 5) (6 . 4.8)  (0 . 12.3)  (0 . 5.8)) PhrasingSlur
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Voice definitions
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

rightOne = \relative bes' {
  \voiceOne
  \dynamicUp
  <bes bes'>4\<( <a a'> <as as'>2\!) | % measure 1
  \dynamicNeutral
  \times 2/3 { 
    <a a'>4 <b b'> <cis_~ cis'~> q <d d'> <e e'> | % measure 2
  }
  \oneVoice
  <f as des f>4\fff r \times 2/3 { 
    <a, cis e g a> <b cis f b> <c e bes' c> 
  } | % measure 3
  \voiceOne 
  <a' c f a>1~ | % measure 4
  q4 
    \oneVoice 
    r4 r2
  \bar "|."
}

rightTwo = \relative a'' {
  \voiceTwo
  s1 | % measure 1
  a4 gis \times 2/3 { g^\< e c'\! } | % measure 2
  s1 | % measure 3
  <c,, f a c>1~ | % measure 4
  q4 s2.
}

rightThree = \relative f'' {
  \voiceTwo
  \showStaffSwitch
  f2\ff->\( c4.-> b8-> | % measure 1
  \change Staff = "left"
  \voiceOne
  f2.-> g4-> | % measure 2
  \set PianoStaff.connectArpeggios = ##t
  <as, des fes as>->\)\arpeggio \oneVoice r4 \voiceOne r2
}

leftOne = \relative des' {
   \voiceOne
   \times 2/3 { des4( es f~ f g as) } | % measure 1
}

leftTwo = \relative f {
  f1
}

leftThree = \relative bes, {
   \voiceTwo  bes8 ces4 c des d8 | % measure 1
  <es es'>8 <d d'>4 <des des'> <c c'> <bes bes'>8 | % measure 2
  <as f'>4\arpeggio s \times 2/3 { <a, a'>4 <as as'> <ges ges'> } | % measure 3
  \oneVoice <f f'>1~ |  % measure 4
  q4 r r2 |
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% End of Voice definitions
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\score { 
  \new PianoStaff <<
    \new Staff = "right" 
    {
      % Hier werden die globalen Einstellungen verwendet
      \global
      << 
        \new Voice \rightOne
        \new Voice \rightTwo
        \new Voice \rightThree
      >>
    }
    \new Staff = "left" { 
      \global
      \clef bass 
      << 
        \new Voice \leftOne 
        \new Voice \leftTwo
        \new Voice \leftThree
        s1*5
      >>
    }
  >>
  
  \layout { 
   }
}
