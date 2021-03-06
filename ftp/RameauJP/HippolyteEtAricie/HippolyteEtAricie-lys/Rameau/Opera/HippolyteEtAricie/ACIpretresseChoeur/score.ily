\score {
  <<
    \new StaffGroup <<
      \new Staff << \instrumentName \markup Violons
                   \global \includeNotes "dessus" >>
      \new Staff << \instrumentName \markup \center-align { Haute-contres Tailles }
                   \global \includeNotes "haute-contre" >>
      \new Staff << \instrumentName \markup { Basses de violons }
                   \global \includeNotes "basse" >>
    >>
    \new ChoirStaff <<
      \set ChoirStaff.instrumentName = \markup \large "Chœur            "
      \new Staff \withLyrics <<
        \global \includeNotes "voix-dessus"
      >> \includeLyrics "paroles"
      \new Staff \withLyrics <<
        \global \includeNotes "voix-haute-contre"
      >> \includeLyrics "paroles"
      \new Staff \withLyrics <<
        \global \includeNotes "voix-taille"
      >> \includeLyrics "paroles"
      \new Staff \withLyrics <<
        \global \includeNotes "voix-basse"
      >> \includeLyrics "paroles"
    >>
    \new Staff \withLyrics <<
      \characterName \markup "La Prêtresse"
      \global \includeNotes "pretresse"
    >> \includeLyrics "paroles"
    \new Staff <<
      \instrumentName \markup { Basse continue }
      \global \includeNotes "basse-continue" >>
  >>
  \layout { indent = \largeindent }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 132 4) } }
}
