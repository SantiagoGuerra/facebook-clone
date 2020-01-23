# frozen_string_literal: true

module UsersHelper
  def find_friendship_by_friend(friend)
    @friendship = Friendship.find_by(user_id: current_user.id, friend_id: friend.id)

    if @friendship.nil?
      return Friendship.find_by(user_id: friend.id, friend_id: current_user.id)
    else
      return @friendship
    end
  end
end
