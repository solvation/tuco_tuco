defmodule TucoTuco.Mixfile do
  use Mix.Project

  def project do
    [ app: :tuco_tuco,
      version: "0.7.1.1",
      elixir: "~> 1.0.1",
      description: "Testing tool for web applications",
      source_url: "https://github.com/stuart/tuco_tuco",
      homepage_url: "http://stuart.github.io/tuco_tuco",
      package: package,
      deps: deps,
      docs: [
        readme: true
      ]
    ]
  end

  # Configuration for the OTP application
  def application do
    [ mod: { TucoTuco, [] },
      applications: [ :webdriver ]
    ]
  end

  defp deps do
    [ {:ibrowse,   github: "cmullaparthi/ibrowse"},
      {:webdriver, "~>0.7.0"},
      {:earmark,   "~>0.1.10", only: :dev},
      {:ex_doc,    "~>0.6", only: :dev}]
  end

  defp package do
    [contributors: ["Stuart Coyle"],
     licenses: ["MIT License"],
     links: %{"Github" => "https://github.com/stuart/tuco-tuco"}]
  end
end
