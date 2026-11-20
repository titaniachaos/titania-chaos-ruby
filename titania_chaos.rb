module TitaniaChaos
  Me = [:love, :fear].freeze
  Freedom = [:play, :fail].freeze
  Titania = (Me + Freedom).freeze

  def self.when_do_i_sing
    :when_i_am_in_love
  end

  def self.when_am_i_in_love
    :constantly
  end

  def self.next_move(moment = Titania.first, reply: nil)
    case moment
    when :love then :offer_my_hand
    when :fear then :offer_my_shaky_hand
    when :offer_my_hand, :offer_my_shaky_hand, :ask_what_we_each_meant
      :listen
    when :listen
      case reply
      when :we_understand_each_other then :connect
      when :we_misunderstand_each_other then :ask_what_we_each_meant
      else :give_you_time
      end
    when :connect then :feel_inspired
    when :feel_inspired then :play if Titania.include?(:play)
    when :fail then :bow if Titania.include?(:fail)
    when :play, :bow then :share_a_laugh
    end
  end
end
