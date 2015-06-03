# Editing the gallery

The site gallery is generates from the
[`/photos`](https://github.com/wmb-heavyhaulage/wmb-heavyhaulage.co.uk/tree/master/photos)
directory.

## Folder structure

Photos in the gallery are divided into categories, with a folder representing
each category. For example, a basic
[`/photos`](https://github.com/wmb-heavyhaulage/wmb-heavyhaulage.co.uk/tree/master/photos)
directory might look like this:

```
photos
├── boat
│   ├── boat1.jpg
│   ├── boat2.jpg
│   ├── boat3.jpg
├── christmas-cards
│   ├── christmas2008.jpg
│   ├── christmas2009.jpg
│   └── christmas2011.jpg
```

The title of each photo category is derived from the name of the folder
containing the pictures of that category, using the following algorithm:

1. Hyphens are replaced with spaces
2. The first letter of each word is capitalized.

For example, a folder `diggers-and-things` would show up on the site as a
gallery category named "Diggers And Things".

**Note**: subcategories (i.e. folders within folders) are not supported.

## Cover images

The cover image for a gallery category is the image used the represent the
category on the gallery index page. By default, it is the last image in the
category directory, but this may be overridden by adding an entry in
[/_config.yml](https://github.com/wmb-heavyhaulage/wmb-heavyhaulage.co.uk/blob/master/_config.yml).

For example:

```yaml
gallery:
  galleries:
    diggers-and-things:
      best_image: bulldozer.jpg
    cochran-boilers:
      best_image: boiler6.jpg
```
