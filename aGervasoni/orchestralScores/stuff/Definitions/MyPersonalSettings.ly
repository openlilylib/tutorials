\version "2.16.1"

% -*-
% indent-tabs: yes;
% indent-width: 8;

PersonalSettings = {
	\set Score.quotedCueEventTypes = #'(note-event rest-event tie-event beam-event tuplet-span-event script-event)
	\override Staff.TrillSpanner #'to-barline = ##t
	\override Staff.TrillSpanner #'bound-details #'right #'padding = #1
}

#(define (override-color-for-all-grobs color)
  (lambda (context)
   (let loop ((x all-grob-descriptions))
    (if (not (null? x))
     (let ((grob-name (caar x)))
      (ly:context-pushpop-property context grob-name 'color color)
      (loop (cdr x)))))))

\layout {
  \context {
     \Score
     \applyContext #(override-color-for-all-grobs (x11-color 'grey30))
  }
}
