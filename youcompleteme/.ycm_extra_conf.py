def FlagsForFile(filename, **kwargs):
      flags = ['-Wall',
              '-Wextra',
              '-Werror',
              '-x',
              'c++'] # put your flag here
      return { 'flags': flags }

