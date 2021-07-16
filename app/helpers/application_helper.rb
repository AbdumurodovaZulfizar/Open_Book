#rubocop disable 
module ApplicationHelper
  def alert_btn
    return render partial: 'layouts/alerts' if flash[:alert]
  end

  def notice_btn
    return render partial: 'layouts/notice' if flash[:notice]
  end

  def follow_or_unfollow_friend_request(user)
    show_btns(user) unless Current.user == user
  end

  def show_btns(user)
    followed = Following.find_by(follower_id: Current.user.id, followed_id: user.id)
    if followed
      button_to(
        '-',
        following_path(id: followed.id, follower_id: Current.user.id, followed_id: user.id),
        method: :delete, class: 'btn btn-outline-danger btn-light px-2 py-0'
      )
    else
      button_to(
        '+',
        followings_path(follower_id: Current.user.id, followed_id: user.id),
        method: :post, class: 'btn btn-outline-dark btn-light px-2 py-0'
      )
    end
  end

  def upvote_or_downvote(opinion)
    vote = Vote.find_by(user_id: Current.user.id, opinion_id: opinion.id)
    if vote
      link_to(
        '👎',
        vote_path(id: vote.id, user_id: Current.user.id, opinion_id: opinion.id),
        method: :delete, class: 'float-end none'
      )
    else
      link_to(
        '👍',
        votes_path(user_id: Current.user.id, opinion_id: opinion.id),
        method: :delete, class: 'float-end none'
      )
    end
  end

  def left_user_photo
    tag('img', src: url_for(Current.user.photo), class: 'img-80') if Current.user.photo.attached?
  end

  def login_navbar
    return unless Current.user

    content_tag :ul, class: 'navbar-nav text-black-50' do
      concat(content_tag(:li, class: 'nav-item pe-2') do
        link_to(edit_user_path(Current.user.id), class: 'btn p-2') do
          concat(content_tag(:i, ' ', class: 'fas fa-user-edit'))
        end
      end)
      concat(content_tag(:li, class: 'nav-item pe-2') do
        link_to(user_path(Current.user.id), class: 'btn p-2') do
          concat(content_tag(:i, ' ', class: 'fas fa-user'))
        end
      end)
      concat(content_tag(:li, class: 'nav-item pe-2') do
        link_to(logout_path, method: :delete, class: 'btn p-2') do
          concat(content_tag(:span, 'Log out'))
          concat(content_tag(:i, ' ', class: 'fas fa-door-open'))
        end
      end)
    end
  end

  def right_home
    return unless Current.user

    User.order(created_at: :desc).all.map do |user|
      content_tag :div, class: 'right_home my-3' do
        content_tag :div, class: 'row g-0' do
          concat(content_tag(:div, class: 'col-md-3') do
            tag('img', src: url_for(user.photo), class: 'img-60') if user.photo.attached?
          end)
          concat(content_tag(:div, class: 'col-md-9') do
            content_tag :div, class: 'card-body py-0 pl-3' do
              concat(content_tag(:div, class: '') do
                concat(content_tag(:h6, class: '') do
                  link_to(user_path(user.id), class: 'text-white') do
                    concat(content_tag(:span, user.full_name))
                  end
                end)
                concat(content_tag(:div) { concat(content_tag(:span, follow_or_unfollow_friend_request(user))) })
              end)
            end
          end)
        end
      end
    end.join.html_safe
  end

  def right_user_photo
    return unless Current.user.photo.attached?

    tag('img', src: url_for(@user.photo), class: 'img-80')
  end

  def right_profile(user)
    user.followers.map do |f|
      content_tag :div, class: 'mb-1 right_home' do
        content_tag :div, class: 'row g-0 p-3' do
          concat(content_tag(:div, class: 'col-md-4') do
            tag('img', src: url_for(f.follower.photo), class: %w[img-80 rounded-circle mx-auto d-block])
          end)
          concat(content_tag(:div, class: 'col-md-8') do
            content_tag :div, class: 'px-3 py-0' do
              concat(content_tag(:div, class: 'text-white') do
                concat(content_tag(:span, f.follower.full_name))
              end)
              concat(content_tag(:span, follow_or_unfollow_friend_request(f.follower)))
            end
          end)
        end
      end
    end.join.html_safe
  end
end
