class projects::dinheiro {

  boxen::project { "dinheiro":
    mysql         => ["dinheiro_development", "dinheiro_test"],
    nginx         => true,
    ruby          => "2.0.0",
    source        => "uniite/dinheiro";
  }

}
