
describe package('amazonssmagent') do
  it {should be_installed}
end

describe service('amazonssmagent') do
  it {should be_installed}
  it {should be_enabled}
  it {should be_running}
end

describe package('AWSAgent') do
  it {should be_installed}
end

describe services('AWSAgent') do
  it {should be_installed}
  it {should be_enabled}
  it {should be_running}
end

#describe package('datadog-agent') do
  #it {shold be_installed}
#end

#describe services('datadog-agent') do
  #it {should be_installed}
  #it {should be_enabled}
  #it {should be_running}
#end
