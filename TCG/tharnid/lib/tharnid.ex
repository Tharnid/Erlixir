defmodule Tharnid do
  def saldor do
    IO.puts "Hello Aragoth Saldor and Tharnid!!!"
  end

  def aragoth do
    list1 = [ 3, 2, 1 ]
    list2 = [ 4 | list1 ]
    list2
  end

  def babydoll do
    name = "babydoll"
    cap_bdoll = String.capitalize name
    cap_bdoll
  end

  def secret do
    Regex.replace ~r{[russia]}, "Agent x contacted russia and has been paying russia", "*"
  end

  def listfun do
    list1 = [ 1, 2, 3 ] ++ [ 4, 5, 6 ] # concat
    list2 = [ 1, 2, 3, 4] -- [ 1, 3] # diff
    list3 = 1 in [ 1, 2, 3, 4] # membership

    yeah = list1
  end

end
