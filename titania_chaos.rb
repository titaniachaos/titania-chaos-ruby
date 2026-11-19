module TitaniaChaos
  Me = [:love, :fear].freeze
  Freedom = [:play, :fail].freeze
  Titania = (Me + Freedom).freeze

  def self.next_move(moment = Titania.first, reply: nil)
    case moment
    when :love, :fear then :offer_my_hand
    when :offer_my_hand, :ask_what_i_missed then :listen
    when :listen
      case reply
      when :we_understand_each_other then :connect
      when :we_misunderstand_each_other then :ask_what_i_missed
      else :give_you_time
      end
    when :connect then :feel_inspired
    when :feel_inspired then :play if Titania.include?(:play)
    when :fail then :bow if Titania.include?(:fail)
    when :play, :bow then :share_a_laugh
    end
  end
end
