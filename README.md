# GitHub Action for eleventy-webpack

Use this action to build your static website with [eleventy-webpack](https://github.com/clenemt/eleventy-webpack). If you're using the basic 11ty build, use the [Eleventy Action](https://github.com/marketplace/actions/eleventy-action) this repo is forked from.

To use it, create a `.github/workflows/eleventy_build.yml` file which uses this repository as an action.

Here's an example which builds the site with this action, then deploys to GitHub Pages with [peaceiris/actions-gh-pages](https://github.com/peaceiris/actions-gh-pages):

```yaml
name: Eleventy Build
on: [push]

jobs:
  build_deploy:
    runs-on: ubuntu-18.04
    steps:
      - uses: actions/checkout@v2
      - name: Build
        uses: peterlarkin/actions-eleventy@v2
      - name: Deploy
        uses: peaceiris/actions-gh-pages@v3
        with:
          publish_dir: _site
          github_token: ${{ secrets.GITHUB_TOKEN }}
```
