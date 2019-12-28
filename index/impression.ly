\version "2.19.22"
\include "../embed-prelude.ly"

\score {
  \new PianoStaff <<
    \new Staff {
      \clef treble
      \time 4/4
      \key e \major
      \relative c' {
        <\of "/25" es!  \of "/25" bes'!>4. <\o 5 dis! \os 5 ais'!>8~ q2 |
        <\of "/25" des! \of "/25" as'! >4. <\o 5 cis! \o  5 gis'!>8~ q2 |
        <\o "/5" b! dis>4~ q8*2/3 <\o "/11" b! \ox "/11" d!> <ais cis> <gis b>2 |
        <gis \se b!>1
      }
    }
    \new Staff {
      \clef bass
      \time 4/4
      \key e \major
      \relative c {
        <\ox "/5" c! \ox "/5" g'!>4. <b fis'>8~ q2 |
        <\of "/5" b! \ox "/5" f'!>4. <a e'>8~ q2 |
      }
      << \relative c {
        <\o "/5" e! \o "/5" fis!>1 s1
      } \\ \relative c {
        <cis, gis' cis>1~ q1
      } >>
      \bar "|."
    }
  >>
  \layout {
    \context {
      \Staff
    }
  }
}
