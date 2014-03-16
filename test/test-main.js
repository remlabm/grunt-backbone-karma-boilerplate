var allTestFiles = [];
var TEST_REGEXP = /(spec|test)\.js$/i;

var pathToModule = function (path) {
  return path.replace(/^\/base\//, '').replace(/\.js$/, '');
};

Object.keys(window.__karma__.files).forEach(function (file) {
  if (TEST_REGEXP.test(file)) {
    // Normalize paths to RequireJS module names.
    allTestFiles.push(file);
//    allTestFiles.push(pathToModule( file));
  }
});

require.config({
  // Karma serves files under /base, which is the basePath from your config file
  baseUrl: '/base/.tmp/scripts',
  shim: {
    underscore: {
      exports: '_'
    },
    backbone: {
      deps: ['underscore', 'jquery'],
      exports: 'Backbone'
    },
    bootstrap: {
      deps: ['jquery'],
      exports: 'jquery'
    }
  },
  paths: {
    jquery: '../../app/bower_components/jquery/jquery',
    backbone: '../../app/bower_components/backbone/backbone',
    underscore: '../../app/bower_components/underscore/underscore',
    bootstrap: '../../app/bower_components/sass-bootstrap/dist/js/bootstrap',
    moment: '../../app/bower_components/moment/moment'
  },
  deps: allTestFiles,
  callback: window.__karma__.start

});
