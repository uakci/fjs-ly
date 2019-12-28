\version "2.19.22"
\include "../fjs.ly"

\pointAndClickOff

\header {
  title = "Prelude in C major"
  composer = "Johann Sebastian Bach"
  arranger = \markup {\italic {arranged by} misotanni}
  opus = "BWV 846"
  tagline = #f
}

\score {
  \new PianoStaff <<
    \new Staff = "upper" {
      \time 4/4
      \clef treble
      \key c \major
      %{\once%} \override Staff.KeySignature.stencil = #ly:text-interface::print
      %{\once%} \override Staff.KeySignature.text = \markup {
        \fontsize #-6 \raise #-1/2 \number 5
        \fontsize #-6 \raise #+1   \number 5
        \fontsize #-6 \raise #-1   \number 5
      }
      \relative c''' {
        | r8 g,16 c e g, c e                        r8 g,16 c e g, c e         
        | r8 a,16 \fi d! f a, d f                   r8 a,16 d f a, d f                   
        | r8 g,16 d' \se f! g, d' f                 r8 g,16 d' f g, d' f                 
        | r8 g,16 c e g, c e                        r8 g,16 c e g, c e                       
        | r8 a,16 e' a a, e' a                      r8 a,16 e' a a, e' a                     
        | r8 \os 5 f,!16 \on a! d f, a d            r8 f,16 a d f, a d             
        | r8 g,16 d' g g, d' g                      r8 g,16 d' g g, d' g                     
        | r8 e,16 g c e, g c                        r8 e,16 g c e, g c                       
        | r8 e,16 g c e, g c                        r8 e,16 g c e, g c                       
        | r8 d,16 \os 5 f! \se c'! d, f c'          r8 d,16 f c' d, f c'           
        | r8 d,16 g b d, g b                        r8 d,16 g b d, g b                       
        | r8 e,16 \o 35 g! \os 25 cis! e, g cis     r8 e,16 g cis e, g cis  
        | r8 \fi d,!16 a' \fi d! d, a' d            r8 d,16 a' d d, a' d       
        | r8 d,16 \se f! b d, f b                   r8 d,16 f b d, f b                   
        | r8 c,16 g' c c, g' c                      r8 c,16 g' c c, g' c                     
        | r8 a,16 c f a, c f                        r8 a,16 c f a, c f                       
        | r8 a,16 c f a, c f                        r8 a,16 c f a, c f                       
        | r8 g,16 b \se f'! g, b f'                 r8 g,16 b f' g, b f'                 
        | r8 g,16 c e g, c e                        r8 g,16 c e g, c e                       
        | r8 \of 7 b!16 c e b c e                   r8 b16 c e b c e             
        | r8 a,16 c e a, c e                        r8 a,16 c e a, c e                       
        | r8 \on a,!16 \se c! \of 17 es! a, c es    r8 a,16 c es a, c es      
        | r8 b16 c d b c d                          r8 b16 c d b c d                         
        | r8 g,16 b d g, b d                        r8 g,16 b d g, b d                       
        | r8 g,16 c e g, c e                        r8 g,16 c e g, c e                       
        | r8 g,16 c f g, c f                        r8 g,16 c f g, c f                       
        | r8 g,16 b \se f'! g, b f'                 r8 g,16 b f' g, b f'                   
        | r8 \on a,!16 \se c! \os 5 fis! a, c fis   r8 a,16 c fis a, c fis     
        | r8 g,16 c g' g, c g'                      r8 g,16 c g' g, c g'                     
        | r8 g,16 c f g, c f                        r8 g,16 c f g, c f                       
        | r8 g,16 b \se f'! g, b f'                 r8 g,16 b f' g, b f'                   
        | r8 g,16 \of 7 bes! e g, bes e             r8 g,16 bes e g, bes e        
        | r8 f,16 a c f c a \change Staff = "lower" \stemUp c a f a f \fi d! f d
        \change Staff = "upper" \stemNeutral
        | r8 g'16 b d \se f! d b d b g b d, \se f! e\prall d
        | <e g c>1\fermata |
      }
    }
    \new Staff = "lower" {
      \time 4/4
      \clef bass
      \key c \major
      %{\once%} \override Staff.KeySignature.stencil = #ly:text-interface::print
      %{\once%} \override Staff.KeySignature.text = \markup {
        \fontsize #-6 \raise #-3/2 \number 5
        \fontsize #-6 \raise #0    \number 5
        \fontsize #-6 \raise #-4/2 \number 5
      }
      << \relative c' {
        | r16 e4.. r16 e4.. | r16 \fi d!4.. r16 d4..
        | r16 d4.. r16 d4.. | r16 e4.. r16 e4..
        | r16 e4.. r16 e4.. | r16 d4.. r16 d4..
        | r16 d4.. r16 d4.. | r16 c4.. r16 c4..
        | r16 c4.. r16 c4.. | r16 \on a!4.. r16 a4..
        | r16 b4.. r16 b4.. | r16 \of "5,17" b!4.. r16 b4.. |
        | r16 a4.. r16 a4.. | r16 \sef a!4.. r16 a4.. |
        | r16 g4.. r16 g4.. | r16 f4.. r16 f4..
        | r16 f4.. r16 f4.. | r16 d4.. r16 d4.. 
        | r16 e4.. r16 e4.. | r16 g4.. r16 g4.. 
        | r16 f4.. r16 f4.. | r16 \se c!4.. r16 c4.. 
        | r16 \se f!4.. r16 f4.. | r16 \se f!4.. r16 f4.. 
        | r16 e4.. r16 e4.. | r16 d4.. r16 d4.. 
        | r16 d4.. r16 d4.. | r16 \sef e!4.. r16 e4.. 
        | r16 e4.. r16 e4.. | r16 d4.. r16 d4.. 
        | r16 d4.. r16 d4.. | r16 c4.. r16 c4.. 
        | r16 c2... | r16 b2...
        | c1 |
      } \\ \relative c' {
        | c2 c | c c | b b | c c
        | c2 c | \se c! c | b b | b b
        | a a | d, d | g g | \o 35 g! g 
        | f f | \se f! f | e e | e e 
        | \fi d! d | g, g | c c | c c 
        | f, f | \os 5 fis! fis | \sef as! as | g g
        | g g | g g | g g | g g
        | g g | g g | g g | c, c
        | c1 | c1 | c1 | \bar "|."
      } >>
    }
  >>
  %\midi {}
  \layout {}
}
