# Creating Pages

Pages can be written either in Markdown or HTML.
Markdown is recommended because it makes it easier to generate correct HTML.

Building the site will copy pages into the same location they are at in the
source. However, Markdown pages have their file extension changed to `.html`.
For example, `/foo/bar/index.md` would become `/foo/bar/index.html` on the
built site.

## Basic page outline

**Note**: do not use first level headings (single-`#` headings in Markdown and
`<h1>` tags in HTML. These are reserved for the site title.)

### Markdown

```markdown
---
---
<!-- the two dashes above tell Jekyll to compile this Markdown file into     -->
<!-- HTML and embed it in the site layout (with header, navigation, etc.).   -->

## Heading

<!-- An optional `figure` element allows secondary content, such as an image -->
<!-- or a Google map to be displayed alongside the page content. It must     -->
<!-- always be declared directly below the heading it is to appear under.    -->
<figure>
<!-- the `srcset` attribute is used to provide a higher resolution copy of   -->
<!-- the same image for user agents with high resolution screens.            -->
<!-- the `w1024` suffix means that the high resolution copy is 1024 pixels   -->
<!-- wide.                                                                   -->
  <img
    alt="A lorry pulls a digger along a road."
    src="/assets/images/index.jpeg"
    srcset="/assets/images/index@2x.jpeg w1024"
    width="512"
    height="384">
</figure>

A text paragraph.

## Another heading

### A subheading

* This is a
* bulleted
* list
```

For a full Markdown syntax reference,
[see GitHub's "Mastering Markdown"](https://guides.github.com/features/mastering-markdown/).

### HTML

```html
---
---
<!-- The two dashes above tell Jekyll to embed this HTML file in the site    -->
<!-- layout (with header, navigation, etc.).                                 -->

<h2>Heading</h2>

<!-- An optional `figure` element allows secondary content, such as an image -->
<!-- or a Google map to be displayed alongside the page content. It must     -->
<!-- always be declared directly below the heading it is to appear under.    -->
<figure>
<!-- the `srcset` attribute is used to provide a higher resolution copy of   -->
<!-- the same image for user agents with high resolution screens.            -->
<!-- the `w1024` suffix means that the high resolution copy is 1024 pixels   -->
<!-- wide.                                                                   -->
  <img
    alt="A lorry pulls a digger along a road."
    src="/assets/images/index.jpeg"
    srcset="/assets/images/index@2x.jpeg w1024"
    width="512"
    height="384">
</figure>

<p>A text paragraph.</p>

<h2>Another heading</h2>

<h3>A subheading</h3>

<ul>
  <li>This is a</li>
  <li>bulleted</li>
  <li>list</li>
</ul>
```

## Code style guide

It is recommended that certain conventions are adhered to while editing site
content for consistency reasons. These are:

* Use two spaces for indentation
* Use UTF-8 character encoding
* End every file with a trailing newline
* Keep lines below 80 characters in length wherever possible

If your text editor supports the [EditorConfig](http://editorconfig.org)
standard, it can enforce most of these recommendations automatically. You may
need to install a plugin to enable this functionality. See
http://editorconfig.org/#download for more information.
