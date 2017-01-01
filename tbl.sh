apiToken=yourbotToken
# example:
# apiToken=123456789:AbCdEfgijk1LmPQRSTu234v5Wx-yZA67BCD
userChatId=userChatId

# example:
# userChatId=123456789

send_t() {
        curl -s \
        -X POST \
        https://api.telegram.org/bot$apiToken/sendMessage \
        -d text="$1" \
        -d chat_id=$userChatId
}

r_telegram() {

curl -s \
  -X POST \
  https://api.telegram.org/bot$apiToken/getUpdates
}

send_mp3() {
curl -s -X POST "https://api.telegram.org/bot$apiToken/sendAudio" -F chat_id=$userChatId -F audio="@$1"
}
send_f() {
curl -s -X POST "https://api.telegram.org/bot"$apiToken"/sendPhoto" -F chat_id=$userChatId -F photo="@$1"
}

send_v() {
curl -s -X POST "https://api.telegram.org/bot"$apiToken"/sendVideo" -F chat_id=$userChatId -F video="@$1""
}
send_d() {
curl -s -X POST "https://api.telegram.org/bot"$apiToken"/sendDocument" -F chat_id=$userChatId -F document="@$1"
}
