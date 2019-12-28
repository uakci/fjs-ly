\version "2.18.2"
\include "../embed-prelude.ly"

\score {
  \new Staff {
    \clef treble
    \cadenzaOn
    \hide Stem
    \relative c' {
      \of "7/5" ges'! \os "5/7" fis!
    }
  }
  \layout {
    \context {
      \Staff
      \remove Time_signature_engraver
    }
  }
}

