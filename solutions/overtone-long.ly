\version "2.18.2"
\include "../embed-prelude.ly"

\score {
  \new Staff {
    \clef treble
    \cadenzaOn
    \hide Stem
    \relative c, {
      \ottava #-2
      a a'4 e'
      \ottava #0
      a \os 5 cis! e \se g!
      a b \os 5 cis! \o 11 d! e \o 13 f! \se g!
      % \os 5 gis a
    }
  }
  \layout {
    \context {
      \Staff
      \remove Time_signature_engraver
    }
  }
}

