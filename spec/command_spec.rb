require 'spec_helper'

describe EventReporter::Command do
  describe ".execute" do
    context "when the command is 'queue'" do
      context "and 'count'" do
        it "calls queue#call with :count" do
          EventReporter::Queue.should_receive(:call)
          EventReporter::Command.execute("queue", ["count"])
        end
      end
    end
  end
end