name: Pull Request on Branch Push
on:
  push:
    branches-ignore:
      - staging
      - launchpad
      - production
jobs:
  auto-pull-request:
    name: PullRequestAction
    runs-on: ubuntu-latest
    steps:
      - name: pull-request-action
        uses: vsoch/pull-request-action@master
        env:
          GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
          BRANCH_PREFIX = "update/"
          PULL_REQUEST_BRANCH = "master"
