\version "2.18.2"
\include "../embed-prelude.ly"

\score {
  \new Staff {
    \clef treble
    \time 2/2
    \relative c' {
      \os 5 cis'!2 cis |
      \os 5 cis! \on cis! |
      \os 5 cis! c! |
      \os 5 cis! \ox 5 c! |
      \bar "||"
    }
  }
  \layout {
    \context {
      \Staff
      \remove Time_signature_engraver
    }
  }
}

