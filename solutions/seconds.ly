\version "2.18.2"
\include "../embed-prelude.ly"

\score {
  \new Staff {
    \clef treble
    \cadenzaOn
    \relative c' {
      \new Voice << \relative c'' {
        \of "11/5" b!4 \fi b! \on b! \o "/7" b!
      } \relative c'' {
        a4 a a a
      } >>
    }
  }
  \layout {
    \context {
      \Staff
      \remove Time_signature_engraver
    }
    \context {
      \Voice
      \hide Stem
    }
  }
}

