require({
  baseUrl: 'lib',
  paths: {
    'app': '../app'
  },
  map: {
    '*': {
      'css': 'require-css/css',
      'less': 'require-less/less',
      'is': 'require-is/is',
      'selector': 'jquery',
      'cs': 'require-coffee/cs',
      'hbs': 'require-handlebars-plugin/hbs'
    }
  }
}, ['cs!app/main']);
