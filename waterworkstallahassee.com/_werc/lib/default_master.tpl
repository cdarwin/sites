<div id="container">
    <div id="header">
        <div class="midHeader">
% if(! ~ $#siteImage 0) {
            <h1 class="headerTitle"><a href="/"><img src="%($"siteImage%)" alt="%($"siteTitle%)"/> <span id="headerSubTitle">%($"siteSubTitle%)</span></a></h1>
% }
% if not {
            <h1 class="headerTitle"><a href="/">%($"siteTitle%) <span id="headerSubTitle">%($"siteSubTitle%)</span></a></h1>
% }
         </div>
         <div id="menu">
             <ul>
% nav_sites
             </ul>
         </div>
   </div>
% if(! ~ $#handlers_bar_left 0) {
%   for(h in $handlers_bar_left) {
%       run_handler $$h 
%   }   
% }
    <div id="main-copy">
% run_handlers $handlers_body_head
% run_handler $handler_body_main
% run_handlers $handlers_body_foot
    </div>
    <div id="footer">
% cat `{ get_lib_file footer.inc }
    </div>
</div>
