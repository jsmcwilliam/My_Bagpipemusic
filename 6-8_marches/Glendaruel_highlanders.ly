\version "2.18.0"

% When ready to include in collection:	
%	1. Comment out top section with \Include file(s)
%					
%	2. \midi section if present.
%	3. Option to comment out "meter" from title e.g. if first tune following
%	   section title.
                                    
%Comment out from here
%{
\include "bagpipe.ly" %(Original)
\include "../Includes/BP_format.ily" 	

%to here..........................................................
%}

\score {

    \new Staff  {
    \time 6/8	    
    \tempo 4 = 80   
    \hideKeySignature
    \bar ".|:"
    		
    % Part 1
    \repeat volta 2 {
 \partial 8 e8 
 \grg a4 \taor a8 \grg a8. [ b16 \grip c8 ] |
 \dble e4 \grip e8 \dblf f4 \grg e8 |
 \dblc c8. [ \grg b16 \grd a8 ] \grg f16 [ A8. f8 ] |
 \dble e4. \gra e8. [ \grg f16 A8 ] |
 a4 \taor a8 \grg a8. [ b16 \grip c8 ] |
 \dble e4 \grip e8 \dblf f4 \grg e8 |
 \grg f16 [ A8. c8 ] \dble e8. [ d16 b8 ] |
 \set Score.measureLength = #(ly:make-moment 5/8)
 \grg a4. \wbirl a4 |
 \bar ":..:" \break
 } %end repeat

    % Part 2
    \repeat volta 2 {
 \set Score.measureLength = #(ly:make-moment 1/8)
 \dble e16 [ d16 ] |
 \set Score.measureLength = #(ly:make-moment 6/8)
 \dblc c4 \gre a8 \grg c16 [ e8. b8 ] |
 \dblc c4 \gre a8 \wbirl a8. [ \grg c16 e8 ] |
 \grg f4 \birl a8 \grg f16 [ A8. f8 ] |
 \dble e4. \gra e8. [ 
    } %end repeat
    
    \alternative { {
 \grg f16 A8]  |
 \hdblc c4 \gre a8 \grg c16 [ e8. b8 ] |
 \dblc c4 \gre a8 \wbirl a8. [ \grg c16 e8 ] |
 \grg f8. [ e16 \grg c8 ] \dble e8. [ d16 b8 ] |
 \set Score.measureLength = #(ly:make-moment 5/8)
 \grg a4. \wbirl a4 |
 \break }
 { 
 \set Score.measureLength = #(ly:make-moment 1/8)
 \dblg f8 |
 \set Score.measureLength = #(ly:make-moment 6/8)
 A8. [ c16 \grG c8 ] \grg c8. [ f16 e8 ] |
 \grg f8. [ b16 \grG b8 ] \grg b8. [ f16 e8 ] |
 \grg f16 [ A8. c8 ] \dble e8. [ d16 b8 ] |
 \grg a4. \wbirl a4 \bar "|." 
    }}
 
      \override Score.BarLine.break-visibility = #end-of-line-invisible
      \stopStaff 
        % Increasing the unfold counter will expand the staff-free space
       \repeat unfold 6 { s4 s4 }  
      \break 	
      \startStaff  % Resume bar count and show staff lines again  +

    % Part 3
     \repeat volta 2 {
 b8 
 \grip c4. \dble e8. [ c16 b8 ] |
 \grg a8. [ b16 \grip c8 ] \dble e4 \grg c8 |
 \grip f4. A8. [ g16 f8 ] |
 \dble e4. \gra e8. [ \grg f16 A8 ] | 
 \grip c4. \dble e8. [ c16 b8 ] |
 \grg a8. [ b16 \grip c8 ] \dble e4 \dblg g8 |
 \grA f16 [ A8. c8 ] \dble e8. [ d16 b8 ] |
 \set Score.measureLength = #(ly:make-moment 5/8)
 \grg a4. \wbirl a4 |
 \revert Score.BarLine.break-visibility
 \break
 } %end repeat

    % Part 4
     \repeat volta 2 {
 \set Score.measureLength = #(ly:make-moment 1/8)
 \dblg g8 |
 \set Score.measureLength = #(ly:make-moment 6/8)
 \dblA A4. \hdblf f8. [ e16 c8 ] |
 \grg a8. [ b16 \grip c8 ] \dble e4 \grg c8 |
 \grip f4. \dble e8. [ d16 c8 ] |
 \grg b4. \taor b4 
     } %end repeat
     
      \alternative {{
 \dblg g8 |
 \dblA A4. \hdblf f8. [ e16 \grg c8 ] |
 \grg a8. [ b16 \grip c8 ] \dble e4 \dblg g8 |
 \grA f16 [ A8. c8 ] \dble e8. [ d16 b8 ] |
 \set Score.measureLength = #(ly:make-moment 5/8)
 \grg a4. \wbirl a4 |
 \break }
 
 {
\set Score.measureLength = #(ly:make-moment 1/8)
 \dble e16 [ d16 ] |
 \set Score.measureLength = #(ly:make-moment 6/8)
 \grg c16 [ e8. c8 ] \dbld d8. [ c16 b8 ] |
 \grg a8. [ b16 \grip c8 ] \dble e4 \dblg g8 |
 \grA f16 [ A8. c8 ] \dble e8. [ d16 b8 ] |
 \set Score.measureLength = #(ly:make-moment 5/8)
 \grg a4. \wbirl a4 |
 \bar "|." \break }}

    } %end staff
    
  \header {
    meter = "March"
    piece = "Glendaruel Highlanders"
    composer = "P/M A. Fettes"
    parttagline = "Copied by John S. McWilliam"
  }
  
% added layout options. See bagpipe_new.ly (\layout) for default settings
  \layout {
  	  ragged-last = ##t
  	}

% \midi {} %Generation of midi files option.

}%end score
