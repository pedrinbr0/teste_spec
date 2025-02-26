require 'spec_helper'
require_relative '../../lib/TomohikoSakamoto'

RSpec.describe 'TomohikoSakamoto' do
  it 'calcula corretamente o dia da semana' do
    day = 13
    month = 7
    year = 2017

    expect(tomohiko_sakamoto(year, month, day)).to eq("A data 13/7/2017 foi/será um(a) Quinta-feira.")
  end
end
