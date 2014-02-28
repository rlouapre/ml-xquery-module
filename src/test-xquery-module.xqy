xquery version "1.0-ml";

module namespace test-module = "http://marklogic.com/rlo/test-module";
declare default function namespace "http://marklogic.com/rlo/test-module";

declare option xdmp:mapping "false";

declare function greetings(
  $name as xs:string
) as xs:string
{
  "Hello " || $name
};

