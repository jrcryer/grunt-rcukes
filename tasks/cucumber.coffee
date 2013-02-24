#
# grunt-rcukes
# http://www.jamescryer.com/grunt-rcukes
#
# Copyright (c) 2013 James Cryer
# http://www.jamescryer.com
# Licensed under the MIT license.
#
'use strict'

module.exports = (grunt) ->

  builder = require('./lib/builder').init grunt
  cucumber = require('./lib/cucumber').init grunt

  grunt.registerMultiTask 'cucumber', 'Run phpunit', ->

    command = builder.build this.data.features, this.options
    dir     = builder.directory()

    grunt.verbose.writeln 'Starting phpunit (target: ' + this.target.cyan + ') in ' + dir.cyan
    grunt.verbose.writeln 'Running: ' + command.cyan


    cucumber.run(command, this.async());
