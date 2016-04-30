# grunt-rcukes

> Grunt plugin for running ruby cucumber.

##Getting Started

This plugin requires Grunt `0.4.0`.

If you haven't used [Grunt](http://gruntjs.com/) before, be sure to check out the [Getting Started](http://gruntjs.com/getting-started) guide, as it explains how to create a [Gruntfile](http://gruntjs.com/sample-gruntfile) as well as install and use Grunt plugins.

1. Install this grunt plugin with the following command:

    ```shell
    npm install grunt-rcukes --save-dev
    ```


2. Install cucumber gem

    ```shell
    gem install cucumber
    ```


3. Once the plugin has been installed, it may be enabled inside your Gruntfile with this line of JavaScript:

    ```js
    grunt.loadNpmTasks('grunt-rcukes');
    ```


##Cucumber task

_Run this task with the `grunt cucumber` command._

###Usage Example

```js
cucumber: {
    test: {
        features: 'features/'
    },
    options: {
        prefix: 'bundle exec',
        profile: 'default',
        format: 'progress'
    }
}
```

###Target Properties
####features
Type: `String`

The features directory containing cucumber features

###Options
####prefix
Type: `String`

Prefix before cucumber command

####profile
Type: `String`

Cucumber profile to use

####format
Type: `String`

#### spawnOptions
Type: `Object`

[Options](https://nodejs.org/api/child_process.html#child_process_child_process_exec_command_options_callback) to pass to nodeJS child process spawn 

Cucumber formatter
