class projects::noshare {

  boxen::project { "noshare":
    mysql         => ["noshare_development", "noshare_test"],
    nginx         => true,
    redis		  => true,
    ruby          => "2.1.5",
    source        => "uniite/noshare";
  }

}
