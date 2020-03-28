-> porters_bedroom

=== porters_bedroom ===
This is porters bedroom.

+ [click frizzy] #action
  -> frizzy
+ [enter hall]
  -> hall


=== frizzy ===
Frizy looks at you suspiciously. This is a life or death situation, take this seriously.
+ Pet cat #action
  FRIZZY: *scratches the $%\#! out of you* -999999 mental stability. take that wimp.
  PORTER: why do you hate me, i gave you food and water, and a cosy home to live in.I spoil you with toys and treats and make sure nothing happens to you... And yet you treat me so unfairly...   i still love you though.
  -> frizzy
+ Pet cat #action
  FRIZZY: I will allow it.
  -> frizzy
+ Pet cat #action
  FRIZZY: *purrs*
  -> frizzy
+ cancel #action
  -> porters_bedroom
  
=== hall ===
An empty hall
  ->END