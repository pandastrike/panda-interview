import prompt from "prompt"

class Interview
  # Expose prompt. Remove the default settings we don't like.
  constructor: ->
    @prompt = prompt
    @prompt.message = ""
    @prompt.delimiter = ""
    @test = "foo"

  # Execute the interview.  prompt.get() is lifted from callback hell.
  ask: (questions) =>
    @prompt.start()
    new Promise (resolve, reject) =>
      @prompt.get questions, (error, answers) ->
        if error?
          reject error
        else
          # Map boolean-esque answers onto "true" and "false" values.
          for k of answers
            if answers[k] in ["yes", "Yes", "YES", "y", "Y", "true", "True"]
              answers[k] = true
            if answers[k] in ["no", "No", "NO", "n", "N", "false", "False"]
              answers[k] = false

          resolve answers



export default Interview
