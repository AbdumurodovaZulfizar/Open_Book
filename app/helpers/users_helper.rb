# rubocop:disable Style/IfUnlessModifier
module UsersHelper
  def cover_image
    return unless @user.cover_image.attached?

    tag('img', src: url_for(@user.cover_image), class: 'cover_image')
  end

  def user_opinion(user)
    user.opinions.map do |opinion|
      content_tag :div, class: 'mb-3' do
        content_tag :div, class: 'row g-0' do
          concat(content_tag(:div, class: 'col-md-2 d-flex justify-content-center align-items-center') do
            concat(content_tag(:div) do
              if opinion.author.photo.attached?
                tag('img', src: url_for(opinion.author.photo), class: 'img-80 p-2')
              end
            end)
          end)
          concat(content_tag(:div, class: 'col-md-10 rounded white') do
            content_tag :div, class: 'card-body p-2' do
              concat(content_tag(:h5, @user.username, class: 'card-title link-dark fw-bold'))
              concat(content_tag(:p, opinion.text, class: 'card-text'))
              concat(content_tag(:p, class: 'card-text') do
                concat(content_tag(:small, time_ago_in_words(@user.created_at), class: 'text-muted'))
              end)
            end
          end)
        end
      end
    end.join.html_safe
  end
end
# rubocop:enable Style/IfUnlessModifier
