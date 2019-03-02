workflow "Twitch check_suite" {
  on = ""
  resolves = ["twitch alerts docker action"]
}

workflow "Twitch pull_request" {
  resolves = ["twitch alerts docker action"]
  on = ""
}

workflow "Twitch issue" {
  resolves = ["twitch alerts docker action"]
  on = ""
}

action "twitch alerts docker action" {
  uses = "docker://noopkat/twitch-dev-alerts-action:0.0.5"
  secrets = [
    "TWITCH_EXT_CLIENT",
    "TWITCH_EXT_SECRET",
    "GITHUB_TOKEN",
    "TWITCH_CHANNEL",
  ]
}
