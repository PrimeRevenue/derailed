# == Schema Information
#
# Table name: chuck_norris_facts
#
#  id          :integer          not null, primary key
#  fact        :string
#  karatepower :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class ChuckNorrisFactSerializer < ActiveModel::Serializer
  attributes :id, :fact, :karatepower
end
