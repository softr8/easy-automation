class SimpleTest < BaseTest
  def test_search_selenium
    main_page = HomePage.new(@webpage)
    results_page = ResultsPage.new(@webpage)
    main_page.query.enter data.query_text
    main_page.submit.click
    sleep(5) #Just for demo purposes
    assert results_page.first_add.include?(data.query_text)
  end
end