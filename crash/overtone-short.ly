\version "2.18.2"
\include "../embed-prelude.ly" 

\score {
  \new PianoStaff <<
    \new Staff {
      \clef treble
      \cadenzaOn
      \hide Stem
      \relative c {
        s2 e'4 a \os 5 cis! e \se g! a
      }
    }
    \new Staff {
      \clef bass
      \cadenzaOn
      \hide Stem
      a,4 a s1.
    }
  >>
  \layout {
    \context {
      \Staff
      \remove Time_signature_engraver
    }
  }
}

