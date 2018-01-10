object @league
  attributes :id, :name, :country, :start_date, :end_date

  child :games do
    attributes :id, :date

    node(:home_club) { |obj| obj.home_club.name }
    node(:away_club) { |obj| obj.away_club.name }
    node(:stadium) { |obj| obj.stadium.name }
    node(:location) { |obj| obj.stadium.location }
    node(:time) { |obj| obj.time.localtime.strftime('%I:%M %p') }
  end