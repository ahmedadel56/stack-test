require_relative '../classes/extras'

describe Extras do
  before :each do
    @extras = Extras.new
    @extras.push 6.7945
    @extras.push [4, 4, 6, 7, 8, 10]
    @extras.push 'he,loo'
    @extras.push({ name: 'Ahmed Adel 😊' })
    @extras.push 6
    @extras.push 16
    @extras.push 29
    @extras.push 100
    @extras.push(-6)
  end

  it 'shows instance of extras class' do
    expect(@extras).to be_instance_of Extras
  end

  it 'Test inherited methodes from Stack' do
    expect(@extras.arr).to eq [6, 16, 29, 100, -6]
    # remember -6 is the last accept number pushed to Stack in before methode
    expect(@extras.pop).to eq(-6)
    expect(@extras.max).to eq 100
    @new_extras = Stack.new(6, 3, 2, -1, 0)
    expect(@new_extras.arr).to eq [6, 3, 2, -1, 0]
  end

  it 'Test mean methode' do
    # (6+16+29+100-6)/5 = 29
    expect(@extras.mean).to eq 29
  end
end
