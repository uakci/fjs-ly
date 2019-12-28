\version "2.18.2"
\include "../embed-prelude.ly"
% \paper {
%   #(define fonts
%     (make-pango-font-tree "TeX Gyre Schola" "" ""
%                           (/ staff-height pt 20)))
% }

oo = #(lambda (s) (oq #{ \markup { \raise #-1/2 \fontsize #0 #s } #}))
phi = #(oo "φ")
pi  = #(oo "π")
eul = #(oo "e")
gam = #(oo "γ")
\score {
  \new Staff {
    \clef bass
    \time 4/4
    \relative c {
      \hide Stem
      <a \phi f'!>4
      <a \pi  f'!>
      <a \eul d!>
      <a \gam b!>
    }
  }
  \layout {
    \context {
      \Staff
      \remove Time_signature_engraver
    }
  }
}

