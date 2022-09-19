class AttendanceSerializer < ActiveModel::Serializer
  attributes :id, :date, :timeIn, :timeOut, :activities, :sign, :checkedBy,:user_id
end
