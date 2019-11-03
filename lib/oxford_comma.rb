def oxford_comma(array)
  case array.length
  when 1
    array.join
  when 2
    array.insert(1, 'and').join(' ')
  when 3
    array.insert(2, 'and').join(', ').gsub('and,', 'and')
  when 4..1.0/0
     array.insert(array.length - 1, 'and').join(', ').gsub('and,', 'and')
  end
end

oxford_comma(['kiwi'])
oxford_comma(['kiwi', 'durian'])
oxford_comma(['kiwi', 'durian', 'starfruit'])
oxford_comma(["kiwi", "durian", "starfruit", "mangos", "dragon fruits"])
oxford_comma(["kiwi", "durian", "starfruit", "mangos", "dragon fruits", "lychees", "pomelos"])