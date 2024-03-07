#-------- Interface ---------
[org/gnome/desktop/interface]
#----------------------------
cursor-theme='Adwaita'
cursor-size=24
icon-theme='Adwaita'
show-battery-percentage=true
clock-show-seconds=false
clock-show-weekday=false
clock-format='24h'
font-name='Sans 11'
font-antialiasing='grayscale'
font-hinting='slight'
text-scaling-factor=2.000000000000001

#---- Accessibility ----
[org/gnome/desktop/a11y]
#------------------------
always-show-universal-access-status=true

#-------- Sound ---------
[org/gnome/desktop/sound]
#------------------------
theme-name='freedesktop'
event-sounds=true
input-feedback-sounds=false
allow-volume-above-100-percent=false

#-------------- Mouse ---------------
[org/gnome/desktop/peripherals/mouse]
#------------------------------------
accel-profile='default'
natural-scroll=false
speed=0.35

#-------------- Touchpad ---------------
[org/gnome/desktop/peripherals/touchpad]
#---------------------------------------
speed=0.35
tap-to-click=true
natural-scroll=true
two-finger-scrolling-enabled=true
disable-while-typing=true

#---------------- Power -----------------
[org/gnome/settings-daemon/plugins/power]
#----------------------------------------
power-button-action='suspend'
power-saver-profile-on-low-battery=true
dim-screen=true
sleep-inactive-ac-type='nothing'
sleep-inactive-ac-timeout=3600
sleep-inactive-battery-type='suspend'
sleep-inactive-battery-timeout=1200

#--------------- Session ----------------
[org/gnome/desktop/session]
#----------------------------------------
idle-delay=600

#------------- Night Light --------------
[org/gnome/settings-daemon/plugins/color]
#----------------------------------------
night-light-enabled=false
night-light-temperature=uint32 3000
night-light-schedule-automatic=true
night-light-schedule-from=19.0
night-light-schedule-to=6.0

#----- Login Screen ----
[org/gnome/login-screen]
#-----------------------
logo=''
banner-message-enable=false
banner-message-text='Welcome!'
disable-restart-buttons=false
disable-user-list=false