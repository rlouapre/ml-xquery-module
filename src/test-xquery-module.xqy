xquery version "1.0-ml";

module namespace import = "http://marklogic.com/import";

declare option xdmp:mapping "false";

declare function greetings(
  $name as xs:string
) as xs:string
{
  "Hello " || $name
};

