werc Installation Documentation
===============================

[werc](http://werc.cat-v.org/) is described as "a minimalist web anti-framework built following the [Unix](http://doc.cat-v.org/unix/) and [Plan 9](http://plan9.cat-v.org/) tool _philosophy_ of software design."  I choose werc for many of the web projects I deal with for its simplicity and low resource requirements.  The page you are currently reading is being brought to you by werc.

Recently, a colleague asked for a bit of help getting it set up on his own server.  I told him it was stupid simple and he should be able to figure it out on his own.  The more I thought about it, the more I wondered _just how simple_ it really was.

I started with a [netinstall of Debian stable](http://www.debian.org/CD/netinst/) (5.0.7 as of this writing).  I booted the machine and went to work installing the tools neccessary to get werc up and running.  In five minutes I had [lighttpd](http://www.lighttpd.net/) installed and configured to use werc.rc as CGI serving up HTML.

I have provided the relevant portion of my shell [history](history.log) file, a diff of my [lighttpd.conf](lighttpd.conf.diff) and the output of [uptime](uptime.log) when I was done for reference.

Although it seems a bit excessive, I am going to lay this out step by step anyway.  I implore you to do all the relevant research and read all the relevant documentation pertaining to [werc](http://werc.cat-v.org/docs/) itself, [Plan 9 from User Space](http://swtch.com/plan9port/), [the rc shell](http://doc.cat-v.org/plan_9/4th_edition/papers/rc), and [markdown](http://daringfireball.net/projects/markdown/syntax).

## Acquire software

I am using Debian so I grab <code>lighttpd</code> and <code>build-essential</code> with the aptitude package manager.  I chose <code>lighttpd</code> as my web server, but werc should work with any web server that supports the CGI interface.  Some sample configuration files are provided in the [werc docs](http://werc.cat-v.org/docs/web-server-setup/).  <code>build-essential</code> is a [package in Debian](http://packages.debian.org/sid/build-essential) that includes the main tools neccessary for compiling code on Debian.  We basically just need GNU make to build Plan 9 <code>[mk(1)](http://man.cat-v.org/plan_9/1/mk)</code>.

    aptitude install lighttpd build-essential
    curl http://dl.suckless.org/tools/9base-6.tar.gz | tar xzf
    curl http://hg.cat-v.org/werc/archive/tip.tar.bz2 | tar xjf

## Build p9p

Next I build Plan 9 from User Space (shortened p9p or plan9port).  Actually, I'm using [9base](http://tools.suckless.org/9base) as a minimalist replacement for the full blown p9p.  As previously mentioned, make builds <code>[mk(1)](http://man.cat-v.org/plan_9/1/mk)</code> which is then used to build the rest of p9p.

    cd 9base-6
    make install clean
    
## Move files/folders into place

A beautiful thing about werc is that it deals solely with flat files and directories.  This makes it painless to set up, manage and configure.

    mv ../werc-bec1802070f8/ /var/www/werc
    cp -r /var/www/werc/sites/default.cat-v.org /var/www/werc/sites/your.domain.com
    echo '# Hello World!' > /var/www/werc/sites/your.domain.com/index.md

## Configure web server

I have chosen lighttpd as my web server because it is fairly simple and light.  This is obviously debatable and you should follow the [docs](http://werc.cat-v.org/docs/web-server-setup/) when configuring your own.  Here is the diff of my current config against the one provided by the Debian package.

    17d16
    <             "mod_cgi",
    169,175d167
    < $HTTP["host"] =~ "^your\.domain\.com$" {
    <     index-file.names = ( )
    <     server.error-handler-404 = "/werc.rc"
    <     alias.url       += ( "/werc.rc" => "/var/www/werc/bin/werc.rc" ) # Here use the path to werc.rc in your system.
    <     cgi.assign += ( ".rc" => "")
    <     server.dir-listing = "disable"
    < }

# Conclusion

As you can see by this excerpt of my [history](history.log) file and the output of [uptime](uptime.log), the whole installation was no more than 11 commands and took only five minutes.  Someone (hopefully jokingly) proposed that it be made into a script or Debian package.  In my opinion, this would be counter productive.  The process is painfully easy and I think folks should know what they are doing rather than blindly downloading some script and then complaining in irc why it isn't working perfectly for them.  Still, I hope the information I have provided on this page is helpful.
