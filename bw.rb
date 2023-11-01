while true
  t = `ipfs stats bw`.to_s.sub("Bandwidth\n", "").gsub("\n", " ").chomp
  print "#{Time.now.to_s}: #{t}\n"
  sleep(3)
end
