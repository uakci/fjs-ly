\version "2.19.22"
\include "../embed-prelude.ly"

keysig = \markup {
  \concat {
    \raise #+2   \musicglyph "accidentals.sharp"
    \raise #+1/2 \musicglyph "accidentals.sharp"
    \raise #+5/2 \musicglyph "accidentals.sharp"
  }
  \concat {
    \fontsize #-6 \raise #+3/2 \number 5
    \fontsize #-6 \raise #0    \number 5
    \fontsize #-6 \raise #+2   \number 5
  }
}

% <img src="../assets/example_9.png" alt="♯FCG F5 C5 G5: A-E-C-A, E-E-B-G, A-E-C-A, G7-E-C-A, ♯FC: F-A-D-A, G-B-D-G, A-A-D-F, A-B-E-G♯, A-C♯-E-G7, D-A-D-F♯">
\score {
  \new PianoStaff <<
    \new Staff {
      \clef treble
      \time 4/4
      \once \override Staff.KeySignature.stencil = #ly:text-interface::print
      \once \override Staff.KeySignature.text = \keysig
      \key a \major
      << \relative c'' {
        a4 gis a a
        \key d \major
        a g fis gis
        \se g!2 fis
      } \\ \relative c' {
        cis4 b cis cis
        d d d e
        e2 d
      } >>
    }
    \new Staff {
      \clef bass
      \time 4/4
      \once \override Staff.KeySignature.stencil = #ly:text-interface::print
      \once \override Staff.KeySignature.text = \markup { \lower #1 \keysig }
      \key a \major
      << \relative c {
        e4 e e e
        \key d \major
        a b a b
        cis2 a
      } \\ \relative c {
        a4 e a \ox 7 g!
        fis g a a
        a2 d
      } >>
      \bar "|."
    }
  >>
  \layout {
    \context {
      \Staff
      \remove Time_signature_engraver
    }
  }
}
