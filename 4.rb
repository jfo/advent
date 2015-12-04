require 'digest/md5'

x = ""
i = 0
until x.split("")[0..5].uniq == ["0"]
    x = Digest::MD5.hexdigest("yzbqklnj" + (i += 1).to_s)
end
puts i
