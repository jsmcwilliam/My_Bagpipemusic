\version "2.18.0"
%
%   	1. Comment out generation of midi files before compiling book
%  	2. Comment top section when compiling book.........................
%
%from here
%{
#(ly:set-option 'point-and-click #t)
#(set-default-paper-size "a4" 'landscape)

VoltaTxtTwoFour = \markup { 2. \text\fontsize #2 {--Parts: 2 & 4}}

%\include "bagpipe.ly"		%(Original)
\include "bagpipe_new.ly" 	%(Replaces bagpipe.ly)
\include "bagpipe_extra.ly"	%(Extras)
\include "BP_format.ly" 	%(Tagline: Copied by John McWilliam, date)
				%(Paper format A4, Landscape)
				%(Header: peice, meter and composer)
				%(Otherwise Lilypond subtitle)
%to here..........................................................
%}

\score {

    \new Staff  {
    \set Staff.midiInstrument = #"bagpipe"    
    \bagpipeKey
    \time 6/8
    \tempo 4 = 80
%    \quarterBeaming
    \bar ".|:"

    % Part 1
      \repeat volta 2 {
      \partial 8 e8
      \grg a8. \grd b16 \gre G8 \grg a4.
      \dble e8. d16 g8 \hdble e8. d16 b8
      \grg a8. \grd b16 \gre a8 \grg G4 \grd b8
      \thrwd d4 e8 \dble e8. d16 b8
%      \break
      \set Score.repeatCommands = #(list(list 'volta VoltaTxtTwoFour))	
      \grg a8. \grd b16 \gre G8 \grg a4.
      \dble e8. d16 g8 \hdble e8. d16 b8
      \grg G8. \grd b16 g8 \hdble e8. d16 b8
      \grg a4. \wbirl a4
      \set Score.repeatCommands = #'((volta #f))
      	\break }

    % Part 2
    \repeat volta 2 {
%    \set Timing.measurePosition = #(ly:make-moment -8)
      \dblg g8
      \dblA A4 e8 \gra e4 \dblg g8
      A8. e16 \gra e8 \dble e8. d16 b8
      \grg a8. \grd b16 \gre a8 \grg G4 \grd b8
      \thrwd d4 e8 \dble e8. d16 b8
%      \break

      \set Score.repeatCommands = #'((volta "1."))
      \dblA A4 e8 \gra e4 \dblg g8
      A8. e16 \gra e8 \dble e8. d16 b8
      \grg G8. \grd b16 g8 \hdble e8. d16 b8
%      \barLength 5 8
      \grg a4. \wbirl a4
      \set Score.repeatCommands = #'((volta #f))
    \break }
   
    
    % Part 3
      \repeat volta 2 {
      e8
      \grg a8. e16 \gra e8 \grg d8. e16 \gra e8
      \grg a8. e16 \gra e8 \dble e8. d16 b8
      \grg a8. \grd b16 \gre a8 \grg G8. \grd G16 \gre G8
      \grg b16 d8. e8 \dble e8. d16 b8
%      \break
      
      \grg a8. e16 \gra e8 \grg d8. e16 \gra e8
      \grg a8. e16 \gra e8 \dble e8. d16 b8
      \grg G8. \grd b16 g8 \hdble e8. d16 b8
%      \barLength 5 8
      \grg a4. \wbirl a4
      \break }
      
    
    % Part 4
    \repeat volta 2 {
      e8
      \gbirl a4 A8 \grg A8. g16 A8
      g8. e16 \gra e8 \dble e8. d16 b8
      \grg a8. \grd b16 \gre a8 \grg G4 \grd b8
      \thrwd d4 e8 \dble e8. d16 b8
%      \break
      
      \set Score.repeatCommands = #'((volta "1."))
      \gbirl a4 A8 \grg A8. g16 A8
      g8. e16 \gra e8 \dble e8. d16 b8
      \grg G8. \grd b16 g8 \hdble e8. d16 b8
%      \barLength 5 8
      \grg a4. \wbirl a4
      \set Score.repeatCommands = #'((volta #f))
    \break }
    

    } %end staff
    
  \header {
    meter = "March"
    piece = "Pipe Major Donald McLean of Lewis"
    composer = "Traditional"
    parttagline = "Copied by John S. McWilliam"

  }
  \layout {
  	  #(layout-set-staff-size 18)
%  	  ragged-last = ##t
  	}
  	
%Generation of midi files can be removed here.
%  \midi {}
}%end score
%................................................................
%Useful commands for upgrading from older versions of Lilypond:
%\set Score.measureLength = #(ly:make-moment 5/8)
%\set Score.repeatCommands = #'((volta "1.--2."))
%\set Score.repeatCommands = #'((volta #f))
%\unfoldRepeats for better playback
%remove midi when compiling book
%................................................................