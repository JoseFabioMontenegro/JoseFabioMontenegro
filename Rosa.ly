\header {
  title = "Rosa"
  composer = "Pixinguinha"
}

upper = \relative c'' {
  \clef treble
  \key f \major
  \time 3/4

 r8 f g[ f] d[ bes] | g'2 f4 | r8 f g[ f] c[ a] | e'2 d4 | r8 d f[ d] f[ d] 

 c4. a8 c[ d] | f2 r4 | r4 r c \bar "||" \repeat segno 2 {f,2. | r8 a d[ c] a[ f] | e[ g] a[ g] fis[ g]
 bes2 c4 

 f2. | r8 e d[ c] a[ c] | g2 e8 f | g4 g a8 bes | a2~ a8 b8 | cis[ b] a[ b] cis[ a] 
 d[ a] f'[ d] a'[ f]

 e2 d8 c | bes4. c8 cis[ d] | a'[ g] f[ d] b[ g] | d'2. | c2 c4 | f,2. 
 r8 a d[ c] a[ f] 
 
 e[ g] a[ g] fis[ g] | bes2 e4 | ees2. | r8 f, g[ a] g[ f] | bes[ d] g[ f] e[ f] 
 bes2~ bes8 des, 
 
 des4 c bes | des2 f8 g | a4 g f | e d4. a8 | a[ g] fis[ g] a[ bes] 
 d[ c] bes[ e,] a[ g] | f[ a] d[ c] b[ c] | f2 a,4 |
 
 a2. | r8 d e[ f] e[ d] | f[ e] dis[ e] f[ e] | g[ f] e[ f] e[ d] | cis2. |
 r8 e f[ g] f[ cis] |

 e8[ d8] f4 a,4 | d2~ d8 ees8 | d2. | r8 cis8 d[ cis] d[ ees] | d8 bes8 g2~ | 
 g2 g8 e'8 | e2. |

 r8 e8 dis[ e] f[ e] | a[ e] g[ f] e[ d] | cis[ bes] a[ g] f[ e] | a2. | 
 r8 d g[ f] e[ d] | f8[ e] dis[ e] f[ e] |

 bes'[ a] g[ f] e[ d] | cis2. | r8 e dis[ e] f[ e] | g[ fis] eis[ fis] a[ fis] | 
 ees2. | e4 g, bes |

 f' e4. f8 | e4. d8 a[ f] | e'4 d4. e8 | d[ cis] bis[ cis] e[ cis] | 
 bes[ a] gis[ a] bes[ a] | d,[ f] bes[ a] gis[ a] | d2 c4} \bar "||"
}
lower = \relative c, {
  \clef bass
  \key f \major
  \time 3/4
  \tempo  "Valsa" 4 = 96

  s2.| r8 bes' des[ f] g[ a] | g4 r r | fis,8[ a] c[ d] fis[ a] | g4 g, f 
  
  e8 f8 c4 e | f  r r | r2. | r2. | r2. | r2. | r8 c' bes[ g] e[ c] 
  
  f4 r4 r4 | r2. | r2. | bes'8[ a] g[ f] e[ d] | cis4 r r | r2. | r2.
  
  r2. | r2. | r2. | g8[ a] bes[ d] g[ f] | e[ d] c[ bes] a[ g] | f4 r r | r2. |
  
  r2. | r2. | r4 r16 b c d ees d c bes | a8[ g] f[ fis] g[ a] | g4 r r |
  r r f'16 e ees d
  
  des4 r r | r2. | r2. | r2. | g,8[ a] bes[ d] g[ f] | e2 c4 
  f,8[ a] d[ c] b[ c] | f2 e4 |
  
  d2 gis16 a16 f d | c2 gis'16 a f d | bes4~ bes8 d g[ a] 
  bes[ a] g[ f] e[ d] | cis[ e] cis[ bes] a[ aes] | g4 r4 r4 |
  
  r2. | r4 r8 e'8 d[ des] | c4 r4 r4 | r2. | r2. | r2. 
  
  r4 r8 gis8 b8[ d] | f[ e] d[ b] gis[ e] | a r8 r4 r | r8 bes a[ g] f[ e] |
  d4 r4 r | r2. r2. 
  
  r2. | r4 r8 e a aes | g4 r r | r r8  a' d des |
  c[ a] fis[ ees] d16 c bes a | g4 r r 
  
  r2. | r2. | r4 r8 c bes a | g4. f8 e d |
  cis4 r r | d8[ f] bes[ a] gis[ a] | d4 r r |

}
text = \lyricmode {
  La la la 
}

\score {
  \new GrandStaff <<
    \new Staff = upper { \new Voice = "singer" \upper }
    \new Lyrics \lyricsto "singer" \text
    \new Staff = lower { \lower }
  >>
  \layout {
    \context {
      \GrandStaff
      \accepts "Lyrics"
    }
    \context {
      \Lyrics
      \consists "Bar_engraver"
    }
  }
  \midi { }
}