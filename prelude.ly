\version "2.18.0"

\header {
	title = "Prelude"
	composer = "Bach, Johanne Sebastian"
	arranger = "arr. Raphael Colman"
	tagline = "" %Need to set this to an empty string so LilyPond doesn't put in its own tagline
}

\include "preludeHelperVariables.ly"
\include "PreludeAllVoices.ly"
\include "FugueAllVoices.ly"

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
          \manualOneVoiceOneMusicPrelude
          \soprano
        }
        \new Voice
        {
          \voiceTwo
          \manualOneVoiceTwoMusicPrelude
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
          \manualTwoVoiceOneMusicPrelude
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
        \pedalMusicPrelude
        \bass
      }
    >>
  >>
}

