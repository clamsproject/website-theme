# from http://acegik.net/blog/ruby/jekyll/plugins/howto-nest-liquid-template-variables-inside-yaml-front-matter-block.html
module Jekyll
  module ExpandNestedVariableFilter
    def flatify(input)
      Liquid::Template.parse(input).render(@context)
    end
  end
end

Liquid::Template.register_filter(Jekyll::ExpandNestedVariableFilter)


# NOTE that this file will not work with github-pages gem (https://github.com/jekyll/jekyll/issues/5265#issuecomment-241267253)
