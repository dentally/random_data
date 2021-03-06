module RandomData
  # Methods for randomly generating contact data like phone numbers and e-mail addresses
  
  module ContactInfo

   # Returns a randomly-generated string of digits that roughly resembles a US telephone number.  Not guaranteed to be a valid area code.
   @@phone_prefix = ["20", "29", "11", "12", "13", "14", "15", "16", "16", "18", "19"]
   
   def phone
     "0#{@@phone_prefix.rand}#{'%09d' % rand(9 ** 9)}"
   end
   
   def mobile_phone
     "07#{'%09d' % rand(9 ** 9)}"
   end

   # Returns a randomly-generated string of digits that roughly resembles an international telephone number as dialed from the US.  
   # Not guaranteed to be a valid number but just good enough to get some sample data going.
   
   def international_phone
    "011-#{rand(100) + 1}-#{rand(100)+10}-#{rand(10000)+1000}"
   end

   # Returns an e-mail address of the form "{first_initial}{last_name}@{domain}"
   def email 
    domains = %w( google.com
     twitter.com
     youtube.com
     adobe.com
     wordpress.org
     blogspot.com
     wikipedia.org
     godaddy.com
     yahoo.com
     wordpress.com
     w3.org
     linkedin.com
     amazon.com
     flickr.com
     myspace.com
     apple.com
     miibeian.gov.cn
     digg.com
     microsoft.com
     addthis.com
     stumbleupon.com
     tumblr.com
     vimeo.com
     macromedia.com
     statcounter.com
     feedburner.com
     qq.com
     msn.com
     baidu.com
     reddit.com
     bit.ly
     nytimes.com
     bbc.co.uk
     blogger.com
     youtu.be
     gov.uk
     technorati.com
     cnn.com
     sourceforge.net
     typepad.com
     livejournal.com
     google.de
     go.com
     t.co
     networkadvertising.org
     delicious.com
     sina.com.cn
     free.fr
     weebly.com
     joomla.org
     tinyurl.com
     aol.com
     webs.com
     google.co.jp
     imdb.com
     geocities.com
     fc2.com
     bing.com
     yahoo.co.jp
     mail.ru
     yandex.ru
     taobao.com
     ebay.com
     about.com
     creativecommons.org
     google.co.uk
     clickbank.net
     mozilla.org
     gnu.org
     posterous.com
     co.cc
     100ye.com
     guardian.co.uk
     tripod.com
     wsj.com
     intoidc.net
     rambler.ru
     nih.gov
     photobucket.com
     mapquest.com
     squidoo.com
     phpbb.com
     jimdo.com
     51.la
     live.com
     europa.eu
     163.com
     ameblo.jp
     cnet.com
     washingtonpost.com
     pinterest.com
     reuters.com
     alibaba.com
     huffingtonpost.com
     php.net
     usatoday.com
     dailymotion.com
     sohu.com
     imageshack.us
     rakuten.co.jp
     latimes.com
     addtoany.com
     ning.com
     soundcloud.com
     ezinearticles.com
     phoca.cz
     telegraph.co.uk
     forbes.com
     google.fr
     amazon.co.uk
     narod.ru
     constantcontact.com
     parallels.com
     homestead.com
     gravatar.com
     deviantart.com
     slideshare.net
     over-blog.com
     wix.com
     goo.gl
     google.it
     mit.edu
     archive.org
     issuu.com
     amazon.de
     etsy.com
     opera.com
     sakura.ne.jp
     scribd.com
     time.com
     harvard.edu
     nasa.gov
     blog.com
     mozilla.com
     bbb.org
     stanford.edu
     cdc.gov
     wired.com
     gmpg.org
     nifty.com
     icq.com
     ocn.ne.jp
     angelfire.com
     dailymail.co.uk
     npr.org
     vkontakte.ru
     google.es
     ca.gov
     newsvine.com
     ibm.com
     berkeley.edu
     weather.com
     google.ca
     wikimedia.org
     blinklist.com
     businessweek.com
     bloomberg.com
     mac.com
     altervista.org
     geocities.jp
     histats.com
     mysql.com
     apache.org
     amazon.co.jp
     topsy.com
     sfgate.com
     xrea.com
     freewebs.com
     foxnews.com
     loc.gov
     yelp.com
     pbs.org
     hubpages.com
     diigo.com
     bluehost.com
     noaa.gov
     boston.com
     cbsnews.com
     whitehouse.gov
     intuit.com
     insanejournal.com
     alexa.com
     last.fm
     doubleclick.net
     goo.ne.jp
     me.com
     multiply.com
     cornell.edu
     opensource.org
     usda.gov
     biglobe.ne.jp
     epa.gov
     google.nl
     weibo.com
     seesaa.net
     nationalgeographic.com
     bloglines.com
     netvibes.com
     xinhuanet.com
     xanga.com
     hp.com
     mediafire.com
     hatena.ne.jp
     barnesandnoble.com
     netscape.com
     redcross.org
     prweb.com
     oracle.com
     paginegialle.it
     people.com.cn
     sitemeter.com
     techcrunch.com
     dedecms.com
     examiner.com
     privacy.gov.au
     amazonaws.com
     sedo.com
     a8.net
     mashable.com
     google.pl
     newsgator.com
     wunderground.com
     discuz.net
     slashdot.org
     yolasite.com
     infoseek.co.jp
     independent.co.uk
     articlesbase.com
     nps.gov
     sphinn.com
     comsenz.com
     jugem.jp
     umich.edu
     auda.org.au
     irs.gov
     com.com
     un.org
     mixx.com
     eventbrite.com
     house.gov
     discovery.com
     dropbox.com
     ucoz.ru
     e-recht24.de
     drupal.org
     spiegel.de
     google.cn
     skype.com
     usa.gov
     wikispaces.com
     ifeng.com
     ted.com
     who.int
     paypal.com
     dagondesign.com
     cafepress.com
     zimbio.com
     shinystat.com
     cpanel.net
     friendfeed.com
     wikia.com
     furl.net
     so-net.ne.jp
     cbc.ca
     thetimes.co.uk
     fda.gov
     wetpaint.com
     ustream.tv
     marketwatch.com
     google.com.br
     ft.com
     engadget.com
     washington.edu
     ehow.com
     squarespace.com
     timesonline.co.uk
     ftc.gov
     state.gov
     chicagotribune.com
     reverbnation.com
     senate.gov
     ed.gov
     cbslocal.com
     quantcast.com
     youku.com
     exblog.jp
     google.com.au
     zdnet.com
     nature.com
     utexas.edu
     sun.com
     surveymonkey.com
     g.co
     desdev.cn
     t-online.de
     uol.com.br
     webmd.com
     prnewswire.com
     altavista.com
     bandcamp.com
     dion.ne.jp
     upenn.edu
     disqus.com
     twitpic.com
     bizjournals.com
     tripadvisor.com
     nokia.com
     dmoz.org
     umn.edu
     webnode.com
     nwsource.com
     tuttocitta.it
     economist.com
     hexun.com
     ucla.edu
     howstuffworks.com
     abc.net.au
     de.vu
     nydailynews.com
     webstarts.com
     yale.edu
     census.gov
     plala.or.jp
     wisc.edu
     google.ru
     columbia.edu
     skyrock.com
     officelive.com
     ucoz.com
     gizmodo.com
     liveinternet.ru
     intel.com
     networksolutions.com
     example.com
     cdbaby.com
     businessinsider.com
     smh.com.au
     lycos.com
     vargas.co.cr
     usgs.gov
     mtv.com
     shareasale.com
     onsugar.com
     ign.com
     theglobeandmail.com
     businesswire.com
     state.tx.us
     blogs.com
     marriott.com
     answers.com
     alipay.com
     uiuc.edu
     cmu.edu
     1and1.com
     ovh.net
     wiley.com
     formspring.me
     salon.com
     tinypic.com
     pcworld.com
     deliciousdays.com
     ow.ly
     vk.com
     psu.edu
     4shared.com
     simplemachines.org
     biblegateway.com
     yellowbook.com
     box.net
     github.com
     comcast.net
     artisteer.com
     cocolog-nifty.com
     earthlink.net
     reference.com
     virginia.edu
     msu.edu
     rapidshare.com
     printfriendly.com
     symantec.com
     goarticles.com
     dyndns.org
     meetup.com
     gather.com
     real.com
     miitbeian.gov.cn
     craigslist.org
     jalbum.net
     theatlantic.com
     samsung.com
     unicef.org
     usnews.com
     java.com
     dell.com
     nba.com
     ycombinator.com
     nypost.com
     hyves.nl
     purdue.edu
     jiathis.com
     home.pl
     si.edu
     google.com.hk
     megaupload.com
     china.com.cn
     domainmarket.com
     blinkweb.com
     cjb.net
     teennick.com
     netfirms.com
     suntimes.com
     unesco.org
     ask.com
     sciencedaily.com
     cba.pl
     hud.gov
     metacafe.com
     hilton.com
     canalblog.com
     tmall.com
     ucsd.edu
     chron.com
     mlb.com
     hostmonster.com
     arizona.edu
     indiatimes.com
     tudou.com
     cisco.com
     renren.com
     110mb.com
     sogou.com
     princeton.edu
     slate.com
     eepurl.com
     omniture.com
     openoffice.org
     naver.com
     csmonitor.com
     nhs.uk
     warnerbros.com
     nyu.edu
     lulu.com
     army.mil
     smugmug.com
     blip.tv
     hostgator.com
     is.gd
     unc.edu
     ebay.co.uk
     thoughts.com
     freecsstemplates.org
     linezing.com
     zanox.com
     att.com
     demon.co.uk
     roytanck.com
     istockphoto.com
     ufl.edu
     shinobi.jp
     goodreads.com
     multimap.com
     youdao.com
     edublogs.org
     arstechnica.com
     accuweather.com
     chinadaily.com.cn
     fastcompany.com
     prlog.org
     vinaora.com
     news.com.au
     cam.ac.uk
     thedailybeast.com
     woothemes.com
     wanadoo.fr
     illinois.edu
     xe.com
     cnbc.com
     usc.edu
     hhs.gov
     dot.gov
     xing.com
     boingboing.net
     citysearch.com
     mapy.cz
     cctv.com
     fangwang.com
     umd.edu
     extremetracking.com
     mister-wong.de
     toplist.cz
     hotmail.com
     uchicago.edu
     indiana.edu
     chronoengine.com
     kickstarter.com
     depositfiles.com
     bigcartel.com
     yahoo.com.cn
     nymag.com
     joomlatune.comw)
    "#{(initial + '.' + lastname).downcase}\@#{domains.rand}"  
   end
 end
end
