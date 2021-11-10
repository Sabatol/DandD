module HomeHelper
  def modificateur(attribut)
    case attribut
    when 4..5
      '-3'
    when 6..7
      '-2'
    when 8..9
      '-1'
    when 10..11
      '+0'
    when 12..13
      '+1'
    when 14..15
      '+2'
    when 16..17
      '+3'
    else
      'Err'
    end
  end
end
