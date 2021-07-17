module OpinionsHelper
  def check_login
    if Current.user
      render partial: 'opinions/home'
    else
      render partial: 'sections/registration'
    end
  end

  def check_errors
    return unless @opinion.errors.any?

    tag.div tag.h5('Invalid input!')
    @opinion.errors.full_messages.each do |error|
      content_tag(:div, error, class: %w[alert alert-danger])
    end
  end

  def show_opinions(opinions)
    opinions.map do |opinion|
      content_tag :div, class: 'mb-3' do
        content_tag :div, class: 'row g-0 p-1' do
          concat(content_tag(:div, class: 'col-1') do
            tag('img', src: url_for(opinion.author.photo), class: 'img-60') if opinion.author.photo.attached?
          end)
          concat(content_tag(:div, class: 'col-11') do
            content_tag :div, class: 'card-body m-0 py-0 white rounded' do
              concat(content_tag(:h5, class: 'none') do
                       link_to(user_path(opinion.author.id)) do
                         concat(content_tag(:div, opinion.author.username, class: 'link-dark none'))
                       end
                     end)
              concat(content_tag(:div, opinion.text, class: ''))
              concat(content_tag(:div, class: 'd-flex justify-content-between') do
                concat(content_tag(:div, class: 'text-end') do
                  concat(content_tag(:small, opinion.votes.count, class: ''))
                  concat(content_tag(:span, upvote_or_downvote(opinion), class: 'none'))
                end)
              end)
            end
          end)
        end
      end
    end.join.html_safe
  end
end
