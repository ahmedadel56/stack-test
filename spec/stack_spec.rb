require_relative '../classes/stack'

describe Stack do
  before :each do
    @stack = Stack.new
    @stack.push 6.7945
    @stack.push [4,4,6,7,8,10]
    @stack.push 'he,loo'
    @stack.push({name: 'Ahmed Adel 😊'})
    @stack.push 6
    @stack.push 16
    @stack.push 29
    @stack.push 100
    @stack.push -6
  end

  it 'shows instance of stack class' do
    expect(@stack).to be_instance_of Stack
  end

  it 'Test Only integer condition in push methode' do
    expect(@stack.arr).to eq [6,16,29,100,-6]
  end

  it 'Test arguments passed in construction methode' do
    @new_stack = Stack.new(6,3,2,-1,0)
    expect(@new_stack.arr).to eq [6,3,2,-1,0]
  end

  it 'Show last poped element in the Stack' do
    # remember -6 is the last accept number pushed to Stack in before methode
    expect(@stack.pop).to eq -6
  end

  it "Find maximum number in the Stack" do
    expect(@stack.max).to eq 100
  end
end