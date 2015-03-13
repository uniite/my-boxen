class projects::dinheiro {

  boxen::project { "dinheiro":
    mysql         => ["dinheiro_development", "dinheiro_test"],
    nginx         => true,
    ruby          => "2.1.5",
    source        => "uniite/dinheiro-rails";
  }

}
