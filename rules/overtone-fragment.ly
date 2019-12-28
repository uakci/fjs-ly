\version "2.19.22"
\include "../embed-prelude.ly"

\score {
  \new Staff {
    \clef alto
    \cadenzaOn
    \hide Stem
    \key f \major
    \override Staff.KeySignature.stencil = #ly:text-interface::print
    \override Staff.KeySignature.text = \markup {
      \concat {
        \raise #-1/2 \musicglyph "accidentals.flat"
        \raise #+1/2 \musicglyph "accidentals.flat"
      }
      \concat {
        \fontsize #-6 \raise #-1   \number 11
        \fontsize #-6 \raise #+1/2 \number 5
        \fontsize #-6 \raise #-3/2 \number 5
        \fontsize #-6 \raise #0    \number 13
      }
      \concat {
        \fontsize #-6 \raise #+1/2 \number 7
        \parenthesize {
          \raise #+1   \musicglyph "accidentals.flat"
        }
      }
    }
    \relative c {
      f g a bes c d es e! f
    }
  }
  \layout {
    \context {
      \Staff
      \remove Time_signature_engraver
    }
  }
}
