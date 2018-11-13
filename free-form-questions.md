## What is auto layout and why do iOS developers use it?

Auto layout adjusts the layout of the items/elements/objects of the application's UI in a way that conforms to the screen that it is being viewed upon. 

Developers use it so that way their app looks (at the very least) reasonably well on different devices and in different orientations.

## What is a constraint? Are compression resistance and content hugging constraints?

According to [Apple's documentation](https://developer.apple.com/documentation/scenekit/constraints), **Constraints**:

> Automatically adjust the position or orientation of a node based on specified rules.

Compression resistance and content hugging are priorities, not constraints, which determine which item will appear on top. 


## What role does priority play? When do you adjust priority?

Priority helps resolve conflicts between two objects to determine which should appear more prominently over the other, when an issue, such as spacing, should arise.

The priorty should be adjusted if something relatively important is being obscured by an object deemed not as important.

## When should you use stack views? What advantages do stack views offer?

Stack views are useful to binding a set of related elements together, such as a label and relevant text field. Stack views allow a group of objects to be constrained, prioritized, etc. together, and they move together as the device change orientation or canvas/screen size.

## How does text autoshrink work and what are its advantages and disadvantages?

It seems to be that the size of the label/button/text view, etc affect how much text can be displayed at once. This can be useful if on changes orientation, or if there are multiple objects that contain text, and once "deselected" shrink as another expands. It's mostly disadvantageous for short strings, as users may need to glance at things quickly and may not want to constantly expand text to preview it.