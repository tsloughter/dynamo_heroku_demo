Dynamo.under_test(DynamoHerokuDemo2.Dynamo)
Dynamo.Loader.enable
ExUnit.start

defmodule DynamoHerokuDemo2.TestCase do
  use ExUnit.CaseTemplate

  # Enable code reloading on test cases
  setup do
    Dynamo.Loader.enable
    :ok
  end
end
