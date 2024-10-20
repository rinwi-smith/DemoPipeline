export default [
  {
    files: ["*.js"],
    languageOptions: {
      globals: {
        require: "readonly",   // Enable 'require' as a global variable
        describe: "readonly",  // Enable 'describe' from Mocha
        it: "readonly",        // Enable 'it' from Mocha
      }
    },
    rules: {
      "no-console": "off",     // Example rule to turn off 'console' warnings
      "no-undef": "off"        // Turn off undefined variable warnings for test environments
    }
  }
];
