\version "2.18.2"
\include "../embed-prelude.ly"

\score {
  \new Staff {
    \clef treble
    \cadenzaOn
    \hide Stem
    \relative c' {
      e fis \os 5 gis! a b \se d! e
    }
  }
  \layout {
    \context {
      \Staff
      \remove Time_signature_engraver
    }
  }
}

