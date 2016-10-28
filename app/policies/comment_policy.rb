class CommentPolicy < ApplicationPolicy

     def create?
      user.has_role? :admin or user.has_role? :member or user.has_role? :author
     end
     def update?
      user.has_role? :admin or (user.has_role? :member and record.user_id == user.id) or (user.has_role? :author and record.user_id == user.id)
     end
     def destroy?
     user.has_role? :admin or (user.has_role? :member and record.user_id == user.id) or (user.has_role? :author and record.user_id == user.id)
     end
    class Scope < Scope
      def resolve
        scope
      end

    end
end
