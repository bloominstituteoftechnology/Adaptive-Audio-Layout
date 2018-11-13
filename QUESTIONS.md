# Questions for Adaptive-Auto-Layout Project

### What is auto layout and why do iOS developers use it?
Auto layout is a tool for ensuring that UI elements are laid out in a consistent manner when they are presented on a device, no matter what that device is, i.e. the device's local context. Developers use it because it can vastly simplify the development process and make apps look better across many devices.

### What is a constraint? Are compression resistance and content hugging constraints?
A constraint is an equality that should hold no matter what the device is or what the orientation of the device is. A constraints define the relationship b/w views on screen, as well as provide for fixed constraint for size. compression resistance increases the priority of the compression of a UIelement. For text, you wouldn't want the text to go below the "intrinsic value" of the text, which would make ellipses appear in portions of the text. Having a high compression resistance priority makes sure that text is rarely ever compressed (unless there is an even higher priority). Content Hugging pulls a UI element outward towards its parent edges. A high content hugging priority ensures that content is always pulled outward.

### What role does priority play? When do you adjust priority?
priority is important when you have constraints that might conflict with one another. Occasionally, you have multiple constraints that can't both be equal for a given orientation and device and given set of UI elements. priority tells the compiler which constraints to place more importance on, and which to place less importance on. If one constraint is more important than another, then it will take priority over the other constraint if it needs to.

### When should you use stack views? What advantages do stack views offer?
Stack views are great for assemblling UI components into easy-to-handle aggregate views. They are great when working with similar type things that need to be listed in order, such as a switch and button. Stack view is very helpful when making sure that alignment is appropriate and can help to orient groups of objects in relation to one another.

### How does text auto-shrink work and what are its advantages and disadvantages?
Autoshrink determines whether the label adjusts the appearance of the text before resorting to truncation. Choose Minimum Font Scale and enter a value to allow the label to reduce the font size to fit the text. Enable Tighten Letter Spacing to allow the label to reduce intercharacter spacing. Access these values at runtime with the minimumScaleFactor and allowsDefaultTighteningForTruncation properties, respectively. Note that the Minimum Font Size option was deprecated in iOS 6.

Autoshrink can help your apps be displayed dynamically with similar layout. One problem w/ auto shrink is that designs can be impacted such that the autoshrink text doesn't look very nice.
