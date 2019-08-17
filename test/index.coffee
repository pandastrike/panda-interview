import {print, test} from "amen"

import basic from "./basic"

do ->
  console.log "This is an interactive test. We'll keep it short."
  print await test "Panda Interview", [
    test
      description: "Basic string and boolean"
      wait: false,
      basic
  ]
