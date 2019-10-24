require "application_system_test_case"

class ClassAssignmentsTest < ApplicationSystemTestCase
  setup do
    @class_assignment = class_assignments(:one)
  end

  test "visiting the index" do
    visit class_assignments_url
    assert_selector "h1", text: "Class Assignments"
  end

  test "creating a Class assignment" do
    visit class_assignments_url
    click_on "New Class Assignment"

    fill_in "Assignment name", with: @class_assignment.assignment_name
    fill_in "Due date", with: @class_assignment.due_date
    fill_in "Points", with: @class_assignment.points
    fill_in "School class", with: @class_assignment.school_class_id
    click_on "Create Class assignment"

    assert_text "Class assignment was successfully created"
    click_on "Back"
  end

  test "updating a Class assignment" do
    visit class_assignments_url
    click_on "Edit", match: :first

    fill_in "Assignment name", with: @class_assignment.assignment_name
    fill_in "Due date", with: @class_assignment.due_date
    fill_in "Points", with: @class_assignment.points
    fill_in "School class", with: @class_assignment.school_class_id
    click_on "Update Class assignment"

    assert_text "Class assignment was successfully updated"
    click_on "Back"
  end

  test "destroying a Class assignment" do
    visit class_assignments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Class assignment was successfully destroyed"
  end
end
