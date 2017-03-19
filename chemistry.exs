defmodule Chemistry do
  @p_table %{"ac" => 227, "ag" => 107.87, "al" => 26.98, "am" => 243, "ar" => 39.95,
  "as" => 74.92, "at" => 210, "au" => 196.97, "b" => 10.81, "ba" => 137.33,
  "be" => 9.01, "bh" => 270, "bi" => 208.98, "bk" => 247, "br" => 79.90,
  "c" => 12.01, "ca" => 40.08, "cd" => 112.41, "ce" => 140.12, "cf" => 251,
  "cle" => 35.45, "cm" => 247, "cn" => 285, "co" => 58.93, "cr" => 52.00,
  "cs" => 132.91, "cu" => 63.55, "db" => 268, "ds" => 281, "dy" => 162.50,
  "er" => 167.26, "es" => 252, "eu" => 151.96, "f" => 19.00, "fe" => 55.85,
  "fl" => 289, "fm" => 257, "fr" => 223, "ga" => 69.72, "gd" => 157.25,
  "ge" => 72.63, "h" => 1.01, "he" => 4.00, "hf" => 178.49, "hg" => 200.59,
  "ho" => 164.93, "hs" => 277, "i" => 126.90, "in" => 114.82, "ir" => 192.22,
  "k" => 39.10, "kr" => 83.80, "la" => 138.91, "li" => 6.94, "lr" => 262,
  "lu" => 174.97, "lv" => 293, "md" => 258, "mg" => 24.31, "mn" => 54.94,
  "mo" => 95.96, "mt" => 276, "n" => 14.01, "na" => 22.99, "nb" => 92.91,
  "nd" => 144.24, "ne" => 20.18, "ni" => 58.69, "no" => 259, "np" => 237,
  "o" => 16.00, "os" => 190.23, "p" => 30.97, "pa" => 231.04, "pb" => 207.20,
  "pd" => 106.42, "pm" => 145, "po" => 209, "pr" => 140.91, "pt" => 195.08,
  "pu" => 244, "ra" => 226, "rb" => 85.47, "re" => 186.21, "rf" => 261,
  "rg" => 280, "rh" => 102.91, "rn" => 222, "ru" => 101.07, "s" => 32.06,
  "sb" => 121.76, "sc" => 44.96, "se" => 78.96, "sg" => 271, "si" => 28.09,
  "sm" => 150.36, "sn" => 118.71, "sr" => 87.62, "ta" => 180.95, "tb" => 158.93,
  "tc" => 98, "te" => 127.60, "th" => 232.04, "ti" => 47.87, "tl" => 204.38,
  "tm" => 168.93, "u" => 238.03, "uuo" => 294, "uup" => 288, "uus" => 294,
  "uut" => 284, "v" => 50.94, "w" => 183.84, "xe" => 131.29, "y" => 88.91,
  "yb" => 173.05, "zn" => 65.38, "zr" => 91.22}

  def hello(name) do
    "Welcome to Chemistry, #{name}!!!"
  end

  def form_split(input) do
    String.split(input, ~r{\d})
  end

  def return(element) do
    @p_table[element]
  end

  def convert(formula) do
    Regex.scan(~r/([a-z]+)/, formula)
    |> List.flatten
    |> Enum.drop_every(2)
    |> Enum.map(fn x -> @p_table[x] end)
  end

  def convert_2(formula) do
    Regex.scan(~r/\d+/, formula)
    |> List.flatten
    |> Enum.map(fn x -> String.to_integer(x) end)
  end
end
