<?php
$ch = curl_init("https://api.ipify.org/");
curl_setopt($ch, CURLOPT_HEADER, 0);
if (!curl_exec($ch)) {
    echo "<br /><br />Error: ".curl_error($ch);
}
echo "<br /><br />Response Code: ".curl_getinfo($ch, CURLINFO_RESPONSE_CODE);
curl_close($ch);