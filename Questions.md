## Questions: Auto Layout I - Adaptive Auto Layout  

**What is auto layout and why do iOS developers use it?**  
Auto layout is a process used to create dynamic layout of views.  It is used to provide flexible layouts that are maintained across iOS devices and device orientation.

**What is a constraint? Are compression resistance and content hugging constraints?**  
Constraints specify how the various views relate to one another or to the view itself.  Compression resistance and content hugging are attributes of constraints.  They define which constraints have priority.

**What role does priority play? When do you adjust priority??**  
When there are conflicting constraints priorities determine which constraint will be followed.  Priorities should be adjusted when a resulting auto layout does not achieve the layout was intended.

**When should you use stack views? What advantages do stack views offer?**  
Stack views should be used when view elements, and their related alignments should remain together.  Stack views eliminate the need to constrain every individual view.

**How does text autoshrink work and what are its advantages and disadvantages?**  
Autoshrink adjusts the text of a label to prevent truncating the text that is displayed in a view.  Autoshrink accomplishes this by reducing the size of the text, and if enabled, reduces the spacing between characters.  The advantage is that the text that is intended for display on the view will be presented.  One disadvantage of autoshrink is that the character size will be smaller and possibly more difficult to read.