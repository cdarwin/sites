<div id="header">
<a href="/">%($"siteTitle%) <span id="headerSubTitle">%($"siteSubTitle%)</span></a>
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
% cat `{ get_lib_file footer.inc }
</div>
