defmodule DynamoHerokuDemo2.Dynamo do
  use Dynamo

  config :dynamo,
    # The environment this Dynamo runs on
    env: Mix.env,

    # The OTP application associated to this Dynamo
    otp_app: :dynamo_heroku_demo2,

    # The endpoint to dispatch requests to
    endpoint: ApplicationRouter,

    # The route from where static assets are served
    # You can turn off static assets by setting it to false
    static_route: "/static"

  # Uncomment the lines below to enable the cookie session store
  # config :dynamo,
  #   session_store: Session.CookieStore,
  #   session_options:
  #     [ key: "_dynamo_heroku_demo2_session",
  #       secret: "8Ny3H/F0HYAeRnvrNNTJ0DZ8j7kMsGIW2UutfXLijx38+f1gv/Nn6+NzSp1BxWtt"]

  # Default functionality available in templates
  templates do
    use Dynamo.Helpers
  end
end
