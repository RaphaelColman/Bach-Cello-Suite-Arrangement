\version "2.18.0" 

\include "preludeHelperVariables.ly" 

\include "PreludeAllVoices.ly" 

\include "FugueAllVoices.ly" 

\book {


	\header {
		title = \markup {
			\vspace #15 \fontsize #7 "Prelude"
		}

		subtitle = \markup {
			\vspace #3 \fontsize #5 "Bach, Johann Sebastian"
		}

		subsubtitle = \markup {
			\vspace #2 \fontsize #4 "arr. Raphael Colman"
		}

		tagline = "" %Need to set this to an empty string so LilyPond doesn't put in its own tagline

	} 

	\score 
	{
		\header
		{
			breakbefore = ##t
		}
		
		\layout {
			\context {
				\Staff \RemoveEmptyStaves
			} 

		}
		
		<<
			\new PianoStaff <<
				\new Staff = "Manual One" <<
					\keyTime \clef "treble" \new Voice {
						\voiceOne \manualOneVoiceOneMusicPrelude \soprano
					}
					\new Voice {
						\voiceTwo \manualOneVoiceTwoMusicPrelude \oneVoice \alto
					}
				>>
				\new Staff = "Manual Two"
				%\with  {\override VerticalAxisGroup.staff-staff-spacing.stretchability = 5}
				<<
					\keyTime \clef "bass" \new Voice {
						\manualTwoVoiceOneMusicPrelude \tenor
					}
				>>
			>>
			\new Staff = "Pedal" <<
				\keyTime \clef "bass" \new Voice {
					\pedalMusicPrelude \bass
				}
			>>
		>> 

	} 
	
	\paper {

		ragged-last-bottom = ##f

		ragged-bottom = ##f

	} 

} 

