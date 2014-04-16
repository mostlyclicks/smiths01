# encoding: utf-8
require "spec_helper"

describe Refinery do
  describe "Workers" do
    describe "Admin" do
      describe "workers" do
        refinery_login_with :refinery_user

        describe "workers list" do
          before do
            FactoryGirl.create(:worker, :name => "UniqueTitleOne")
            FactoryGirl.create(:worker, :name => "UniqueTitleTwo")
          end

          it "shows two items" do
            visit refinery.workers_admin_workers_path
            page.should have_content("UniqueTitleOne")
            page.should have_content("UniqueTitleTwo")
          end
        end

        describe "create" do
          before do
            visit refinery.workers_admin_workers_path

            click_link "Add New Worker"
          end

          context "valid data" do
            it "should succeed" do
              fill_in "Name", :with => "This is a test of the first string field"
              click_button "Save"

              page.should have_content("'This is a test of the first string field' was successfully added.")
              Refinery::Workers::Worker.count.should == 1
            end
          end

          context "invalid data" do
            it "should fail" do
              click_button "Save"

              page.should have_content("Name can't be blank")
              Refinery::Workers::Worker.count.should == 0
            end
          end

          context "duplicate" do
            before { FactoryGirl.create(:worker, :name => "UniqueTitle") }

            it "should fail" do
              visit refinery.workers_admin_workers_path

              click_link "Add New Worker"

              fill_in "Name", :with => "UniqueTitle"
              click_button "Save"

              page.should have_content("There were problems")
              Refinery::Workers::Worker.count.should == 1
            end
          end

        end

        describe "edit" do
          before { FactoryGirl.create(:worker, :name => "A name") }

          it "should succeed" do
            visit refinery.workers_admin_workers_path

            within ".actions" do
              click_link "Edit this worker"
            end

            fill_in "Name", :with => "A different name"
            click_button "Save"

            page.should have_content("'A different name' was successfully updated.")
            page.should have_no_content("A name")
          end
        end

        describe "destroy" do
          before { FactoryGirl.create(:worker, :name => "UniqueTitleOne") }

          it "should succeed" do
            visit refinery.workers_admin_workers_path

            click_link "Remove this worker forever"

            page.should have_content("'UniqueTitleOne' was successfully removed.")
            Refinery::Workers::Worker.count.should == 0
          end
        end

      end
    end
  end
end
