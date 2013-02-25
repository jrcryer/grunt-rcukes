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
  grunt.initConfig
    cucumber:
      test:
        features: 'features/'
      options:
        format: 'pretty'

  grunt.loadTasks 'tasks'

  grunt.registerTask 'default', ['cucumber']
