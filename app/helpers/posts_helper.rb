module PostsHelper
  def to_markdown(text)
    renderer = Redcarpet::Render::HTML.new(:no_links => true, :hard_wrap => true)
    markdown = Redcarpet::Markdown.new(renderer, :fenced_code_blocks => true)
    markdown.render(text).html_safe
  end
end
