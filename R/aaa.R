httr::user_agent(
  sprintf(
    "statically package v%s: (<%s>)",
    utils::packageVersion("statically"),
    utils::packageDescription("statically")[["URL"]]
  )
) -> .STATICALLY_UA