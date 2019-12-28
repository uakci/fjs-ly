\version "2.18.2"
\include "../embed-prelude.ly"

\score {
  \new Staff {
    \clef treble
    \cadenzaOn
    \relative c' {
      \hide Stem
      c cis d dis e f fis g gis a bes b c
    }
  }
  \layout {
    \context {
      \Staff
      \remove Time_signature_engraver
    }
  }
}

