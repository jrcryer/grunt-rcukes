#
# grunt-rcukes
# http://www.jamescryer.com/grunt-rcukes
#
# Copyright (c) 2013 James Cryer
# http://www.jamescryer.com
# Licensed under the MIT license.
#
'use strict'

exec = require('child_process').exec

exports.init = (grunt) ->

  #
  # Runs cucumber command with callback
  #
  # @param String command
  # @param String spawnOptions
  # @param Function callback
  #
  exports.run = (command, spawnOptions, callback) ->

    exec command, spawnOptions, (err, stdout, stderr) ->
      grunt.log.write(stdout) if stdout
      grunt.fatal(err) if err
      callback()

  return exports