\version "2.18.0"

\include "preludeHelperVariables.ly"


manualOneVoiceOneMusicPrelude =
\relative c' 
{
	\time 4/4
  <ees g~ c>4 \firstBarMotiefVoiceOne |
  \relative c' <b' aes'>4. aes'8 g aes16 f ees8 f16 d |
  ees2.~ ees16 c d ees |
  d4. d8 e4. e8 |
  <f, c' f>4 c16 d32 e f g aes bes c4~ c8. c16 |
  c4~ c16 c bes aes bes8. g16 aes8. bes16 |
  aes4~ aes16 bes aes g f8~ f32 ees d ees f8. f16 |
  f4. g16 aes g8. f16 ees8. d16 |
  ees4~ ees16 f32 ees d16 ees ees4.-+ d8 |
  d4~ \transpose c g, \firstBarMotiefVoiceOne |
  <fis ees'>4. ees'8 d8. c32 bes <<{a8. bes16} {fis8. g16}>> |
  b2 c4~ c8. c16 |
  c4~ c16 bes c a bes8. g16 des'8. des16 |
  des4~ des16 c bes aes g8. aes16 bes8. g16 |
  aes2 f8. g16 aes8. aes16 |
  aes4~ aes16 bes aes bes bes4.-+ aes8 |
  \grace aes8 g4~ g16 f ees d ees f g aes bes c d bes |
  <ees, c' ees>4 g16 f g ees ees d ees c a'8. bes16 |
  c4~ c16 c bes a bes a g fis g fis g a |
  bes8. a16 bes a bes c d,8. c'16 bes8.-+ a16 |
  <bes, d~ bes'>4 d16 g f ees d c bes a bes'8. bes16 |
  <c, ees~ bes'>4 ees16 d c bes c bes a bes c a bes c |
  d8 \oneVoice r8 r4 \risingFigure |
  \modalTranspose a c' \gMinorScaleHarmonic \risingFigure <fis, a c ees>8 <a c d>4 <fis a d>8 |
  bes16 d e fis g a bes c d4~ d16 c bes a |
  bes8~ bes32 a g fis g8. a16 a2-+ |
  
}

manualOneVoiceTwoMusicPrelude = 
\relative c' 
{
	\time 4/4
  s2 ees16  f g aes g f g ees |
  <d f>4. <b d>8 <c ees> <d f> g4~ |
  g r8 <<{ees16 d ees4} {g16 f g4}>> g |
  aes16 g f g aes g aes f des' c des bes c4 |
  s2 aes8. f16 f8. aes16 |
  g2~ g16 f g e e d e g~ |
  g8 f16 e f4 s2 |
  d16 c d b b a b g b4 c8. d16~ |
  d8 c16 b c4 c2~ |
  c16 bes c a bes4 s2 |
  s1 |
  <f'? g>4. ees16 d <c ees>8. g'16 <c, g'>8 r8 |
  fis16 e fis d ees d ees c d c d bes bes a bes g |
  g' f g e e2 e8. g16~ |
  g8 f16 e f4 s4 s8. c16 |
  bes2 f'16 ees f d d4 |
  ees s4 s4 ees8 f |
  s4 s2 fis8. g16 |
  d4~ d8 d16 c bes8. d16 e4 |
  d4~ d16 c d bes s4 d8. c16 |
  s1*5
  s4 r8. g'16 g4 fis8. g16 | 
  
}

manualTwoVoiceOneMusicPrelude = 
\relative c 
{
	\time 4/4
  <g' c~>4 c16 b c d s2 |
  s2. ees8 <g, d'~> |
  d' c16 b c4 c,16 d32 ees f g aes b c4 |
  b2 << \new Voice { \voiceTwo bes4~ bes16 aes bes g} \new Voice { \voiceOne g'2}>> |
  aes,4 r4 c16 bes c aes aes g aes f |
  f e f d e aes g f <e c'>4 c8 c' |
  <f, c'~>4 c'16 des c bes << \new Voice { \voiceTwo aes g aes f f ees d c} \new Voice { \voiceOne c'8. aes16 aes4} >> |
  <aes b,>8. d,16 d4 g8. aes16 g8. <f b>16 |
  g4 r4 a2 |
  g4~ g16 fis g a bes c d ees d c d bes |
  << \new Voice {\voiceOne c4. c8 d8 ees~ ees16 c d8 | d16 c d b b16 a b g g f g ees ees d ees c } \new Voice {\voiceTwo a'4. a8 bes8 fis g4 | g4 s2.}>> |
  a2 g4 r4 |
  bes4~ bes16 g des' c bes8 aes g <c e> |
  c4 r4 r4 r8. g16 |
  f16 ees f d f4 d8. f16 f4 |
  bes~ bes16 aes g f g d ees f g8 f8 |
  <g c>4 r4 r4 c16 bes c bes |
  a bes a g fis8 g16 d d8 bes' a8. g16 |
  <<\new Voice {\voiceTwo fis4 g2 fis4| g2~ g16 a g fis g8 r8 } \new Voice {\voiceOne s2 a2 | s2. bes16 g a bes}>> |
  g4~ g16 bes a g a g fis g a fis g a |
  fis16 g fis g a fis g a \modalTranspose a c \gMinorScaleHarmonic \risingFigure |
  \transpose a a, \risingFigure d,,16 e fis g a bes c a |
  <d g~>4 g16 fis g a <bes d> c d bes <g d'>8. c16 |
  <g d>4 r8. ees16 d2 |
  
}

pedalMusicPrelude = 
\relative c
{
	\time 4/4
  \repeatedPedalPatternC |
  \repeatedPedalPatternC |
  \repeatedPedalPatternC |
  \repeatedPedalPatternC |
  \repeatedPedalPatternC |
  \repeatedPedalPatternC |
  \repeatedPedalPatternC |
  \repeatedPedalPatternC |
  c2 fis, |
  \repeatedPedalPatternG |
  \repeatedPedalPatternG |
  \repeatedPedalPatternG |
  g4 g'2 g8 f |
  e4 c2. |
  f4 f,8. g16 aes8. bes16 c8. ees,16 |
  d4 d'2 bes4 |
  ees, r4 r4 ees'8 d |
  c4 c,8. d'16 c8. bes16 aes8. g16 |
  fis16 g fis e d8 e16 fis g4 cis, |
  d4 d'2 d,4 |
  g2 r4 g4 |
  c4 r4 r2 |
  c4 r4 r2 |
  r2 r4 d4 |
  g,2 g4 bes4 |
  d4 r8. c16 d2 |
  
}