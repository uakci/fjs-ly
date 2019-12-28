% <img src="../assets/example_10.png" alt="C-D-G-C-D-G-C-D-G, 5: E-A-B-E-A-B-E-A-B, loco: F-G-C-F-G-C-F-G-C, D-G-A-D-G-A-D-G-A">

\version "2.18.2"
\include "../embed-prelude.ly"

\score {
  \new StaffGroup <<
    \override StaffGroup.SystemStartBracket.collapse-height = #4
    \override Score.SystemStartBar.collapse-height = #4
    \new Staff {
      \clef bass
      \time 9/8
      \relative c {
        \stemDown
        \repeat unfold 3 { c8 d' g, }
        \set Staff.ottavation = \markup { \number 5 }
        \repeat unfold 3 { e8 a b }
        \unset Staff.ottavation
        \repeat unfold 3 { f8 g c, }
        \repeat unfold 3 { d8 g a }
        \bar "|."
      }
    }
  >>
  \layout {
    \context {
      \Score
      \remove "Bar_number_engraver"
    }
  }
}

