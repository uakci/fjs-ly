\version "2.19.22"
\include "../fjs.ly"
\pointAndClickOff
\header { 
  title = "FJS Intro Music"
  composer = "misotanni"
  tagline = ##f
}
\paper {
  system-separator-markup = \slashSeparator
}
#(set-global-staff-size 18)
% #(set-default-paper-size "a4landscape")

dflatmajor = \markup {
  \concat {
    \raise #0    \musicglyph "accidentals.flat"
    \raise #+3/2 \musicglyph "accidentals.flat"
    \raise #-1/2 \musicglyph "accidentals.flat"
    \raise #+1   \musicglyph "accidentals.flat"
    \raise #-1   \musicglyph "accidentals.flat"
  }
  \concat {
    \fontsize #-6 \raise #-1   \number "/5"
    \fontsize #-6 \raise #+1/2 \number "/5"
    \fontsize #-6 \raise #-3/2 \number "/5"
  }
}

bflatmajor = \markup {
  \concat {
    \raise #0    \musicglyph "accidentals.flat"
    \raise #+3/2 \musicglyph "accidentals.flat"
  }
  \concat {
    \fontsize #-6 \raise #-3/2 \number "5"
    \fontsize #-6 \raise #+1/2 \number "5"
  }
}

dflatprime = \markup {
  \concat {
    \raise #0    \musicglyph "accidentals.flat"
    \raise #+3/2 \musicglyph "accidentals.flat"
    \raise #-1/2 \musicglyph "accidentals.flat"
    \raise #+1   \musicglyph "accidentals.flat"
    \raise #-1   \musicglyph "accidentals.flat"
  }
  \concat {
    \fontsize #-6 \raise #+1   \number "/5"
    \fontsize #-6 \raise #-1   \number "/5"
    \fontsize #-6 \raise #+1/2 \number "/5"
    \fontsize #-6 \raise #-3/2 \number "/5"
    \parenthesize { \concat {
      \fontsize #-6 \raise #+1/2 \number "5"
      \raise #1 \musicglyph "accidentals.natural"
    } }
  }
}

hesf = #(define-music-function (note) (ly:music?)
  ((oq #{ \markup {
    \concat {
      \lower #0.55 \concat {
        \override #'(thickness . 3/2)
        \draw-line #'(0 . 14/6)
        \raise #1/6 \beam #2/3 #2/3 #1/3
      }
      \musicglyph #"accidentals.flat"
    }
  } #}) note))
hen = #(define-music-function (note) (ly:music?)
  ((oq #{ \markup {
    \musicglyph #"accidentals.natural.arrowdown"
  } #}) note))
hes = #(define-music-function (note) (ly:music?)
  ((oq #{ \markup {
    \musicglyph #"accidentals.sharp.arrowdown"
  } #}) note))
hef = #(define-music-function (note) (ly:music?)
  ((oq #{ \markup {
    \musicglyph #"accidentals.flat.arrowup"
  } #}) note))
heff = #(define-music-function (note) (ly:music?)
  ((oq #{ \markup { \concat {
    \musicglyph #"accidentals.flat.arrowup"
    \musicglyph #"accidentals.flat"
  } } #}) note))
bleurgh = #(define-music-function (note) (ly:music?)
  ((oq #{ \markup { \concat {
    \raise #1/6 \musicglyph #"scripts.tenuto"
    \musicglyph #"accidentals.mirroredflat"
    \musicglyph #"accidentals.flat"
  } } #}) note))
hel = #(define-music-function (note) (ly:music?)
  ((oq #{ \markup {
    \musicglyph #"accidentals.sharp.slashslash.stem"
  } #}) note))
helf = #(define-music-function (note) (ly:music?)
  ((oq #{ \markup { \concat {
    \musicglyph #"accidentals.sharp.slashslash.stem"
    \musicglyph #"accidentals.flat"
  } } #}) note))
p = #(define-music-function (note) (ly:music?)
  ((oq #{ \markup {
    \musicglyph #"scripts.stopped"
  } #}) note))
pel = #(define-music-function (note) (ly:music?)
  ((oq #{ \markup { \fontsize #-5 \lower #1/2 \combine
    \lower #1/3 \draw-line #'(0 . 7/4)
    \fontsize #5 \raise #3/2 \arrow-head #Y #UP ##f
  } #}) note))
pelf = #(define-music-function (note) (ly:music?)
  ((oq #{ \markup { \concat {
    \fontsize #-5 \lower #1/2 \combine
      \lower #1/3 \draw-line #'(0 . 7/4)
      \fontsize #5 \raise #3/2 \arrow-head #Y #UP ##f
    \musicglyph #"accidentals.flat"
  } } #}) note))
px = #(define-music-function (note) (ly:music?)
  ((oq #{ \markup { \concat {
    \musicglyph #"accidentals.natural"
    \musicglyph #"scripts.stopped"
  } } #}) note))
ps = #(define-music-function (note) (ly:music?)
  ((oq #{ \markup { \concat {
    \musicglyph #"accidentals.sharp"
    \musicglyph #"scripts.stopped"
  } } #}) note))
pff = #(define-music-function (note) (ly:music?)
  ((oq #{ \markup { \concat {
    \musicglyph #"accidentals.flatflat"
    \raise #1/6 \musicglyph #"scripts.tenuto"
  } } #}) note))
pseven = #(define-music-function (note) (ly:music?)
  ((oq #{ \markup { \concat {
    \combine
      \raise #29/24 \right-align \beam #2/3 #2/3 #1/3
      \musicglyph #"accidentals.flat"
    \musicglyph #"scripts.stopped"
  } } #}) note))
oops = #(define-music-function (note) (ly:music?)
  ((oq #{ \markup { \concat { \lower #5/4 \fontsize #5 "*" \musicglyph #"accidentals.flat" } } #}) note))

edo = \new PianoStaff \with {
  instrumentName = #"12-EDO "
} <<
  \new Staff {
    \clef treble
    \time 4/4
    \tempo 4 = 120
    \key bes \major
    \relative c' {
      <d es g bes>2 <c es g a> |
      <c d f a>2. f8 g |
      <c, des f as>2
      << \relative c' { g'4 as8 g } \\
         { <bes des f>2 } >> |
      <bes c es g>2. es8 f |
      << \relative c' { ges'4 as8 ges f4 es8 e } \\
         { <bes, ces es>2 <as ces es> } >> |
      <as bes des f>2. des8 es |
      <as, bes des f>2\fermata <bes des es ges>\fermata |
      <a c es f>1\fermata |
      \once \override Staff.TimeSignature.break-visibility = #all-invisible
    }
  }
  \new Staff {
    \clef bass
    \time 4/4
    \key bes \major
    \relative c {
      c2 f | bes,1 | bes2 es | as,1 |
      as2 des | ges,1 | ges2 es | f1 |
      \bar "||" 
      \once \override Staff.TimeSignature.break-visibility = #all-invisible
      \break
    }
  }
>>

jifjs = {
  \new StaffGroup \with {
    shortInstrumentName = #"FJS "
  } <<
    \new Staff {
      \clef treble
      \time 4/4
      \relative c' {
        \tempo 4 = 80
        \once \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
        \key bes \major
        <bes \of 7 as'!>2\f <f' bes>4 <c as'> |
        <bes f'>2 \tuplet 3/2 { bes'4 c \fi d! } |
        \acciaccatura { bes,8 f' bes }
        \o 11 es!2 bes4 c |
        <bes, f' \fi d'!>2\arpeggio
        r8 f' bes c |
        \bar "||" \break
        \tempo 4 = 120
        \key des \major
        \once \override Staff.KeySignature.stencil = #ly:text-interface::print
        \once \override Staff.KeySignature.text = \dflatmajor
        des2 c4 des8 c |
        bes4. as8 f4 as8 c |
        bes4. c8 des4 c8 bes |
        as bes c4 f, \ox 5 d'!8 es |
        \bar "||" \break
        \key bes \major
        \once \override Staff.KeySignature.stencil = #ly:text-interface::print
        \once \override Staff.KeySignature.text = \bflatmajor
        f2 bes,,4 f'8 bes |
        \o 11 es4 d c8 bes c4 |
        d4. es8 d4 c |
        bes bes, f' bes |
        \of 7 as!2. bes8 as |
        f2. bes8 c |
        \bar "||" \break
        \key des \major
        \once \override Staff.KeySignature.stencil = #ly:text-interface::print
        \once \override Staff.KeySignature.text = \dflatmajor
        des2 c4 des8 c |
        bes4. \O "/5" "accidentals.flatflat" beses!8 as4. \ox 5 a!16 \o 31 a! |
        bes1 |
        \acciaccatura \tweak Accidental.Y-offset #+1/5 \o 101 ges!8 f2 r2\fermata |
        \bar "||" \break
        \key des \major
        \override Staff.KeySignature.stencil = #ly:text-interface::print
        \override Staff.KeySignature.text = \dflatprime
        r1 r |
        bes,8\mf d bes' c d bes bes, des! |
        ges des bes' des ges des bes ges |
        es c as es' as es c f |
        as f as c f c as f |
        bes,\f d bes' c d f bes, ges' |
        bes bes, ges' bes ges bes, ges des |
        c as c as' c es c as' |
        f c as c as f c as |
        \bar "||" \break
        \revert Staff.KeySignature.stencil
        \key bes \major
        r1 r r r r
        \bar "|."
      }
    }
    \new PianoStaff <<
      \new Staff {
        \clef treble
        \time 4/4
        \relative c' {
          \once \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
          \key bes \major
          <bes f'>1~ | q~ | q~ | q |
          \key des \major
          \once \override Staff.KeySignature.stencil = #ly:text-interface::print
          \once \override Staff.KeySignature.text = \dflatmajor
          <f' bes des>2 <\o "/5" es! as c> |
          <des ges bes>1 | <des f as> | <c f as> |
          \key bes \major
          \once \override Staff.KeySignature.stencil = #ly:text-interface::print
          \once \override Staff.KeySignature.text = \bflatmajor
          <bes f' bes>1~ | q |
          <g d' g>~ | q |
          <c \o 11 es! \of 7 as!> |
          <d f bes>
          \key des \major
          \once \override Staff.KeySignature.stencil = #ly:text-interface::print
          \once \override Staff.KeySignature.text = \dflatmajor
          <f bes des>2 <\o "/5" es! as c> |
          <des ges bes> <c f as> |
          <bes es ges>1~ | q2 r |
          \key des \major
          \override Staff.KeySignature.stencil = #ly:text-interface::print
          \override Staff.KeySignature.text = \dflatprime
          \repeat unfold 10 r1
          \revert Staff.KeySignature.stencil
          \key bes \major
          <bes \fi d! f>4 r8 q4 r8 <bes \of "/5" des! \of "/5" ges!>4~ |
          q4. r8 q4. r8 | <bes es \fi g!>4 r8 q4 r8 <bes es \of 11 as!>4~ |
          q4. r8 <c f \ox 5 a!>4. r8 | <bes f' bes>1\fermata |
        }
      }
      \new Staff {
        \clef bass
        \time 4/4
        \relative c {
          \once \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
          \key bes \major
          <bes f'>1~ | q~ | q~ | q |
          \key des \major
          \once \override Staff.KeySignature.stencil = #ly:text-interface::print
          \once \override Staff.KeySignature.text = \markup { \lower #1 \dflatmajor }
          ges'2 f | es1 des c |
          \key bes \major
          \once \override Staff.KeySignature.stencil = #ly:text-interface::print
          \once \override Staff.KeySignature.text = \markup { \lower #1 \bflatmajor }
          bes1~ | bes | bes1~ | bes | bes1~ | bes |
          \key des \major
          \once \override Staff.KeySignature.stencil = #ly:text-interface::print
          \once \override Staff.KeySignature.text = \markup { \lower #1 \dflatmajor }
          ges'2 f | es des |
          \of "/5" ces!1~ | ces2 r |
          \key des \major
          \override Staff.KeySignature.stencil = #ly:text-interface::print
          \override Staff.KeySignature.text = \markup { \lower #1 \dflatprime }
          bes1~\f \repeat unfold 8 bes~ bes
          \revert Staff.KeySignature.stencil
          \key bes \major
          <bes f'>1~ q~ q~ q~ q |
        }
      }
    >>
  >>
}

jihe = {
  \new StaffGroup \with {
    shortInstrumentName = #"HE "
  } <<
    \new Staff {
      \clef treble
      \time 4/4
      \relative c' {
        \once \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
        \key bes \major
        <bes \hesf as'!>2\f <f' bes>4 <c as'> |
        <bes f'>2 \tuplet 3/2 { bes'4 c \hen d! } |
        \acciaccatura { bes,8 f' bes }
        \hel es!2 bes4 c |
        <bes, f' \hen d'!>2\arpeggio
        r8 f' bes c |
        \bar "||"
        \key des \major
        \hef des!2 c4 des8 c |
        bes4. \hef as!8 f4 as8 c |
        bes4. c8 des4 c8 bes |
        \hef as! bes c4 f, \hen d'!8 es |
        \bar "||"
        \key bes \major
        f2 bes,,4 f'8 bes |
        \hel es!4 \hen d! c8 bes c4 |
        \hen d!4. es8 d4 c |
        bes bes, f' bes |
        \hesf as!2. bes8 as |
        f2. bes8 c |
        \bar "||"
        \key des \major
        \hef des!2 c4 des8 c |
        bes4. \heff beses!8 \hef as!4. \hen a!16 \bleurgh beses! |
        bes1 |
        \acciaccatura \oops ges!8 f2 r2\fermata |
        \bar "||"
        \key des \major
        r1 r |
        bes,8\mf \hen d! bes' c \hen d! bes bes, \hef des! |
        \hef ges! \hef des! bes' \hef des! \hef ges! des bes ges |
        \hef es! c \hef as! es' \hef as! es c f |
        \hef as! f as c f c as f |
        bes,\f \hen d! bes' c \hen d! f bes, \hef ges'! |
        bes bes, \hef ges'! bes ges bes, \hef ges! \hef des! |
        c \hef as! c \hef as'! c \hef es! c \hef as'! |
        f c \hef as! c as f c \hef as! |
        \bar "||"
        \key bes \major
        r1 r r r r
        \bar "|."
      }
    }
    \new PianoStaff <<
      \new Staff {
        \clef treble
        \time 4/4
        \relative c' {
          \once \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
          \key bes \major
          <bes f'>1~ | q~ | q~ | q |
          \key des \major
          <f' bes \hef des!>2 <\hef es! \hef as! c> |
          <\hef des! \hef ges! bes>1 | <\hef des! f \hef as!> | <c f \hef as!> |
          \key bes \major
          <bes f' bes>1~ | q |
          <\hen g! \hen d'! \hen g!>~ | q |
          <c \hel es! \hesf as!> |
          <\hen d! f bes>
          \key des \major
          <f bes \hef des!>2 <\hef es! \hef as! c> |
          <\hef des! \hef ges! bes> <c f \hef as!> |
          <bes es \hef ges!>1~ | q2 r |
          \key des \major
          \repeat unfold 10 r1
          \key bes \major
          <bes \hen d! f>4 r8 q4 r8 <bes \hef des! \hef ges!>4~ |
          q4. r8 q4. r8 | <bes es \hen g!>4 r8 q4 r8 <bes es \helf as!>4~ |
          q4. r8 <c f \hen a!>4. r8 | <bes f' bes>1\fermata |
        }
      }
      \new Staff {
        \clef bass
        \time 4/4
        \relative c {
          \once \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
          \key bes \major
          <bes f'>1~ | q~ | q~ | q |
          \key des \major
          \hef ges'!2 f | es1 \hef des! c |
          \key bes \major
          bes1~ | bes | bes1~ | bes | bes1~ | bes |
          \key des \major
          \hef ges'!2 f | es \hef des! |
          \hef ces!1~ | ces2 r |
          \key des \major
          bes1~\f \repeat unfold 8 bes~ bes
          \key bes \major
          <bes f'>1~ q~ q~ q~ q |
        }
      }
    >>
  >>
}

jibj = {
  \new StaffGroup \with {
    shortInstrumentName = #"BJ "
  } <<
    \new Staff {
      \clef treble
      \time 4/4
      \relative c' {
        \once \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
        \key bes \major
        <bes \pseven as'!>2\f <\p f'! bes>4 <\p c! as'> |
        <bes \p f'!>2 \tuplet 3/2 { bes'4 \p c! d } |
        \acciaccatura { bes,8 \p f'! bes }
        \pel es!2 bes4 \p c! |
        <bes, \p f'! d'>2\arpeggio
        r8 f' bes \p c! |
        \bar "||"
        \key des \major
        des2 \p c!4 des8 c |
        bes4. \p as!8 \p f!4 as8 \p c! |
        bes4. \p c!8 des4 c8 bes |
        \p as! bes \p c!4 \p f,! d'8 es |
        \bar "||"
        \key bes \major
        \p f!2 bes,,4 \p f'!8 bes |
        \pel es!4 d \p c!8 bes c4 |
        d4. es8 d4 \p c! |
        bes bes, \p f'! bes |
        \pseven as!2. bes8 as |
        \p f!2. bes8 \p c! |
        \bar "||"
        \key des \major
        des2 \p c!4 des8 c |
        bes4. \pff beses!8 \p as!4. \px a!16 \o 31 a! |
        bes1 |
        \acciaccatura \oops ges!8 \p f!2 r2\fermata |
        \bar "||"
        \key des \major
        r1 r |
        bes,8\mf d bes' \p c! d bes bes, des! |
        ges des bes' des ges des bes ges |
        \p es! \p c! \p as! es' \p as! es c \p f! |
        \p as! \p f! as \p c! \p f! c as f |
        bes,\f d bes' \p c! d \p f! bes, ges' |
        bes bes, ges' bes ges bes, ges des |
        \p c! \p as! c \p as'! \p c! \p es! c \p as'! |
        \p f! \p c! \p as! c as \p f! \p c! \p as! |
        \bar "||"
        \key bes \major
        r1 r r r r
        \bar "|."
      }
    }
    \new PianoStaff <<
      \new Staff {
        \clef treble
        \time 4/4
        \relative c' {
          \once \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
          \key bes \major
          <bes \p f'!>1~ | q~ | q~ | q |
          \key des \major
          <\p f'! bes des>2 <\p es! \p as! \p c!> |
          <des ges bes>1 | <des \p f! \p as!> | <\p c! \p f! \p as!> |
          \key bes \major
          <bes \p f'! bes>1~ | q |
          <g d' g>~ | q |
          <\p c! \pel es! \pseven as!> |
          <d \p f! bes>
          \key des \major
          <\p f! bes des>2 <\p es! \p as! \p c!> |
          <des ges bes> <\p c! \p f! \p as!> |
          <bes es ges>1~ | q2 r |
          \key des \major
          \repeat unfold 10 r1
          \key bes \major
          <bes d \p f!>4 r8 q4 r8 <bes des ges>4~ |
          q4. r8 q4. r8 | <bes es g>4 r8 q4 r8 <bes es \pelf as!>4~ |
          q4. r8 <\p c! \p f! \px as!>4. r8 | <bes \p f'! bes>1\fermata |
        }
      }
      \new Staff {
        \clef bass
        \time 4/4
        \relative c {
          \once \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
          \key bes \major
          <bes \p f'!>1~ | q~ | q~ | q |
          \key des \major
          ges'2 \p f! | es1 des \p c! |
          \key bes \major
          bes1~ | bes | bes1~ | bes | bes1~ | bes |
          \key des \major
          ges'2 \p f! | es des |
          ces1~ | ces2 r |
          \key des \major
          bes1~\f \repeat unfold 8 bes~ bes
          \key bes \major
          <bes \p f'!>1~ q~ q~ q~ q |
        }
      }
    >>
  >>

}

ji = << \jifjs \jihe \jibj >>

\score {
  { \edo \ji }
  \layout {
    indent = 30\mm
    short-indent = 15\mm
    \context {
      \Staff \RemoveEmptyStaves
    }
  }
}
