xml.instruct! :xml, :version => "1.0"
xml.rss :version => "2.0" do
  xml.channel do
    xml.title "Order Online"
    xml.description "A peek inside Josh and Kendra's brains"
    xml.link root_url

    @blogs.each do |blog|
      xml.item do
        xml.title blog.title
        xml.description blog.body
        xml.pubDate blog.created_at.to_s(:rfc822)
        xml.link blog_url(blog)
        xml.guid blog_url(blog)
      end
    end
  end
end