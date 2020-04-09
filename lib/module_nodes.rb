module Nodes_page
    document = Nokogiri::HTML(open('https://importacionesarturia.com/tienda/'))
    node_base = document.search("ul[class='product-categories']")
    audio = node_base.search("li[class='cat-item cat-item-48']").search("ul[class='children']").search('li')
    video = node_base.search("li[class='cat-item cat-item-42']").search("ul[class='children']").search('li')
    gps = node_base.search("li[class='cat-item cat-item-62']").search("ul[class='children']").search('li')
end