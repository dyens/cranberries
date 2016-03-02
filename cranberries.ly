\version "2.18.2"



\include "definitions.ly"
\header {
%  dedication = "Посвящение"
  title = "No need to argue anymore"
%  subtitle = "подзаголовок"
%  subsubtitle = "подподазголовок"
%  instrument = "инструмент"
  composer = " The Cranberries"
  arranger = "арр. Николаев С. А."
%  poet = "пожт"
%  meter = "размер"
%  piece = "названеывапор"
%  opus = "опус"
  % Удалить строку версии LilyPond 
  tagline = ##f
  
  
}

\paper {
  #(set-paper-size "a4")
}

\markup { \vspace #1 }

sopranoVoicePart = \new Staff \with {
  instrumentName = "Лид"
} { \lead_part }
\addlyrics { \lead_verse }


choirPart = \new ChoirStaff <<
  \new Staff = "sa" \with {
    instrumentName = \markup \center-column { "Сопрано" "Альт" }
  } <<
    \new Voice = "soprano" { \voiceOne \soprano }
    \new Voice = "alto" { \voiceTwo \alto }
  >>
  \new Lyrics \with {
    alignAboveContext = "sa"
    \override VerticalAxisGroup #'staff-affinity = #DOWN
  } \lyricsto "soprano" \sopranoVerse
  \new Lyrics \lyricsto "alto" \altoVerse
  \new Staff = "tb" \with {
    instrumentName = \markup \center-column { "Тенор" "Бас" }
  } <<
    \clef bass
    \new Voice = "tenor" { \voiceOne \tenor }
    \new Voice = "bass" { \voiceTwo \bass }
  >>
  \new Lyrics \with {
    alignAboveContext = "tb"
    \override VerticalAxisGroup #'staff-affinity = #DOWN
  } \lyricsto "tenor" \tenorVerse
  \new Lyrics \lyricsto "bass" \bassVerse
>>




girlPart = \new ChoirStaff <<
  \new Staff = "sa" \with {
    instrumentName = \markup \center-column { "Сопрано" "Альт" }
  } <<
    \new Voice = "soprano" { \voiceOne \soprano }
    \new Voice = "alto" { \voiceTwo \alto }
  >>
  \new Lyrics \with {
    alignAboveContext = "sa"
    \override VerticalAxisGroup #'staff-affinity = #DOWN
  } \lyricsto "soprano" \sopranoVerse
  \new Lyrics \lyricsto "alto" \altoVerse
>>






boyPart = \new ChoirStaff <<
  \new Staff = "tb" \with {
    instrumentName = \markup \center-column { "Тенор" "Бас" }
  } <<
    \clef bass
    \new Voice = "tenor" { \voiceOne \tenor }
    \new Voice = "bass" { \voiceTwo \bass }
  >>
  \new Lyrics \with {
    alignAboveContext = "tb"
    \override VerticalAxisGroup #'staff-affinity = #DOWN
  } \lyricsto "tenor" \tenorVerse
  \new Lyrics \lyricsto "bass" \bassVerse
>>






\book {
  \bookOutputSuffix "Choir"
  \score {
    <<
      \sopranoVoicePart
      \choirPart
    >>
  
    \midi {
      \tempo 4=100
    }
  
    \layout { 
      \context {
        \Staff \RemoveEmptyStaves
        \override VerticalAxisGroup.remove-first = ##t
      }  
  
    }
  }
}


\book {
  \bookOutputSuffix "Girl"
  \score {
    <<
      \sopranoVoicePart
      \girlPart
    >>
  
    \midi {
      \tempo 4=100
    }
  
    \layout { 
      \context {
        \Staff \RemoveEmptyStaves
        \override VerticalAxisGroup.remove-first = ##t
      }  
  
    }
  }
}



\book {
  \bookOutputSuffix "Boy"
  \score {
    <<
      \boyPart
    >>
  
    \midi {
      \tempo 4=100
    }
  
    \layout { 
      \context {
        \Staff \RemoveEmptyStaves
        \override VerticalAxisGroup.remove-first = ##t
      }  
  
    }
  }
}



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Генерация мидишек


\book {
  \bookOutputSuffix "Lead"
  \score {
    <<
      \lead_part
    >>
  
    \midi {
      \tempo 4=100
    }
  
    \layout { 
      \context {
        \Staff \RemoveEmptyStaves
        \override VerticalAxisGroup.remove-first = ##t
      }  
  
    }
  }
}

sopranoPart = \new Staff \with {
  instrumentName = "Сопрано"    
} { \soprano }
\addlyrics { \sopranoVerse }

\book {
  \bookOutputSuffix "Soprano"
  \score {
    <<
      \sopranoPart
    >>
  
    \midi {
      \tempo 4=100
    }
  
    \layout { 
      \context {
        \Staff \RemoveEmptyStaves
        \override VerticalAxisGroup.remove-first = ##t
      }  
  
    }
  }
}

altoPart = \new Staff \with {
  instrumentName = "Альт"   
} { \alto }
\addlyrics { \altoVerse }

\book {
  \bookOutputSuffix "Alto"
  \score {
    <<
      \altoPart
    >>
  
    \midi {
      \tempo 4=100
    }
  
    \layout { 
      \context {
        \Staff \RemoveEmptyStaves
        \override VerticalAxisGroup.remove-first = ##t
      }  
  
    }
  }
}


tenorPart = \new Staff \with {
  instrumentName = "Тенор"   
} { 
  \clef "bass"
  \tenor 
}
\addlyrics { \tenorVerse }

\book {
  \bookOutputSuffix "Tenor"
  \score {
    <<
      \tenorPart
    >>
  
    \midi {
      \tempo 4=100
    }
  
    \layout { 
      \context {
        \Staff \RemoveEmptyStaves
        \override VerticalAxisGroup.remove-first = ##t
      }  
  
    }
  }
}


bassPart = \new Staff \with {    
} { 
  \clef "bass"
  \bass 
}
\addlyrics { \bassVerse }

\book {
  \bookOutputSuffix "Bass"
  \score {
    <<
      \bassPart
    >>
  
    \midi {
      \tempo 4=100
    }
  
    \layout { 
      \context {
        \Staff \RemoveEmptyStaves
        \override VerticalAxisGroup.remove-first = ##t
      }  
  
    }
  }
}

