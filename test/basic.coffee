import assert from "assert"
import Interview from "../src"

Test = ->
  {ask} = new Interview()
  questions = [
      {
        name: "panda"
        description: "Type the word 'panda' in response to this prompt."
        default: "panda"
      }, {
        name: "bool"
        description: "Type 'y', 'Y', 'yes', 'Yes', or 'YES'."
        default: "y"
      }
    ]
    
  answers = await ask questions
  assert answers.panda == "panda"

export default Test
