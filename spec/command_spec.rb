require 'spec_helper'

describe EventReporter::Command do
  describe ".execute" do
    context "when the command is 'queue'" do
      it "validates the paramaters for Queue" do
        EventReporter::Queue.should_receive(:valid_parameters?)
        EventReporter::Command.execute("queue", [])
      end

      before(:each) do
        EventReporter::Queue.stub(:valid_parameters? => true)
      end

      context "and 'count'" do
        it "calls queue#call with 'count'" do
          EventReporter::Queue.any_instance.should_receive(:call).with(["count"])
          EventReporter::Command.execute("queue", ["count"])
        end
      end

      context "and 'print'" do
        it "calls queue#call with 'print'" do
          EventReporter::Queue.any_instance.should_receive(:call).with(["print"])
          EventReporter::Command.execute("queue", ["print"])
        end
      end
    end
  end
end