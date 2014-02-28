test-xquery-module
================

Marklogic XQuery Module

Testing npm for XQuery module

Instruction
-----------
How to create, deploy and use an XQuery module with NPM

Requirement NodeJS and Git should be installed and available from PATH

1. Create a new github repository

2. Create suggested folder structure in the project
  - root only contains package.json and README.md  
  - src folder contains the source  
  - test folder contains unit tests  
  - doc folder contains API documentation  

3. Create NPM package
  - Execute ```npm init``` command from root.  
  This command will create ```package.json``` file.  
  Most important attributes in this file are ```name``` and ```version``` (more details [2]).
  - In this example:  
    - name is ```test-xquery-module``` **MUST** match the Github repository name
    - version is ```0.0.1```

4. Publish a new release
  1. create a new tag  
  ```git tag -a v0.0.1 -m "Version 0.0.1"```  
  ```git push --tags```
  2. (optionaly) publish the new package version in NPM  
  *this command require a NPM account [3]*
    - ```npm publish```

5. Install this module in your project  
  - From Github repository  
  Assuming the root of your project is $MY_PROJECT_HOME.  
  Execute ```npm install https://github.com/rlouapre/test-xquery-module/tarball/v0.0.1```  
  ```test-xquery-module``` is Github repository name and ```v0.0.1``` is the tag name created in #4.1  
  - (optionally) from NPM
    - Install the new package from npm (only available if #5 has been executed)
    Execute ```npm install test-xquery-module@0.0.1```

7. Reference the module in your project  
  The module is now available in node_modules directory.  
  It can be referenced from the main module with:
  ```
  import module namespace test-module = "http://marklogic.com/rlo/test-module"
        at "node_modules/test-xquery-module/src/test-xquery-module.xqy";
  ```

[1] - http://www.mattpalmerlee.com/2013/04/23/create-your-first-node-module-and-publish-it-to-the-npm-registry/  
[2] - https://www.npmjs.org/doc/files/package.json.html  
[3] - https://www.npmjs.org/signup  