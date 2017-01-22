\version "2.18.0"

\include "preludeHelperVariables.ly"

subjectNotes = 
\relative c''
{
	aes8 c, d | ees g16 f g16 ees | f8 a, b | c ees16 d ees c |
	d ees f g aes8 | b, g16 f' ees d | ees f d ees f d |
}

pedalSubjectNotes = 
\relative c''
{
	aes8 c, d | ees g16 f g16 ees | f8 a, b | c ees16 d ees c |
	d8 f aes8 | b, g8 g'16 f | ees f d ees f d |
}

counterSubjectNotes = 
\relative c''
{
	c8 ees, c | d r4 | r8 c16 bes a c | bes a g4~ |
	g8 a c | d4 r8 | g8 d4 |
}

eFlatMajorScale = 
\relative ees' {ees f g aes bes c d}

subject =
#(define-music-function
     (parser location p)
     (ly:pitch?)
   #{
   		\transpose c $p \subjectNotes
   #})
   
counterSubject =
#(define-music-function
	(parser location p)
	(ly:pitch?)
	#{
		\transpose g $p \counterSubjectNotes
	#})
	
oneQuaverTwoRest = 
#(define-music-function
	(parser location p)
	(ly:pitch?)
	#{
		{$p 8 r8 r8 }
	#})

repeatedSemiquaverPatternOverPedal = 
\relative c''
{
	r16 ees d b c d |  
}

soprano = 
\relative c'
{
	\time 3/8
	s4.*8 |
	\voiceOne r4 c'16 d | \subject g |
	bes4. | r16 c g aes bes aes | aes4.~ | aes8 c bes |
	bes8. c16 d8 | c8 ees f | bes,16 c bes aes bes g |
	a b c8 d | g,16 f g b c bes | aes4 d,16 ees | f8. aes16 g f |
	ees8 f16 g a b | c4 aes8 | g bes c~ | c bes4~ | bes8 bes a~ |
	a g4 | r16 d' c bes a bes|  a g fis a bes c | d8 ees16 d ees c |
	g' bes, a bes c d | ees4.~ | ees16 g f ees d c | bes8 c16 d ees f |
	g4.~ | g8 f c | c4.~ | c8 bes16 c d ees | d4 ees8~ | ees16 d c4~ |
	c8 bes g'~ | g f b, | c r ees | ees4 d16 c | bes4 bes8 | ees4 d8 |
	ees8 g,16 f g ees | bes'4.~ | bes8 aes16 g aes f |
	c'4.~ | c8 bes16 aes bes g | ees'4.~| ees8 d4~ | d8 c4~| c8 b4 |
	c8 c bes~ | bes ees bes | a c g~| g8 c4 | c8. b16 c ees |
	d c b d ees f | g8 c, b | c8 r4 | s4.*5 |
	r4 bes8 | \subject g | bes16 a bes c d8 | d4 fis,8 | g4 d8 |
	c d e | f4 c8 | d d16 ees d ees | f g f g aes f | b f d' aes g f |
	ees f d ees f d | ees8 g f~ | f16 ees d ees f d | e8 c aes' |
	g4 bes8~ | bes16 aes g aes bes g | aes4 c8~ | c bes aes |
	g8 r e | f16 e f g aes bes | c aes g aes bes g | aes g f e f g |
	aes bes c bes aes g | \oneVoice f ees des f ees des | c ees f g aes f |
	d? c bes c bes g | aes c d e f ees | des8 f16 e f g | c, d? e f d e |
	c8 f e | f4 \voiceOne aes8 | aes4. | f4 aes8 | bes c d | ees4 d8~ |
	d8. g,16 aes bes | c4.~ | c8. ees16 d c | b8 r f' | f4.~ | f4.~ |
	f16 d g b, c d | ees8 r g | \subject c' | ees16 d c ees d f | ees c g' ees f d |
	ees d c ees g, bes | a c f d ees c | d c bes d c ees | d f bes g aes f |
	g g, ees g f aes | g bes ees c d b | c8. bes16 aes g | f16 ees' d b c d | \repeatedSemiquaverPatternOverPedal |
	\repeatedSemiquaverPatternOverPedal | \repeatedSemiquaverPatternOverPedal |
	\repeatedSemiquaverPatternOverPedal | g,8 a b | c r a | b r d~ |
	d c c | b r4 | r4 f'8 | g b, c | d f16 ees f d | ees8 g, a |
	b d16 ees d ees | f c b r f'8 | g c b | c16 bes aes g aes f | e8 g e |
	f16 ees d b c8 | g4.~ | g8 r8 g | a r fis | g r4 | f16 ees ees d d c |
	c b c ees c d | ees d d c c bes? | c8.
	
}

alto =
\relative c'' 
{
	\time 3/8
	<g d>4 g8 | \subject c
	\voiceTwo ees16 d ees g c b |
	\counterSubject g |
	r16 g d ees f d | e4. | r16 f c d ees c | d ees f g aes f |
	g f ees d c b | c8 aes'f | g ees r8 | r8 f16 ees d f |
	ees d c4~ | c8 d f | d16 c b8 b | c b f' |
	g16 f ees d c bes | bes8 ees4 | d16 ees f ees f d |
	c8 c4 | bes16 c d c d bes | c d ees d c8 | d4. | g4 fis8 |
	g8 r8 bes~| bes16 d c bes aes g | f8 g16 aes bes c |
	d4.~ | d16 f ees d c bes | aes8. bes16 aes g | f g aes g f ees |
	d4 f8 | f8 r bes | c ees, f | g bes16 aes bes g | aes8 c, d |
	ees g16 f g ees | f g aes bes c8 | d, bes16 aes' g f |
	g aes f g aes f | g8 r4 | r8 f16 aes g e | c g' f8 r8 |
	r8 g16 bes aes f | d aes' g8 r8 | r8 bes16 g16 c aes |
	f g aes f bes g | ees f g ees f d | d f g f ees d | c d ees8 f~ |
	f8 ees4~ | ees8 d4~ | d8 c8 r8 | r16 f ees d ees f | g8. b16 c d |
	c8 r d, | c r ees16 g | d f bes e, f aes | g4.~^+ | g8 c16 bes c a |
	a4.^+ | aes?16 bes c bes c aes | g aes g f g f | ees d c8 f |
	f16 g f ees d8 | e4 d8 | d4 g8 | g4. | c,8 d fis | g4 fis8 |
	g8. a16 bes g | a4 d,8~ | d8 bes4~ | bes4 c8~ | c8 aes4~ | 
	aes8 
	\change Staff = "Manual Two" \voiceOne aes g | f8. ees16 f8 | d b' c16 d | c4 b8 |
	c16 d b c d b | c4 bes8~ | bes16 g aes bes c aes | bes8
	\change Staff = "Manual One" \voiceTwo c4~ | c8 des c16 g'~ |
	g e f g aes f | g8 f4 | c8 r c | c r f | g r e | c4 d16 e | f4 s8 |
	s4.*7 | s4 f8 | bes,4. | d4 c16 ees | d8 ees f | g16 f ees g f aes |
	g4.~ | g8. bes16 aes g | f4. | d16 c' b a g c | b c d b d b |
	g8 d16 b d b | g' aes g f ees d | c d ees g c bes | aes8 r f |
	ees c' g | c f, g | g f ees | aes4 f8~ | f16 ees d g a b | c4 b8 |
	c8 r r8 | r g g | g r r | r f f | f r r | r bes bes | bes r r |
	r g f | ees4 c8 | c r r | g'16 r r8 r | aes16 r r8 r | fis16 r r8 r |
	a16 r r8 r | r c, g' | g r f | g d r | ees8. g16 fis8 | g r g |
	\subject c | e8 c c'~ | c16 des c bes aes g | f g f d ees c |
	d8 b4 | c8 s <bes d> | <c d> s d16 c | d c b g b? d | c4 b8 |
	c r r | s4. | 
}

tenor = \relative c
{
	\time 3/8
	b'4 r8 | R4.*19 |
	r4 g8 | \subject c,
	ees16 d c d ees f | g16 f g8 f8 | f4. |
	e8 g d | d8 g4 | g4. | a8. fis16 g a | bes8 c4 | d4 r8 |
	r16 c, d ees f g | aes4.~ | aes16 c bes aes g f |
	ees8 f16 g aes bes | c bes aes g f ees | aes g f ees d c |
	f ees d c bes a | bes8 bes'4~ | bes8 aes16 g aes8 | d8 d, e |
	f16 g aes g f g | c8 bes4 | c aes8~ | aes16 g f c' bes aes |
	bes8 c bes | bes8 r8 ees, | d d e | f4 f,8 | r8 ees' f | g4 g,8 |
	r8 g' aes16 f | bes8 f8 g16 ees | aes8 ees f16 d | g4 r8 |
	r8 aes4 | g16 aes bes aes bes g | f8 f4 | ees16 f g f g ees |
	f8 aes4 | g4 r8 | g8 f8. g16 | a16 c f b, c ees |
	bes8 r8 aes16 f | f g f ees f d | ees4.~-+ |
	ees16 f ees d ees c | d4.-+ | ees16 f ees d ees d |
	c8 ees16 d ees c | d8 a bes | bes8 c16 bes c a | bes8 fis' g |
	ees c c'16 bes | a g fis e d c | bes8 c d | g,4 g'8 |
	fis c16 bes c a | bes d g e f d | e c bes aes bes g |
	aes c f d ees c | b g' f8 ees | d8. ees16 d8 | \voiceTwo g, r16 g'16 a b |
	c8 f, g | c, r g' | c f, g | c, f4~ | f16 d e f g e | f4 \oneVoice e8 |
	f aes f | e16 c d e f d | e f g aes bes g | aes g aes bes c d |
	e8 r4 | R4. | r4 c8 | \subject f, | aes16 b aes g f ees |
	d8 f16 d f d | bes16 aes' fes d fes d | bes  c' bes aes g f |
	ees8 g, bes | ees, ees'16 c ees c | aes g' ees c ees c |
	aes bes' aes g f ees | f ees d c b a | g8 r g' | b16 a g4~ |
	g16 f' ees d c b | c8 r e | c16 bes aes c c b | c8 c16 d ees8~ |
	ees16 d c ees d8 | c8 g c~ | c8. c16 b c | d8 r g | g aes g |
	g ees, g | c c b | c ees, c | f c'16 bes c a | bes8 d, f | bes, f'16 ees f d |
	ees8 g bes | ees,16 d c ees g8 | c r r  | aes r r | c4.-+~ |
	c4.~ |c4.~ |c4. | b16 g f ees f d | ees g c ees, f ees | d f b aes g f |
	ees f g ees d c | d c' b d r8 | R4. | r4 c8 | f, d g | g4 fis8 |
	d b' < f c'> | g8. d'16 c b | c8 aes g | g8 r8 r8 | R4. | r4 g8~ |
	g16 aes g f ees d | c d c a bes g | fis ees' d c b a | b a g b d f |
	aes g g f f ees | <g, ees'> d' ees c ees g | c bes bes a a g |
	%I'm not putting the a in this voice because I can attach it to the alto instead
	% The bass g for left hand can go in the bass voice but on the tenor stave with \changeStaff
}

bass =
\relative c
{
	\time 3/8
	g4 g8 | R4.*27 | r4 d'8 |
	\transpose c g,, \pedalSubjectNotes |
	bes16 d c d ees d |
	\oneQuaverTwoRest c |
	\oneQuaverTwoRest f, |
	\oneQuaverTwoRest bes |
	\oneQuaverTwoRest ees, |
	\oneQuaverTwoRest aes |
	\oneQuaverTwoRest f |
	r8 bes4~ | bes8 aes g | aes4. | g8 g c | \oneQuaverTwoRest f, |
	r4 ees8 | aes f aes | \oneQuaverTwoRest bes |
	g aes bes | \oneQuaverTwoRest ees, |
	R4.*7 | r4 g'8 | \transpose c c, \pedalSubjectNotes |
	ees8 d c | aes' g f | \oneQuaverTwoRest b, |
	\oneQuaverTwoRest c |
	\oneQuaverTwoRest f, |
	\oneQuaverTwoRest bes |
	\oneQuaverTwoRest ees |
	R4.*25 | r8 e c | f aes, c | f, aes f | bes r ees | aes,8. g16 f8 |
	g r c | f, r8 r8 |
	\oneQuaverTwoRest bes | bes r c16 bes | aes8 bes c | \oneQuaverTwoRest f |
	R4.*8 | g,4.~ | g4. | r8 g' g, | c r c' | f,8. ees16 f g | c,8 ees c |
	a f'4 | ees8 b c | f4 d8 | g8. aes16 g f | ees8 f g | c, r r |
	r ees g | \oneQuaverTwoRest c, | r a' f | \oneQuaverTwoRest bes |
	r d, bes | \oneQuaverTwoRest ees | r ees, g | aes16 bes aes g f ees |
	\oneQuaverTwoRest d |
	\oneQuaverTwoRest ees |
	\oneQuaverTwoRest f |
	\oneQuaverTwoRest a |
	\oneQuaverTwoRest fis |
	g4.~ | g4.~ | g4.~ | g4.~ | g8 r r | 
	R4.*2 | r4 g'8 |c, r c | g4. | g' | ees8 f g | c, f f, |
	c' e c16 bes | aes8 f' c | b g16 aes g f | ees8 r r | R4.*3 |
	
}

keyTime = { \key c \minor \time 3/8 }
\score
{
  <<
    \new PianoStaff
    <<
      \new Staff = "Manual One"
      <<
      	\keyTime
        \clef "treble"
        \new Voice
        {
          \voiceOne
          \soprano
        }
        \new Voice
        {
          \voiceTwo
          \oneVoice \alto
        }
      >>
      
      \new Staff = "Manual Two"
       \with  {\override VerticalAxisGroup.staff-staff-spacing.stretchability = 5}
      <<
      	\keyTime
        \clef "bass"
        \new Voice
        {
          \tenor
        }
      >>
    >>
    
    \new Staff = "Pedal"
    <<
    	\keyTime
      \clef "bass"
      \new Voice
      {
        \bass
      }
    >>
  >>
}