% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-global-staff-size 21)
#(set-default-paper-size "a4")

\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 

\header {
	title = "Herbie!" 
 	composer = "G.Bellon"
 	tagline = ""

}


accords = \chords {
	bes1:m  
}

theme = {\relative c'{
  r8 des' bes8. as16 r8 f es16 f8.
  r8 as f8. es16~ 8 des r4
  r r16 des''8. r4 r16 des8. r4  r16 bes8. r2
  
  r8 des, bes8. as16 r8 f es16 f8.
  r8 as f8. es16~ 8 des r4
  r r16 des''8. r4 r16 des8. r4  r16 bes8. r2
  
  r8 f,8~ 16 ges8. g4 as-. r1
  r8 f8~ 16 ges8. g4 as-. r1
  r8 f8~ 16 ges8. g4 as-. 
  a bes b c8. des16 
  r1 r r r \bar"|."
}}

basse = {\relative c'
{r4 r8 as16 bes r4 as16 bes8.-.
 r4 as8 bes r f' r16 g as8
 r4 r16 as8. r8 bes, r16 as'8.
 r8. g16 ~ 16 e'8 es16~ 8. des16~ 4
 
 r4 r8 as,16 bes r4 as16 bes8.-.
 r4 as8 bes r f' r16 g as8
 r4 r16 as8. r8 bes, r16 as'8.
 r8. g16 ~ 16 e'8 es16~ 8. des16~ 4
 
  r8 c,8~ 16 des8. d4 es-. r1
  r8 c8~ 16 des8. d4 es-. r1
  r8 c8~ 16 des8. d4 es-.
  ges g as e8. f16 
  r1 r r r \bar"|."
 
}}

staffViolon = \new Staff {
	\time 4/4
	\tempo 4 = 72 
	\set Staff.midiInstrument = "trumpet"
	\key bes \major
	\clef treble
	\accidentalStyle modern-cautionary
	\relative c' { 	
 % Type notes here 
\compressEmptyMeasures
%\set Timing.beamExceptions = #'()
<<
	\voiceOne \theme
	\new Voice {
	\override NoteHead.color = #red
	\voiceTwo
	\basse }
>>
%c4^\markup{Essai} cis c cis
%\mark \markup {\musicglyph "scripts.coda" }
%c cis c c \break
%\mark \markup { \column % vspace avant solos si besoin
%  { " " 
%    " " 
%    " "
%  " "
%  " "}
% } 
% c c c c c c c c
	}
}


theme = \staffViolon

\include "utils/books.ly"
