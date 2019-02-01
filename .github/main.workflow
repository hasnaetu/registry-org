workflow "Create Pull Requests" {
  on = "push"
  resolves = "Create New Pull Request"
}

action "Create New Pull Request" {
  uses = "vsoch/pull-request-action@master"
  secrets = [
    "GITHUB_TOKEN"
  ]  
  env = {
    BRANCH_PREFIX = "update/"
    PULL_REQUEST_BRANCH = "master"
  }
}
