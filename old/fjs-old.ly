fs = #(lambda (m) (if (number? m) (number->string m) m))
sf = #(lambda (m) (if (string? m) (string->number m) m))

oq = #(lambda (m)
  (define-music-function (note) (ly:music?)
    (ly:music-set-property! note 'force-accidental #t)
    #{
      %\once \override Voice.Accidental.Y-offset = #-1/2
      \once \override Voice.Accidental.stencil = #ly:text-interface::print
      \once \override Voice.Accidental.text = $m
      $note #}))
ov = #(lambda (n) (oq #{ \markup {
  \raise #-1/2 \fontsize #-6 \number #(fs n) } #}))
O = #(define-music-function (s m note) (values string? ly:music?)
  ((oq #{ \markup { \concat {
    \raise #-1/2 \fontsize #-6 \number #(fs s) \musicglyph #m
  } } #}) note))
%of = #(oq 5 #{\markup { \fontsize #-6 \number 5 }#})
o = #(define-music-function (s note) (values ly:music?) ((ov s) note))
on = #(ov 1)
fi = #(ov 5)
se = #(ov 7)
sef = #(define-music-function (note) (ly:music?)
  (O 17 "accidentals.flat" note))
os = #(define-music-function (n note) (values ly:music?)
  (O n "accidentals.sharp" note))
of = #(define-music-function (n note) (values ly:music?)
  (O n "accidentals.flat" note))
ox = #(define-music-function (n note) (values ly:music?)
  (O n "accidentals.natural" note))
