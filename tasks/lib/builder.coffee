#
# grunt-rcukes
# https://github.com/jrcryer/grunt-rcukes
#
# Copyright (c) 2013 James Cryer
# http://www.jamescryer.com
# Licensed under the MIT license.
#
'use strict';

# External libs.
path = require('path')

exports.init = (grunt) ->

  exports   = {}
  _         = grunt.util._
  directory = null
  config    = {}

  #
  # @var object defaults values
  #
  defaults =
    color: true

  #
  # Returns current profile
  #
  # @return string
  #
  profile = ->
    return '-p ' + config.profile unless config.profile == undefined
    false

  #
  # Returns current format
  #
  # @return string
  #
  format = ->
    return '-f ' + config.format unless config.format == undefined
    false

  #
  # Builds cucumber command
  #
  # @return string
  #
  buildOptions = ->

    options = []
    _.each defaults, (value, key) ->
      if grunt.option(key) != false || config.key != false
        options.push '--' + key

    options.push(profile()) if profile()
    options.push(format()) if format()

    return options.join ' '

  #
  # Returns the command to be run
  #
  #
  command = ->
    path.normalize config.bin

  #
  # Returns the prefix to the cucumber command
  #
  #
  prefix = ->
    return config.prefix unless config.prefix == false
    ''

  #
  # Returns the directory that cucmber features will be run from
  #
  # @return string
  #
  exports.directory = ->
    directory

  #
  # Setup task before running it
  #
  # @param Object runner
  #
  exports.build = (features, options) ->

    directory = path.normalize features
    config    = options defaults

    return prefix() + ' ' + command() + ' ' + buildOptions() + ' ' + directory

  return exports
