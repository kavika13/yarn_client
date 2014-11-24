yarn_client
===========

Web client application for Yarn; a tool for sharing stakeholder stories

(TODO: Add URL here, and more info)

## Developing on the project

- You need [node/npm](http://nodejs.org/) installed on your box, and working in the path
- You need to install the node dependencies for the project
```
    #in the project root directory
    npm install
```

- You need to install the bower dependencies for the project
```
    #in the project root directory
    source ./dev_env.sh
    bower install
```

- You need to install the polymer dependencies for the project.
  Note that this intentionally uses bower a second time
  due to problems with brunch trying to compile the bower polymer packages
```
    #in the project root directory
    source ./dev_env.sh
    cd app/assets
    bower install
```

###To run the project, launch the brunch server
```
#in the project root directory
source ./dev_env.sh
brunch w -s
```

Pay attention to the prompts to see how to point your browser to the application.

===========================

## Bootstrap build for similar applications

- [How the project build was setup originally](https://github.com/kavika13/client_prototype)
