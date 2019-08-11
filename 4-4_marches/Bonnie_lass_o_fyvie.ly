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
    \time 4/4	    
    \tempo 4 = 80   
    \hideKeySignature
    \bar ".|:"
    		
    % Part 1
    \repeat volta 2 {
    \partial 8 a8 
 \thrwd d4 \dbld d8 [ e8 ] \thrwd d4~ d8 [ \gre a8 ] 
 \thrwd d4 \dbld d8 [ e8 ] \thrwd d2 
 \dble e4 \grg f8 [ g8 ] \dblA A4 g8 [ \grA f8 ] 
 \dble e4 \grg a4 \wbirl a4 A8. [ g16 ]  \break
 
  \hdblf f8. [ e16 ] \grg f8 [ g8 ] \dblA A4. a8 
 \thrwd d8. [ e16 ] \thrwd d8 [ b8 ] \grg G4. \grd b8 
 \grg a4 \thrwd d4 \dble e8 [ d8 ] \dblc c8 [ b8 ] 
 \grg a4 \thrwd d4 \wslurd d4 
 \break
    } %end repeat

    % Part 2
    % Part 3
    % Part 4

    } %end staff
    
  \header {
    meter = "March"
    piece = "Bonnie Lass o' Fyvie"
    composer = "Traditional"
    parttagline = "Copied by John S. McWilliam"
  }

% \midi {} %Generation of midi files option.

}%end score
