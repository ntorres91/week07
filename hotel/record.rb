class Record
  attr_reader :record

  def initialize(record)
    @record = record
  end

  def to_s
    <<-HOTEL
    Phone number #{@record[:phone_number]}
    Location #{@record[:city]}
    Number of Rooms #{@record[:rooms]}
    HOTEL
  end
end
