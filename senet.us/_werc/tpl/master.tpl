<!doctype html>
<html>
<head> 
	<title>%($pageTitle%)</title>
	<link rel="stylesheet" type="text/css" href="/pub/style.css">
	<meta charset="utf-8"> 
</head> 
<body>
	<div id="menu">
		<a href="http://senet.us">home</a> |
		<a href="http://blog.senet.us">blog</a> |
		<a href="http://hg.senet.us">hg</a> |
		<a href="https://github.com/cdarwin">git</a> |
		<a href="https://plus.google.com/118285902950180656780/about">g+</a>
	</div>
	<div id="header">
% if(! ~ $#siteImage 0) {
	<a href="/"><img src="%($"siteImage%)" alt="%($"siteTitle%)"/> <span id="headerSubTitle">%($"siteSubTitle%)</span></a>
% }
% if not {
	<a href="/">%($"siteTitle%) <span id="headerSubTitle">%($"siteSubTitle%)</span></a>
% }
	</div>

	<div id="content">
% if(! ~ $#handlers_bar_left 0) {
	<div id="nav">
%   for(h in $handlers_bar_left) {
%       run_handler $$h
%   }
	</div>
% }

	<div id="main">

% run_handlers $handlers_body_head

% run_handler $handler_body_main

% run_handlers $handlers_body_foot

	</div>

	</div>

	<div id="footer">
	<div class="left">
	<a href="http://hg.suckless.org/swerc">swerc powered</a>
	</div>
	<div class="right">
	&copy; 2012 Jason R Thigpen
	</div>
	</div>
</body>
</html>
