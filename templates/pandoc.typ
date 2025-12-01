$if(title)$
= $title$
$endif$

$body$
$if(customNoCites)$
$for(customNoCites)$
#cite(label("$customNoCites$"), form: none)
$endfor$
$endif$

$if(customCitesFull)$
$for(customCitesFull)$
- #cite(label("$customCitesFull$"), form: "full")
$endfor$
$endif$



