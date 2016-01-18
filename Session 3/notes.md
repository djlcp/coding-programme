### A little about semantics - should I use an unordered list for my nav?
- [https://css-tricks.com/navigation-in-lists-to-be-or-not-to-be/]
- [https://css-tricks.com/wrapup-of-navigation-in-lists/]

### Other tips
- Try and give elements that you want to style a class.  This way you can avoid mimicking your HTML structure in your CSS, which is a lot more robust.  Examples are things like headers where you may start out with a h1 tag, write a rule for that in your css, then decide you want a h2 tag instead. If you change it in the HTML, it breaks your styles.
- Try and get into the habit of naming your classes properly.  Ie 'main-nav-links' rather than 'links'. You might want to use the 'links' class somewhere else in the site, and so you have to be relatively specific when you name things to make sure there wont be conflicts later down the line.
- When rendering images, bear in mind that it's best to render an image thats a comparable pixel size to the one that you're displaying on the page.  Performance wise, it's not great to load a 2000x2000 pixel image then resize it to 64x64.
- Images have the display type of inline so if you want to apply margin 0 auto to them you will have to make them a block or inline-block.

### Flexbox Resources
- [CSS-Tricks - Flexbox](https://css-tricks.com/snippets/css/a-guide-to-flexbox/)

### Vendor prefixing
- They exist because different browsers adopted different standards at different times.
- [http://shouldiprefix.com/#flexbox]
- Maybe a bit advanced at this stage but if you dont want to ever write vendor prefixes then investigate [https://github.com/postcss/
autoprefixer]

### Design Tips
- Read this if you want tips about creating a nice UI [https://medium.com/@erikdkennedy/7-rules-for-creating-gorgeous-ui-part-2-430de537ba96#.2mw5lsw0v]
- When placing text over images, make sure that you have enough contrast so the text is readable
- Never use black [http://ianstormtaylor.com/design-tip-never-use-black/]
