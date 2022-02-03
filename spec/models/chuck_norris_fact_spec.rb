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

require 'rails_helper'

RSpec.describe ChuckNorrisFact, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
  
end
