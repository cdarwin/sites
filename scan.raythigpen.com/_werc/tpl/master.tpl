<!doctype html>
<html>
<head> 
	<title>%($pageTitle%)</title>
	<link rel="stylesheet" type="text/css" href="/pub/style.css">
	<meta charset="utf-8"> 
</head> 
<body>
	<div id="menu">
		<a href="http://raythigpen.com">home</a> |
		<a href="http://scan.raythigpen.com">scan</a>
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
	Ray Thigpen Insurance is an equal opportunity provider
	</div>
	<div class="right">
	&copy; 2012 Ray Thigpen | <a href="http://hg.suckless.org/swerc">Powered by swerc</a> | <a href="http://senet.us">Hosted by SENet</a>
	</div>
	</div>
</body>
</html>
