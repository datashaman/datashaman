---
layout: post
title: ! 'FAN: Fully Automated Nagios'
excerpt: Want an easily installed ISO which provides a Centos server installation
  with statistics gathering, hardware monitoring with an attractive frontend for your
  systems?
tags:
- work
- client
- gamco
- nexsys
- monitoring
- development
- hosting
---
I recently installed and configured a monitoring system on <a title="NeXsys" href="http://www.nexsys.co.za" target="_blank">NeXsys</a>, <a title="GamCo" href="http://www.gam.co.za" target="_blank">GamCo</a>'s flagship complex management product.

The products I wanted to use were:
<ul>
	<li><a title="Nagios" href="http://www.nagios.org/" target="_blank">Nagios</a> for the base information gathering and reporting</li>
	<li><a title="Centreon" href="http://www.centreon.com/" target="_blank">Centreon</a> for the administrative ease of use and the excellent monitoring interface</li>
</ul>
Getting these two packages properly installed, and talking to eachother, can be quite a daunting task.

That is, until I discovered <a title="Full Automated Nagios" href="http://fannagioscd.sourceforge.net/" target="_blank">Fully Automated Nagios</a> or <strong>FAN</strong> for short.<!--more-->

It's a slim installation of the latest CentOS (5.3) with the following pre-installed and configured to work together (mostly, details below):
<ul>
	<li><a title="Nagios" href="http://www.nagios.org/" target="_blank">Nagios</a> - Monitoring application</li>
	<li><a title="Centreon" href="http://www.centreon.com/" target="_blank">Centreon</a> - Administration frontend for Nagios</li>
	<li><a title="NagVis" href="http://www.nagvis.org/" target="_blank">NagVis</a> - Visualization tool for Nagios data</li>
	<li><a title="NaReTo" href="http://www.nareto.org/" target="_blank">NaReTo</a> - alert, notification, and availability reporting</li>
	<li><a title="DocuWiki" href="http://www.dokuwiki.org/" target="_blank">DocuWiki</a> - for storing any procedural documentation or guides</li>
	<li>Nagios Plugins (both official and contrib)</li>
	<li>NDOUtils - for storing Nagios data in a database</li>
	<li>NRPE plugin - to communicate with remote Nagios installations</li>
</ul>
A few gripes/criticisms of the software:
<ul>
	<li>The default home web page is not very pretty, but the installation is yours once it's installed. Tweak it as you see fit.</li>
	<li>I cannot get Nareto to work yet. <em>WIP</em>.</li>
</ul>
Impressions of the products included:
<ul>
	<li><strong>Nagios</strong>: it's a standard, it needs heavy work on its interface design, obviously, otherwise there would be no need for Centreon. But what it does, it does very well. Anything that spits out data can be monitored and recorded by Nagios.</li>
	<li><strong>Centreon</strong>: Ahhh! It makes working with Nagios a breeze. I'm not altogether happy with the CRUD-iness of the interface. There's an artifical separation of hosts and services, which forces you to go from page to page to deal with what should be one functional unit (the host and its services). Also, there is too much of a navigational distinction between monitoring and configuring the monitors. They need to be integrated so you aren't constantly shifting from one page to another when creating and testing a new service. Also, while I understand the need to have a configure, generate, monitor cycle for configuring Nagios, it would be nice to have it auto-generate only the required files with each change directly.</li>
</ul>
Things I haven't tried yet:
<ul>
	<li><strong>NagVis</strong></li>
	<li><strong>NRPE</strong>: The stats provided by SNMP and the plugins installed with Nagios and Centreon are sufficient for my needs at the moment.</li>
	<li><strong>DocuWiki</strong>: no need as long as you use the Centreon service and host templates intelligently.</li>
</ul>
Try out <a title="Fully Automated Nagios" href="http://fannagioscd.sourceforge.net/" target="_blank">FAM</a> on a virtual machine to see what it can do for you, you'll be amazed. And it's free!
