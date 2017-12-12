# panda-interview
Convenience wrapper for  Prompt module interface

```coffee
import Interview from "panda-interview"

do ->
  {ask} = new Interview()
  questions = [
    name: "pandas"
    description: "Are pandas awesome?"
    default: "YES"
  ]
  answers = await ask questions
  assert.equal answers.pandas, true
```
