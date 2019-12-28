\version "2.18.2"
\include "../embed-prelude.ly"

\score {
  \new Staff {
    \clef treble
    \cadenzaOn
    \hide Stem
    \relative c' {
      d fis g a cis d
    }
  }
  \layout {
    \context {
      \Staff
      \remove Time_signature_engraver
    }
  }
}

