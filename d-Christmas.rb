N, X = gets.chomp.split.map(&:to_i)
BAN = "B"
PAT = "P"

def n_1bargar(bargar, num)
  if num == 0
    bargar << PAT
  else
    bargar << BAN
    n_1bargar(bargar, num - 1)
    bargar << PAT
    n_1bargar(bargar, num - 1)
    bargar << BAN

  end
end
bargar = ""
n_1bargar(bargar, N)
eat = bargar.slice(0, X)

puts eat.count(PAT)
