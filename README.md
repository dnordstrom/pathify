# Pathify

Pathify is a tiny Ruby gem that helps you find filesystem paths
to things like installed gems. At the moment it simply acts as a
shortcut to `bundle show` and `gem which` so please feel free to
contribute or suggest features you would find useful.

### Find gem

     > path gem:migraine
    /Users/Daniel/.rvm/gems/ruby-1.9.3-p0@pathify/gems/migraine-0.0.1

### Find gem installed by Bundler

     > path bundle:bundler
    /Users/Daniel/.rvm/gems/ruby-1.9.3-p0@pathify/gems/bundler-1.0.21

### Change directory to gem
    
    Sites
     > cd `path bundle:bundler`

    bundler-1.0.21
     >

## Contribute

Any filesystem related path finders/shortcuts are welcome. See
`lib/pathify` for examples. It's really very simple.

Add a class with a constructor that takes a string argument. In the
constructor, do what you need to do to find the path and store it
in the `@path` instance variable. That's it, it's now ready to be
used by the command line tool.

E.g. the command `path bundle:migraine` will create an object of
class `Bundle` and pass `"bundler"` to the constructor, which
looks for the path and sets the `@path` variable. The object is
outputted to the user--`to_s` by default outputs `@path`.
