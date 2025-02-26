require 'spec_helper'
require_relative '../../lib/SumMinute'

RSpec.describe 'SumMinutes' do
  it 'soma corretamente os minutos' do
    t = "21:39"
    k = 44

    expect { sum_minutes(t, k) }.to output("22:23").to_stdout
  end
end
