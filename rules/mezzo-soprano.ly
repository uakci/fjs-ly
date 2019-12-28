\version "2.19.22"
\include "../embed-prelude.ly"

\score {
  \new Staff {
    \clef mezzosoprano
    \cadenzaOn
    \hide Stem
    \key a \major
    %{\once%} \override Staff.KeySignature.stencil = #ly:text-interface::print
    %{\once%} \override Staff.KeySignature.text = \markup {
      \concat {
        \raise #+1/2 \musicglyph "accidentals.sharp"
        \raise #-1   \musicglyph "accidentals.sharp"
        \raise #+1   \musicglyph "accidentals.sharp"
      }
      \concat {
        \fontsize #-6 \raise #0    \number 5
        \fontsize #-6 \raise #-3/2 \number 5
        \fontsize #-6 \raise #+1/2 \number 5
      }
    }
    \relative c' {
      a b cis d e fis gis a
    }
  }
  \layout {
    \context {
      \Staff
      \remove Time_signature_engraver
    }
  }
}
