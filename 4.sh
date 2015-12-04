i=0

until [ "${hash:23:5}" == "00000" ]; do
    hash=$(md5 -s "yzbqklnj$i")
    i=$((i+1))
done

echo $hash
echo ${hash:23:5}
echo $i


