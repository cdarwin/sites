A Week with a Nexus One
=======================

Actually, I've had it for a few weeks now, but that's not as catchy a title.  This review is of a [Google Nexus One](http://www.google.com/phone) running the most recent release of the CyanogenMod ROM (5.0.5.3-N1 at the time of this writing) on AT&T US.

I have not used the stock ROM.  Upon receiving the device, I unboxed it and plugged everything in to ensure I had working hardware and promptly [rooted and installed](http://wiki.cyanogenmod.com/index.php/Full_Update_Guide_-_Nexus_One_Firmware_to_CyanogenMod) the [CyanogenMod](http://www.cyanogenmod.com/) ROM.  I can't compare this to stock, but the modded ROM sold me with built in USB tethering and everyone claims this ROM is highly optimized for the N1.  It does feel blazingly fast.  

__UPDATE__: I am keeping up with the latest ROM releases using [CM Updater](http://www.cyanogenmod.com/downloads/cm-updater).

## The Good

The interface is quite snappy.  I quickly changed the background from the default "living wallpaper" or whatever nonsense they call it in favour of a plain black background.  Did I mention I'm a minimalist?  

USB tethering was painless.  Just connect the phone to the laptop with the included USB cable.  I run [Arch Linux](http://www.archlinux.org/) as my main OS and here is the relevant output of dmesg after plugging the "modem" in.

    usbcore: registered new interface driver cdc_ether
    usb0: register 'rndis_host' at usb-0000:00:1a.7-3, RNDIS device, ca:61:d2:1c:6f:1d
    usbcore: registered new interface driver rndis_host
    usb0: no IPv6 routers present

Nice!  Now <code>ifconfig -a</code> shows a new network interface named <code>usb0</code>.  Just bring the interface up and get a dhcp client running for it.  The CyanogenMod ROM also includes a kernel module to tether over WiFi (requires [android-wifi-tether](http://code.google.com/p/android-wifi-tether/) application installed), however my ThinkPad's wireless device seems to take issue with Ad-Hoc networks.  I suspect this would be resolved either using Windows or another wireless chipset, neither of which appeal to me personally so I live with USB tethering.

__UPDATE__: We tested WiFi tethering last night and successfully connected a MacBook Pro and a Mac Mini and streamed the most recent episode of Lost on Hulu.

Integration of Google services is very nice.  I use [Google Apps Standard Edition](http://www.google.com/a/cpanel/domain/new) and the phone had no problems synchronizing my Contacts, Calendars, and Mail.  I really like how the Gmail application gets you all the features of Google's webmail client, but nicely optimized for viewing on the phone.  For other IMAP accounts I use [k9mail](http://code.google.com/p/k9mail/), a major improvement over the included Mail application.  I use [Google Voice](https://www.google.com/voice) for visual voicemail and to cover my limited text messaging needs.

## The Bad

As far as I can tell, every application defaults to running in the background.  This minor annoyance can be overcome by using [Advanced Task Manager Free](http://www.androlib.com/android.application.com-arron-taskmanagerfree-qpAF.aspx).  It stays in the status message area waiting for you to kill pesky battery draining applications and services at will.

__UPDATE__: Running Advanced Task Manager as a service drains nearly as much battery as not running it at all.  I have resorted to launching it from my home screen and killing it along with the others.  This way it behaves as a stand alone application.

Automatic screen brightness adjustments don't seem very sane.  I have overcome this issue by leaving the Power Control widget on my home screen so I can quickly switch between full brightness (the only way to view the screen outdoors) and the lowest brightness setting (great for indoor lighting).  This has the added benefit of giving you quick access to toggle WiFi, Bluetooth and GPS radios.

Although I have grown accustom to the Android touch input (long time iPhone user), placing the cursor precisely anywhere is nearly impossible.  You have to resort to the trackball, and that can get annoying.

## The Ugly

The device is not quite hideous, but it is certainly no beauty queen.  The casing is not very confidence inspiring and even seems a bit cheap.  I hate the trackball and the stupid half-hardware-half-software keys at the bottom of the screen.  Perhaps HTC has remedied the situation with the [Desire](http://www.engadget.com/2010/04/01/htc-desire-review/), which has four physical hardware keys.

## The Comparison

I used the first generation iPhone on T-Mobile until the iPhone 3GS came out.  Since then, I have been using the iPhone 3GS on AT&T's 3G network.  The first generation iPhone is a paperweight if not jailbroken and unlocked.  Even then, it is limited by hardware to GPRS (EDGE) speeds which is totally unacceptable these days.  A virgin iPhone 3GS is actually quite nice for most folks looking to get a smartphone for the first time.  A jailbroken iPhone 3GS is the holy grail of smartphones, in my opinion.

That said, the N1 comes damn close.  The Facebook application for Android is utterly appalling compared to it's counterpart on the iPhone.  This may actually be a good thing, though.  When I need to do much more than check and comment on stuff in my news feed, I just switch the User Agent of the built-in browser to Desktop and get the full Facebook experience.  Aside from that, most of the applications I tended to use on the iPhone have ported fairly seamlessly to Android.  The phone has a number of hardware improvements alone that set it just ahead of the current iPhone.  Not being caught in the cat and mouse game between the dev-team and Steve Jobs is relieving.

In the end, I am extremely happy with the Nexus One, though I will readily admit that I am surely justifying an unnecessary purchase.  Would I recommend the phone to someone looking for their first smartphone?  Emphatically, "No!"  I can, however, confidently recommend it to anyone who likes to tinker around and have some sense of control over their own hardware.  I have zero experience with Windows Mobile, but from what I have seen and heard of it I expect this to be a drastic improvement for anyone coming from that camp.
