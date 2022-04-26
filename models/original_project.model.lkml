# Define the database connection to be used for this model.
connection: "national_parks"

# include all the views
include: "/views/**/*.view"
include: "custom_dashboard.dashboard.lookml"

# Datagroups define a caching policy for an Explore. To learn more,
# use the Quick Help panel on the right to see documentation.

datagroup: original_project_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: original_project_default_datagroup

# Explores allow you to join together different views (database tables) based on the
# relationships between fields. By joining a view into an Explore, you make those
# fields available to users for data analysis.
# Explores should be purpose-built for specific use cases.

# To see the Explore you’re building, navigate to the Explore menu and select an Explore under "Original Project"

# To create more sophisticated Explores that involve multiple views, you can use the join parameter.
# Typically, join parameters require that you define the join type, join relationship, and a sql_on clause.
# Each joined view also needs to define a primary key.

explore: park_climate {}

explore: climbing {}

explore: monthly_visits {}

explore: detailed_visits {}

explore: park_noaa_stations {}

explore: detailed_climate {}

explore: guides {}

explore: detailed_weather {}

explore: park_species {}

explore: parks {}

explore: trails {}
