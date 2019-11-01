module PhoneNumber
  def self.clean(phone_number)
    phone_number = phone_number.gsub(/\D/, '')
    return nil if phone_number[0] != '1' && phone_number.length >= 11

    phone_number = phone_number.sub('1', '') if phone_number.length == 11

    return phone_number if [phone_number[0], phone_number[3]].all? { |x| x.between?('2', '9') }
  end
end
