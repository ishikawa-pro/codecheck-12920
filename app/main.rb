def main(argv)
  # このコードは引数と標準出力を用いたサンプルコードです。
  # このコードは好きなように編集・削除してもらって構いません。
  # ---
  # This is a sample code to use arguments and outputs.
  # Edit and remove this code as you like.

  argv.each_index do |i|
    v = argv[i]
    puts "argv[#{i}]: #{v}"
  end
end
