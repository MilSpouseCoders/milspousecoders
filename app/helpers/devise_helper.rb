module DeviseHelper
  def devise_error_messages!
    return '' if resource.errors.empty?

    messages = resource.errors.full_messages.map { |msg| content_tag(:div, msg) }.join
    html = <<-HTML
    <div class="alert alert-danger">
      #{messages}
    </div>
    HTML

    # rubocop:disable Rails/OutputSafety
    html.html_safe # TODO don't use html_safe, use content_tag above (issue #39)
    # rubocop:enable Rails/OutputSafety
  end
end
