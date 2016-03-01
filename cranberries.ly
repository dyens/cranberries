\version "2.18.2"

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

global = {
  \key f \minor
  \time 4/4
  \autoBeamOff
}



lead_part = \relative c'' {
  \global
  \dynamicUp
  
  s1*23   
  
  r4. aes8 aes4 g
  
  f8 f4. f4 f8 g (g4) g g  aes (aes2.) r4 r2 aes8 aes4 ees8
  
  (ees) f4 f8 (f) f f f f g g4 g4 aes (aes1) r2  r8 aes8 aes aes
  
  (aes) aes aes aes (aes) g4 ees8 (ees4.) r8 r8 ees8 ees aes (aes) aes (bes4) aes8 g4 f8 (f4.) b8\rest f8 ([g]) f ([g])
  
  aes4. r8 f [g] f [g] f4 r8 ees8 aes4 aes4 (aes4) r8 aes8 aes [bes] aes [g] f4. r8 f8 g f [ees]
  
  f4. r8 f g f [ees] des4 r4 r4 ees c r2. r1
  
  r2 r8 f f ees f g4 ees8 (ees2) r4 g8 g~ \tuplet 3/2 { g4 f ees } \tuplet 3/2 { f g ees~ } ees2 aes2 aes2 
  
  aes4 aes8 aes8 (aes8) aes8 (g4 f) f8 [ees] f4 f8 g (g4) g8 g (g) g g ([aes] aes1)
  
  r2 aes8 aes aes ([g]) f4. r4. f8 f8 (f [g]) g g (g) aes aes4 (aes4.) r8 aes8 [bes] aes [g]
  
  f4. r8 f [g] f [ees] f4. r8 f [g] f [ees] ees2 r4 ees4 ees1


}





soprano = \relative c'' {
  \global 
  
  b1\rest b1\rest b1\rest b2\rest as8 as as [g] 
  
  f2. f8 f (f [g]) g g ([g]) aes aes4 (aes2) b2\rest b2\rest aes8 aes4 ees8
  
  (f) f4 f4 f4 ees8 g4 g g aes (aes2) b2\rest b2\rest b8\rest aes8 aes aes
  
  (aes) aes4 aes8 (aes8) g4 ees8 (ees4.) b'8\rest b8\rest ees,8 ees8 aes8 (aes8) aes (bes4) aes8 g4 f8 (f4) b4\rest f8 ([g] f [g])
  
  aes4. b8\rest f8 ([g] f [g]) aes4. ees8 aes4 aes (aes) b8\rest aes8 aes ([bes]) aes ([g]) f4 b4\rest f8 g f ([ees])
  
  f4 b4\rest f8 g f ([ees]) des4 b'4\rest b4\rest ees, c b'4\rest b2\rest b4.\rest aes8 (c4 ees4)
  
  des2. c4 bes2. c4 (c2.) b4\rest b2\rest c4 ees des2. c4 bes2. c4 (c2.) des8-> [aes] (aes4.) b4\rest aes8 aes8 des
  
  (des2) b2\rest g4 (aes bes8) bes bes c (c) c (ees4) c8 bes4 aes8 (aes4.) b8\rest f ([g]) f ([g])
  
  aes4. b8\rest f [g] f [g] aes4 b8\rest ees, aes4 des4 (c) b8\rest c8 c [ees] c [bes] aes4. b8\rest aes c aes [g]
  
  f4. b8\rest f8 g f [ees] des1 b'1\rest b1\rest b2\rest b8\rest f8 f ees f g4 bes8 (bes4) c8 [des] b4\rest g8 g~ \tuplet 3/2 { aes4 f f } \tuplet 3/2 { f g g~ } g2 c2 c2
  
  c4 c8 c8 (c8) c8 (ees4 des) des8 [c] des4 c8 bes (bes4) bes8 bes (bes) bes bes [c] (c2.) des8-> aes 
  
  (aes4) b4\rest aes8 aes8 aes4 (aes1^"Сопр. закрытым ртом") bes aes4. b8\rest c [ees] c [bes]
  
  aes4. b8\rest aes8 [c] aes [g] aes4. r8 aes [c] aes [g] aes (g4.) b4\rest aes4 aes1
  
  
  
  
  
}

alto = \relative c' {
  \global
  
  c2. c4-> des2-> (des8) ([c] des [c]) (c1) des1->
  
  des1 ees1 ees2. des4 c1
  
  des1 ees1 ees2. des4 c1
  
  des2 des  ees1 c2. ees4 f1
  
  r1 r2 r4 des4 (c1) c1
  
  des1 bes1 c2. (des4 aes4.) aes8 aes4 bes
  
  des8 des4. des4 des8 ees (ees4) ees ees ees (ees2.) des4 c2 r4. ees8 
  
  (ees8) des4 des8 (des) des des des des ees ees4 ees ees (ees1) r2 r8 ees ees ees
  
  (f) f f f (f) f4 ees8 (ees2) (ees8) ees ees ees (ees4) ees c ees c4. s8 f8 ([g]) f ([g])
  
  f4. s8 f8 [g] f [ees] des4 s8 ees ees4 des (c4.) ees8 ees4 ees c4. s8 c8 c8 c4
  
  des4. s8 des des des4 bes1 c2. (des4) (c2.) r4
  
  f1 f2 ees s4 f8 f~ \tuplet 3/2 { f4 f f } \tuplet 3/2 { f g ees~ } ees2 ees2 ees2
  
  ees4 ees8 ees~ ees ees (ees4 des4) des des des8 ees8 (ees4) ees8 ees8~ ees8 ees8 ees4 (ees2.) (des4)
  
  c1  des ees ees2. ees4
  
  c4. s8 c4 c4 des2. des4 ees2 s4 des4 c1 
  
}

tenor = \relative c' {
  \global
  
  f,2 bes-> (bes1) (bes4) aes-> g-> aes-> (aes1)
  
  aes1 bes1 c2. bes4 aes1
  
  aes1 bes1 c2. bes4 aes1
  
  aes1 bes1 c1 c1
  
  aes1 bes1 c2. bes4 aes1
  
  aes1 bes1 aes2. bes4 aes2 (aes4 g)

  aes2. aes4 bes1 c2. bes4 aes4. r8 aes8 aes4 aes8
  
  (aes) aes4 aes8 (aes) aes aes aes bes bes bes4 bes bes (c2) r2 aes1
  
  aes2 des4 aes bes2 (bes8) bes bes c (c4) bes aes g f2 f4 bes
  
  aes1 bes aes2. aes4 aes2 aes4 aes4
  
  aes1 bes (aes2.) (bes4) (aes2.) d,4\rest c'1 (c2) bes  c~ \tuplet 3/2 { c4 c c } c c bes2 aes aes
 
  aes2. bes4 aes1 bes aes2. (bes4 aes2) c8 c c [bes] aes4. r4. aes8 aes (aes [ees']) ees ees (ees) des c4 (c4.) r8 r2
  
  c2 c4 c4 c2. c4 bes1 aes1
  
  
}

bass = \relative c {
  \global
  f1 (f) f-> (f)
  
  des1 ees1 aes1 (aes1)
  
  des,1 ees1 aes1 (aes1)
  
  des,1 ees4 f g2 aes2. g4 f1
  
  des1 ees1 aes2. g4 f2. (ees4)
  
  des1 ees1 <aes, ees'>1 b1\rest
  
  f'1 g aes2. bes4 aes1
  
  des,1 ees1 aes1 (aes2) (aes,2)
  
  des1 ees4 des g2 aes4 g f ees f2 f4 ees
  
  des1 ees ees2. ees4 f2 f4 ees
  
  des1 ees1 (<ees aes,>) (aes,)
  
  <f' c> (<f c>2) <ees bes> <f c>~ \tuplet 3/2 { <f c>4 <f c> <f c> } <f c> <f c> <ees bes>2 <ees aes,> <ees aes,>
  
  <ees aes,>2. <ees bes>4 <des aes>1 <ees g,> <ees aes,>
  
  (aes,2) aes8 ([bes] c [ees] des1) ees1 aes2. ees4
  
  f2 f4 ees4 des2. des4 ees1 <ees aes,>
  
  
  
  
  
  
}



lead_verse = \lyricmode {
  

  And I re mem ber all the things we once shared,
  Wat ching T. V. mo vies on the li ving room arm chair.
  But they say it will work out fine.
  Was it all a waste of time.

  'Cause I knew, I _ knew,
  I'd lose you.
  You'll al ways be spe cial to me,
  Sp ecial to me, to me.

  Will I for get in time,
  
  You said I was on your mind?
  There's no need to ar gue,
  No need to ar gue a ny more.
  
  There is no need to ar gue a ny more.
  
  U... _ _ _ _ _ _ _ _ no need.
  
}









sopranoVerse = \lyricmode {
  
  
  There 's no need to ar gue a ny more.
  
  I gave all I could, but it left me so score.
  And the thing that makes me mad,
  Is the one thing that I had, 
 
  I knew, I knew,
  I'd lose you.
  You'll al ways be spe cial to me,
  Spe cial to me, to me.
  
  U... _ _ _ _ _ _ _ _ _ _ _
  
  But they say U...
  Was it all a waste of time.
  'Cause I knew, I _ knew,
  I'd lose you.
  You'll al ways be spe cial to me,
  
  Sp ecial to me.

  Will I for get in time, ah!
  
  You said I was on your mind?
  There's no need to ar gue,
  No need to ar gue a ny more.
  
  Tu Tu There is _ _ _
  U... _ _ _ _ _ _ _ _ no need.
}

altoVerse = \lyricmode {
  Tu Tu Tu Tu
  
  Tu Tu Tu Tu Tu
  
  Tu Tu Tu Tu Tu
  
  Tu Tu Tu Tu Tu Tu
  
  you be me me me And I re mem ber all the things we once shared,
  
  Tu Tu T. V. mo vies on the li ving room arm chair.
  But they say it will work out fine.
  Was it all a waste of time.

  'Cause I knew, I _ knew,
  I'd lose you.
  You'll al ways be spe cial to 
  
  me, Spe cial to me. Tu
  A A A You said I was on your mind?
  
  There's no need to ar gue, no need to ar gue a ny more. _ Tu
  
  Tu Tu No need, there's no need,  no need, no need.
  
}

tenorVerse = \lyricmode {
  Tu Tu Tu Tu Tu 
  
  Tu Tu Tu Tu Tu
  
  Tu Tu Tu Tu Tu
  
  Tu Tu Tu Tu
  
  Tu Tu Tu Tu Tu
  
  Tu Tu Tu Tu Tu 
  
  Tu Tu Tu Tu Tu Tu
  
  Wat ching T. V. mo vies on the li ving room arm chair.
  
  Tu Tu Work out fine.
  
  Was it all a waste of time.
  _________'Cause I knew.
  
  Tu Tu Tu Tu Tu Tu
  
  Tu Tu 
  
  A A A I was on your mind? There's no need no need Tu Tu
  
  There is no need to ar gue a ny more
  
  Need, there's  no need, no need, Mm.
}

bassVerse = \lyricmode {
  Tu Tu Tu Tu Tu 
  
  Tu Tu Tu
  
  Tu Tu Tu Tu Tu Tu Tu
  
  Tu Tu Tu Tu Tu
  
  Tu Tu Tu Tu Tu Tu Tu Tu
  
  Tu Tu Tu Tu
  
  Work out fine. All a waste of time. _________'Cause I knew 
  
  Tu Tu Tu Tu Tu Tu
  
  Tu Tu A A A I was on your mind? There's no need, no need Tu Tu
  
  U Tu Tu No need, there's no need no need, Mm.
  
  
}











sopranoVoicePart = \new Staff \with {
  instrumentName = "Лид"
  midiInstrument = "choir aahs"
  
  
} { \lead_part }
\addlyrics { \lead_verse }











choirPart = \new ChoirStaff <<
  \new Staff = "sa" \with {
    midiInstrument = "choir aahs"
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
    midiInstrument = "choir aahs"
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




