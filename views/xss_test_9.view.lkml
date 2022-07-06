# The name of this view in Looker is "Xss Test 9"
view: xss_test_9 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: demo_db.xss_test_9 ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Div Stylebackgroundimage Urlhttpi Uadiv" in Explore.

  dimension: div_stylebackgroundimage_urlhttpi_uadiv {
    type: string
    sql: ${TABLE}.`<div style="background-image: url('http://i.ua')"></div>`
      ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
