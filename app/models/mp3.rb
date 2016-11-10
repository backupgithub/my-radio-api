class Mp3 < ApplicationRecord
   # Assign an API key on create
   before_create do |mp3|
      mp3.api_key = mp3.generate_api_key
   end

   # Generate a unique API key
   def generate_api_key
      loop do
         token = SecureRandom.base64.tr('+/=', 'Qrt')
         break token unless Mp3.exists?(api_key: token)
      end
   end
end
