class Game < ApplicationRecord
  belongs_to :home, :class_name => 'Team'
  belongs_to :away, :class_name => 'Team'
  validate :date_cannot_be_in_the_past, :same_teams, :coach_confirm
  def coach_confirm
    home = Team.find(self.home)
    away = Team.find(self.away)
    errors.add(:coach_confirm, "Only coaches can create games") if session[:user_id] != away.user || session[:user_id] != home.user
  end
  def date_cannot_be_in_the_past
    if self.date.present? && self.date < Date.today
      errors.add(:date, "Can't be in the past")
    end
  end
  def same_teams
    if self.home == self.away
      errors.add(:home_id, "Home Team and Away Team can't be the same!")
    end
  end
end
