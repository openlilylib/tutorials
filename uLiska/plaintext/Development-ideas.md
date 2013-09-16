Plain text based tools for musicology
===
Development plan
---

This document is intended as a collection of ideas with regard to developing and/or improving a set of tools to suggest for musicological work.
Special considerations are LilyPond and LaTeX.  
The idea is to transform these sketches into an exposé that can be used for advertising/applying.

### lilypond-doc

An interface to document musical scores within their source files.  
The main ideas are to enable in-source communication between collaborators and ultimately to prepare critical remarks/reports within the actual scores.

**Work:**

- Design interface for in-source comments (Scheme).
- Implement functionality to process these comments   
  (either Scheme (while running LilyPond) or an external script (Python)
- Implement converters to export the information to different target platforms.

### Editorial toolbox

A comprehensive toolbox of editorial commands for use in LilyPond.  
Complemented by a useful draft mode definition.

### muscritreprt

A LaTeX package for typesetting critical remarks.  
Along the lines of our Fried report, but significantly more versatile.

Fields (like measure number, instruments etc.) should be entered as key=values in an optional argument.  
And it should make clever use of templates.

It is essential that this is designed to be compatible with `lilypond-doc` so the entries from that can be directly pulled into the report entries.

### lilyglyphs

I don't know if there are essential improvements to be made on top of general development.

### riemann

LaTeX package and LilyPond toolbox to typeset functional analysis symbols  
(development hasn't started at all so far).

### musicexamples

Continue work as planned, make it more complete.  
In particular add scripts and LilyPond templates.

**Major task:** Implement Lua-based facility to store LilyPond code within the LaTeX document.

### LilyPond -> MusicXML export

It is crucial for 'marketing' LilyPond as a musicological tool to be able to convert scores to commercial formats. 
Therefore we *need* to be able to export the musical content to MusicXML.

### Support for PDF layers

This is not an essential part but will make LilyPond more useful. 
In particular this will allow to print comments or visualizations (e.g. control points) to a specific layer.
