\version "2.19.22"
\include "../fjs.ly"
\pointAndClickOff
\header { tagline = ##f }
#(set-global-staff-size 18)

signat = \markup {
  \fontsize #-6 \raise #+3/2 \number "/5"
  \fontsize #-6 \raise #0    \number "/5"
  \fontsize #-6 \raise #+2   \number "/5"
}

hen = #(define-music-function (note) (ly:music?)
  ((oq #{ \markup {
    \musicglyph #"accidentals.natural.arrowup"
  } #}) note))
hes = #(define-music-function (note) (ly:music?)
  ((oq #{ \markup {
    \musicglyph #"accidentals.sharp.arrowdown"
  } #}) note))
p = #(define-music-function (note) (ly:music?)
  ((oq #{ \markup {
    \musicglyph #"scripts.stopped"
  } #}) note))
ps = #(define-music-function (note) (ly:music?)
  ((oq #{ \markup { \concat {
    \musicglyph #"accidentals.sharp"
    \musicglyph #"scripts.stopped"
    } } #}) note))

\score {
  \new StaffGroup <<
    \new PianoStaff \with {
      instrumentName = "FJS "
    } <<
      \new Staff = "upper" {
        \time 2/2
        \clef treble
        \key c \major
        %{\once%} \override Staff.KeySignature.stencil = #ly:text-interface::print
        %{\once%} \override Staff.KeySignature.text = \signat
        \relative c' {
          d2 a' a g a2. f4 e2 d\fermata \breathe \break |
          \stemUp a' d d c b2. c4 b2 a\fermata \breathe \break |
          a4 b c2 \stemNeutral a g a2. f4 e2\fermata d\fermata |
        }
      }
      \new Staff = "lower" {
        \time 2/2
        \clef bass
        \key c \major
        %{\once%} \override Staff.KeySignature.stencil = #ly:text-interface::print
        %{\once%} \override Staff.KeySignature.text = \markup { \lower #1 \signat }
        << \relative c' {
          a2. b4 c d c b c b8 c d2~ d4 \os 5 cis a2 |
          \change Staff = "upper" \stemDown
          d4 e f \on g! e \os 5 dis e f \o "/5" d! c8 d e2 a4 \os 5 gis e2 |
          c4 d e d
          \change Staff = "lower" \stemUp
          c d8 c b4 a8 b c a b c d2
        } \\ \relative c {
          d1 e f2. d4 a'2 d, |
          d1 a' g2 \once \override Rest.staff-position = #0 r4 a e'2 a, |
          f1 e f2. d4 |
        } >>
        <e \os 5 gis \os 5 cis'>2 <d a d'>
        \bar "|."
      }
    >>
    \new PianoStaff \with {
      instrumentName = "Helmholtz-Ellis "
    } <<
      \new Staff = "upper" {
        \time 2/2
        \clef treble
        \key c \major
        \relative c' {
          d2 a' a \hen g a2. \hen f4 e2 d\fermata \breathe |
          \stemUp a' d d \hen c b2. \hen c4 b2 a\fermata \breathe |
          a4 b \hen c2 \stemNeutral a \hen g a2. \hen f4 e2\fermata d\fermata |
        }
      }
      \new Staff = "lower" {
        \time 2/2
        \clef bass
        \key c \major
        << \relative c' {
          a2. b4 \hen c! d c b \hen c! b8 c d2~ d4 \hes cis a2 |
          \change Staff = "upper" \stemDown
          d4 e \hen f! g e \hes dis e \hen f! \hen d! \hen c!8 d e2 a4 \hes gis e2 |
          \hen c!4 d e d
          \change Staff = "lower" \stemUp
          \hen c! d8 c b4 a8 b \hen c! a b c d2
        } \\ \relative c {
          d1 e \hen f!2. d4 a'2 d, |
          d1 a' \hen g!2 \once \override Rest.staff-position = #0 r4 a e'2 a, |
          \hen f!1 e \hen f!2. d4
        } >>
        <e \hes gis \hes cis'>2 <d a d'>
        \bar "|."
      }
    >>
    \new PianoStaff \with {
      instrumentName = "Ben Johnston "
    } <<
      \new Staff = "upper" {
        \time 2/2
        \clef treble
        \key c \major
        \relative c' {
          d2 \p a' \p a \p g \p a2. \p f4 \p e2 d\fermata \breathe |
          \stemUp \p a' d d \p c \p b2. \p c4 \p b2 \p a\fermata \breathe |
          \p a4 \p b \p c2 \stemNeutral \p a \p g \p a2. \p f4 \p e2\fermata d\fermata |
        }
      }
      \new Staff = "lower" {
        \time 2/2
        \clef bass
        \key c \major
        << \relative c' {
          \p a2. \p b4 \p c d c \p b \p c \p b8 c d2~ d4 \ps cis \p a2 |
          \change Staff = "upper" \stemDown
          d4 \p e \p f g \p e \ps dis e \p f \p d \p c8 d \p e2 \p a4 \ps gis \p e2 |
          \p c4 d \p e d
          \change Staff = "lower" \stemUp
          \p c d8 c \p b4 \p a8 b \p c \p a \p b c d2
        } \\ \relative c {
          d1 \p e \p f2. d4 \p a'2 d, |
          d1 \p a' \p g2 \once \override Rest.staff-position = #0 r4 \p a \p e'2 \p a, |
          \p f1 \p e \p f2. d4
        } >>
        <\p e \ps gis \ps cis'>2 <d \p a d'>
        \bar "|."
      }
    >>
  >>
  \layout {
    indent = 3.0\cm
    raggedBottom = ##f
    \context {
      \Score
      % proportionalNotationDuration = #(ly:make-moment 1/8)
      % \override SpacingSpanner.uniform-stretching  = ##t
      % \override SpacingSpanner.strict-note-spacing = ##t
    }
  }
}
