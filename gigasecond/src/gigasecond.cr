module Gigasecond

  GIGASECOND = 1_000_000_000.seconds

  def self.from(datetime)
    datetime + GIGASECOND
  end
end