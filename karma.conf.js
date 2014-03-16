// Karma configuration
// Generated on Wed Mar 12 2014 21:26:18 GMT-0700 (Pacific Daylight Time)

module.exports = function (config) {
  config.set({

    // base path that will be used to resolve all patterns (eg. files, exclude)
    basePath: '',

    // available frameworks: https://npmjs.org/browse/keyword/karma-adapter
    frameworks: ['mocha', 'requirejs', 'chai-sinon'],

    // list of files / patterns to load in the browser
    files: [
      { pattern: 'app/bower_components/jquery/jquery.js', included: false },
      { pattern: 'app/bower_components/backbone/backbone.js', included: false },
      { pattern: 'app/bower_components/underscore/underscore.js', included: false },
      { pattern: 'app/bower_components/sass-bootstrap/dist/js/bootstrap.js', included: false },
      { pattern: 'app/bower_components/moment/moment.js', included: false },

      {pattern: '.tmp/scripts/**/*.js', included: false},
      {pattern: 'test/**/*Spec.coffee', included: false},
      'test/test-main.js',
    ],

    // list of files to exclude
    exclude: [
      '.tmp/scripts/main.js'
    ],
    preprocessors: {
      '**/*.coffee': ['coffee']
    },

    coffeePreprocessor: {
      // options passed to the coffee compiler
      options: {
        bare: true,
        sourceMap: false
      },
      // transforming the filenames
      transformPath: function (path) {
        return path.replace(/\.coffee$/, '.js');
      }
    },

    // possible values: 'dots', 'progress'
    reporters: ['progress'],

    // web server port
    port: 9876,

    // enable / disable colors in the output (reporters and logs)
    colors: true,

    // possible values: config.LOG_DISABLE || config.LOG_ERROR || config.LOG_WARN || config.LOG_INFO || config.LOG_DEBUG
    logLevel: config.LOG_INFO,

    // enable / disable watching file and executing tests whenever any file changes
    autoWatch: false,

    // available browser launchers: https://npmjs.org/browse/keyword/karma-launcher
    browsers: ['PhantomJS'],

    // if true, Karma captures browsers, runs the tests and exits
    singleRun: false
  });
};
