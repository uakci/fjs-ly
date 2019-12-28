\version "2.19.22"
\include "../fjs.ly"
\paper {
  indent = 0\mm
  line-width = 150\mm
  oddFooterMarkup = ##f
  oddHeaderMarkup = ##f
  bookTitleMarkup = ##f
  scoreTitleMarkup = ##f
}

\score {
  \new PianoStaff <<
    \new Staff {
      \clef treble
      \time 4/4
      \key e \major
      << \relative c' {
        \of "/25" bes'4. \os 5 ais8~ ais2 |
        \of "/25" as4.    \o 5 gis8~ gis2 |
      } \\ \relative c' {
        \of "/25" es4.    \o 5 dis8~ dis2 |
        \of "/25" des4.   \o 5 cis8~ cis2 |
      } >>
      \new Voice <<
        \relative c' {
          dis4~ dis8*2/3 \ox "/11" d cis \o "/5" b2 |
          \se b1 |
        }
        \relative c' {
          \o "/5" b4~ b8*2/3 \o "/11" b ais gis2 |
          gis1 |
        }
      >>
    }
    \new Staff {
      \clef bass
      \time 4/4
      \key e \major
      \new Voice <<
        \relative c {
          \ox "/5" g'4. fis8~ fis2 |
          \ox "/5" f4.  e8~   e2 |
        } \\
        \relative c {
          \ox "/5" c4. b8~ b2 |
          \of "/5" b4. a8~ a2 |
        }
      >>
      << \relative c {
        \o "/5" fis1 s1
      } \\ \relative c {
        <cis, gis' cis>1~ q1
      } \\ \relative c {
        \o "/5" e1 s1
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
