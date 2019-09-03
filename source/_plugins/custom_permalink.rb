# Based on http://stackoverflow.com/a/17206081/1412255
module Jekyll
    class PermalinkRewriter < Generator
        safe true
        priority :low

        def generate(site)
            # To keep permalinks backwards compatible with middleman
            site.posts.docs.each do |item|
                item.data['permalink'] = '/' + item['slug']
            end
        end
    end
end
