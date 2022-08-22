class AttendanceSerializer < ActiveModel::Serializer
  attributes :id, :date, :timeIn, :timeOut, :activities, :sign, :checkedBy
end
