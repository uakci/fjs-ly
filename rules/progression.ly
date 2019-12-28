\version "2.19.22"
\include "../embed-prelude.ly"

keysig = \markup {
  \concat {
    \fontsize #-6 \raise #+1   \number 5
    \fontsize #-6 \raise #-1/2 \number 5
    \parenthesize { \concat {
      \fontsize #-6 \raise #+3/2 \number 5
      \fontsize #-2 \raise #+2   \musicglyph "accidentals.sharp"
      \fontsize #-6 \raise #0    \number 5
      \fontsize #-2 \raise #+1/2 \musicglyph "accidentals.sharp"
      \fontsize #-6 \raise #-1/2 \number 17
      \fontsize #-2 \raise #0    \musicglyph "accidentals.flat"
      \fontsize #-6 \raise #-1   \number 17
      \fontsize #-2 \raise #-1/2 \musicglyph "accidentals.flat"
    } }
  }
}

\score {
  \new PianoStaff <<
    \new Staff {
      \clef treble
      \time 4/4
      \key c \major
      \override Staff.KeySignature.stencil = #ly:text-interface::print
      \override Staff.KeySignature.text = \markup { \keysig }
      << \relative c' {
        \se g'!2 fis \se f! e
      } \\ \relative c' {
        \on e! d d c
      } >>
    }
    \new Staff {
      \clef bass
      \time 4/4
      \key c \major
      \override Staff.KeySignature.stencil = #ly:text-interface::print
      \override Staff.KeySignature.text = \markup { \lower #1 \keysig }
      << \relative c' {
        bes a as g
      } \\ \relative c {
        cis d b c
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
