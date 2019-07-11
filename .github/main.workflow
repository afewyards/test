workflow "Approve Dependabot" {
  on = "pull_request"
  resolves = ["afewyards/rebase-merge-after-checks-action"]
}

action "afewyards/rebase-merge-after-checks-action" {
  uses = "afewyards/rebase-merge-after-checks-action@master"
  secrets = ["GITHUB_TOKEN"]
}
