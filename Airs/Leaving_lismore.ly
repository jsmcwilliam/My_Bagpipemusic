\version "2.18.0"

%{Running this template always results in the following warning:
  Cannot find property type-check for `print-function' (backend-type?).  
  Perhaps a typing error? 
  Warning: skipping assignment. It seems to have its source in "bagpipe_new.ly"
  but does not have any adverse effects
%}
%   	1. Comment out generation of midi files before compiling book
%  	2. Comment out top section when compiling book.........................
%
% #(allow-volta-hook "|") % enables volta hook outside repeat context
% from here
%{
#(ly:set-option 'point-and-click #t)
#(set-default-paper-size "a4" 'landscape)

\include "bagpipe_new.ly" 	%(Replaces bagpipe.ly)
%\include "bagpipe_extra.ly"	%(Extras)
\include "BP_format.ly" 	%(Tagline: Copied by John McWilliam, date)
				%(Paper format A4, Landscape)
				%(Header: piece, meter and composer)
				%(Otherwise Lilypond subtitle)
%to here..........................................................
%}

\score {

    \new Staff  {
    \time 6/8	    %adjust time to suit specific tunes
    \tempo 4 = 50   % adjust speed accordingly for playback
    \bagpipeKey
    \set Staff.midiInstrument = #"bagpipe"  %is set in bagpipe_new.ly (\layout)
%   \showKeySignature (for BMW compatibility)
%   \quarterBeaming % Sets the autobeamer to span quarter notes only. 
    		    % Use for fast music.
%   \halfBeaming    % Sets the autobeamer to span half notes. 
                    % Mostly used in reels.
%   \reelTime       % Reels are in allabreve time with half note beaming.
%   \marchTime      % 4/4 marches are written with numerical time signature and 
                    % with quarter beaming.
%   \stemspace      % Add appropriate tweaks needed for piping grace notes 
                    % to look great.
%   \pgrace         % variant of above (\stemspace)
    \bar ".|:"
    		
    % Part 1
    \repeat volta 2 {
      \grg a8.[ b16 \grip c8] \grg e4 A8
      \hdblf f8. e16 c8 \dble e4.
      \grg a8.[ b16 \grip c8] \grg e4 f8
      \dblf f8. e16 c8 \dblb b4.
 
      \set Score.repeatCommands = #'((volta "2.--2."))
      \grg a8.[ b16 \grip c8] \grg e4 A8
      \hdblf f8. e16 c8 \dble e4.
      \gra e8. f16 A8 \hdblc c4 b8
      \dblc c8 b16 \grG a8. \wbirl a4.
      \set Score.repeatCommands = #'((volta #f))
      \break
    }

    % Part 2

    \repeat volta 2 {
      A4 \grip A8 \hdblf f4 e8
      \dblf f8. e16 c8 \dble e4.
      A4 \grip A8 \hdblf f4 e8
      \dblf f8. e16 c8 \dblb b4.

      \set Score.repeatCommands = #'((volta "1."))
        A4 \grip A8 \hdblf f4 e8
        \dblf f8. e16 c8 \dble e4.
        \gra e8. f16 A8 \hdblc c4 b8
        \dblc c8 b16 \grG a8. \wbirl a4.
        \set Score.repeatCommands = #'((volta #f))
%        \break
    }
    
    } %end staff
    
  \header {
    meter = "Slow Air"
    piece = "Leaving Lismore"
    composer = "Trad."
    parttagline = "Copied by John S. McWilliam"
  }
% added layout options. See bagpipe_new.ly (\layout) for default settings
  \layout {
  	  #(layout-set-staff-size 18)
  	  ragged-last = ##f
  	}

% \midi {} %Generation of midi files option.

}%end score

%................................................................
%Useful commands for upgrading from older versions of Lilypond:
%\set Score.measureLength = #(ly:make-moment 5/8)
%\set Score.repeatCommands = #'((volta "1.--2."))
%\set Score.repeatCommands = #'((volta #f))
%\once \hide Score.BarLine
%\once \hide Score.SpanBar
%\once \override Score.VoltaBracket.shorten-pair = #'(0.5 . 0)
%\unfoldRepeats for better playback
%remove midi when compiling book
% see Examples or Leaving Glen Urquhart for implementation guide
%................................................................