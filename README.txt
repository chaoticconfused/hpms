Homepass Mac Switcher (hpms) - README
Author - tyrdchaos - gbatemp.net forums
Date - 10/31/2015
Version - 0.1beta_initial

Special thanks to duke_srg - gbatemp.net forums for the original idea
and their script (found at http://gbatemp.net/threads/how-to-have-a-homemade
-streetpass-relay.352645/page-10#post-4739510)

--------------------------GNU FDL v1.3 Statement--------------------------------
Permission is granted to copy, distribute and/or modify this document under the
terms of the GNU Free Documentation License, Version 1.3 or any later version
published by the Free Software Foundation; with the Invariant Sections being
just "GNU Manifesto", with no Front-Cover Texts, and with no Back-Cover Texts.
A copy of the license is included in the section entitled "GNU Free Documentation
License".
--------------------------------------------------------------------------------

-------------------------------Revision History---------------------------------
Version 0.1beta_initial
    - beta testing release

-----------------------------------README---------------------------------------
This is going to be very basic.  First off:

-----------------THIS IS ONLY FOR DD-WRT BASED ROUTERS--------------------------

If you are not using a DD-WRT router, you should not use this script.  Period.
End of story.  You could mess things up.  The author, GBATEMP, its
parent company, subsidiaries, grandma, other relatives, my cats, or anyone
associated in the creation of this script will not be responsible for any lost,
damaged, or destroyed equipment, self-respect, or sanity if you do not
heed this warning.  I warned you.  Keep in mind that this is a beta script.  I
will do my best to work on it.  You use this at your own risk.

Anyway, there are two versions of this script, hmps_atheros.sh and hmps_broadcom.sh.
Use the one that your router is based on.  You can find out what hardware your
router uses by going to your router's main page (usually by typing 192.168.1.1
into a browser of your choice) and navigating to Status -> Router.  Under the
section title "CPU" you should see the "CPU Model" that your router uses.  If it
does not say "Atheros XXX" or "Broadcom XXX" (where XXX is anything that follows)
these scripts may not work for you.  These scripts also assume that "/dev/urandom"
exists on your hardware.  It would be unlikely that it does not, but keep this
in mind.

-------------------------------INSTRUCTIONS-------------------------------------

1. Figure out what hardware your router uses.  To this, go to your router's main
page (usually 192.168.1.1 in your favorite browser).  Then, navigate to
Setup -> Router.  Look for the section labeled "CPU".  Under this section, look
for "CPU Model".  If it does not say "Atheros" or "Broadcom", STOP HERE, YOU ARE
DONE!!!  If you do not heed this warning, proceed at your own risk.

2. Telnet/SSH into your router by typing into a terminal program/application:
          -Telnet:
                [user@foo ~]$ telnet [router ip address] <ENTER>
                ddwrt login: root <ENTER>
                Password: [password for admin account] <ENTER>

          -SSH:
              [user@foo ~]$ ssh [router ip address] -l root <ENTER>
              password: [password for admin account] <ENTER>

The user name will be "root" and the password will be whatever you set your
password as for the router's admin pages.  In the case of ssh, you may have to
specify the user by using the -l flag (as in the above example).

3. Type this into your terminal session once your are successfully logged in:

      wget -O /tmp/hmps_install http://homepass.chaoticconfused.com/hmps_install

4. Leave it alone.  This process could take a few minutes to complete.  Once it
completes, you should start receiving streetpasses.

--------------------------------------------------------------------------------

Currently, the script is setup to use the Prime 16 mac addresses from the spread-
sheet at:

https://docs.google.com/spreadsheet/ccc?key=0AvvH5W4E2lIwdEFCUkxrM085ZGp0UkZlenp6SkJablE#gid=0

I have each of the current (as of 10/31/2015 at 9:52 PM PST) lists on the server.
For now, I am going to leave it this way.  If this works out, then I will add the
feature to support multiple lists.  Hopefully, I can get some help with that.

------------------------------------Closing-------------------------------------

That's it.  I have nothing more to say.  Test this out if you dare!
