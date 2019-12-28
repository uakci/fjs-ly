\version "2.18.2"
\include "../embed-prelude.ly"

\score {
  \new PianoStaff <<
    \new Staff {
      \clef treble
      \key bes \major
      \cadenzaOn
      \new Voice << {
        bes'4 \fi a'! a'2
      } {
        es'4 \se es'! \fi d'!2
      } {
        \fi g'!4 \on g'! f'2 \bar "|"
      } >>
    }
    \new Staff {
      \clef bass
      \key bes \major
      \cadenzaOn
      << {
        \fi d'!4 c' c'2
      } \\ {
        \fi c!4 f, bes,2
      } >>
    }
  >>
  \layout {
    \context {
      \Staff
      \remove Time_signature_engraver
    }
    \context {
      \Voice
    }
  }
}

