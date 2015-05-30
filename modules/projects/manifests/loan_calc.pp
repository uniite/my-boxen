class projects::loan_calc {

  boxen::project { "loan_calc":
    postgresql    => true,   # Creates dev and test databases
    nginx         => true,
    redis		  => true,
    ruby          => "2.2.2",
    source        => "uniite/loan_calc";
  }

}
