## Editing Navigation

The site navigation is generated from the
[`_data/navigation.yml`](https://github.com/wmb-heavyhaulage/wmb-heavyhaulage.co.uk/blob/master/_data/navigation.yml)
file.

A navigation entry follows the following format:

```yaml
Navigation Text: "https://example.com/navigation/url"
```

Use relative host, absolute path URLs for internal site links. This ensures
they will work correctly on all pages on the site, both when testing locally
and deployed to the server.

For example, prefer `/contact-us.html` to `contact-us.html` or
`https://wmb-heavyhaulage.co.uk/contact-us.html`.
