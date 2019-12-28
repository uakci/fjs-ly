\version "2.18.2"
\include "../embed-prelude.ly"

% <img src="../assets/exercise_3.png" alt="E♭-B♭-G5-E♭, C5-C5-G5-E♭, A♭-C5-A♭-F5, B♭-B♭-F1-D5, E♭-B♭-G5-E♭">
\score {
  \new PianoStaff <<
    \new Staff {
      \clef treble
      \time 4/4
      \key es \major
      << \relative c' {
        es'4 es \fi f! \fi d! | es1
      } \\ \relative c' {
        \fi g'!4 g as f | \fi g!1
      } >>
    }
    \new Staff {
      \clef bass
      \key es \major
      << \relative c {
        bes'4 \fi c! c bes | bes1
      } \\ \relative c {
        es4 \fi c! as bes | es,1 \bar "|."
      } >>
    }
  >>
  \layout {
    \context {
      \Staff
      \remove Time_signature_engraver
    }
  }
}

