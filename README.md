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
