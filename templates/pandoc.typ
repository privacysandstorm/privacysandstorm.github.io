$if(title)$
= $title$
$endif$

$body$

$if(customCites)$
$for(customCites)$
- #cite(label("$customCites$"), form: "full")
$endfor$
$endif$


