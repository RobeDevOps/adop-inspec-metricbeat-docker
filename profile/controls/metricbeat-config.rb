
title 'metricbeat docker configuration'

# you add controls here
control "metricbeat configuration" do                    # A unique ID for this control
    impact 0.5                                           # The criticality, if this control fails.
    title "verify the metricbeat files were created"     # A human-readable title
    desc "An optional description..."                    # Describe why this is needed
    desc "label", "An optional description with a label" # Pair a part of the description with a label
    tag "metricbeat"                                       # to the test
    ref "Document A-12", url: 'http://...'               # Additional references

    LOGSTASH_FILES = [
        '/usr/share/metricbeat/metricbeat.yml',
        '/usr/share/metricbeat/modules.d/docker.yml'
    ]

    LOGSTASH_FILES.each do |file|
        describe file(file) do
            it { should be_file }
            its('owner') { should eq 'root' }
            its('group') { should eq 'metricbeat' }
        end
    end
end