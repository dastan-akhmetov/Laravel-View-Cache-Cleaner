__Name:__ Laravel View Cache Cleaner

__Short name:__ LVCC v1.0

__Version:__ 1.0.0

__Date:__ 12 March 2017


__Author:__ Dastan Akhmetov

__Email:__ hello@hophmahn.com

__License:__ Free

__Description:__

This shell script clears the views of Laravel Application
by watching file changes in the project.
The reason for that is a cached views are not updated instantly after
the project file change. You have to refresh web page several times
until it replaces the old view cache with the new one.
That is why I decided to create a small shell script which removes
all the generated php cache files, so after removing it, Laravel
could generate a new templates then respond with them to the browser.

For best practice, you can use it with PhpStorm's File Watcher or
any of your choice.

You only have to provide a path to the cache folder as an argument.

Make the script executable by running: 

__chmod +x Laravel_View_Cache_Cleaner.sh__


Example: 

__./Laravel_View_Cache_Cleaner.sh /var/www/{Laravel}/storage/framework/views__

