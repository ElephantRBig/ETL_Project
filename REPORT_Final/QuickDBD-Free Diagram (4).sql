-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/IMT3jF
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Create table for each csv file

CREATE TABLE "no_na_government_data" (
    "country_id" VARCHAR   NOT NULL,
    "country" VARCHAR   NOT NULL,
    "year" VARCHAR   NOT NULL,
    "ISO_code" VARCHAR   NOT NULL,
    "economic_freedom" VARCHAR   NOT NULL,
    "rank" VARCHAR   NOT NULL,
    "quartile" VARCHAR   NOT NULL,
    "government_consumption" VARCHAR   NOT NULL,
    "transfers" VARCHAR   NOT NULL,
    "gov_enterprises" VARCHAR   NOT NULL,
    "top_marg_tax_rate" VARCHAR   NOT NULL,
    "size_government" VARCHAR   NOT NULL,
    "judicial_independence" VARCHAR   NOT NULL,
    "impartial_courts" VARCHAR   NOT NULL,
    "protection_property_rights" VARCHAR   NOT NULL,
    "military_interference" VARCHAR   NOT NULL,
    "integrity_legal_system" VARCHAR   NOT NULL,
    "legal_enforcement_contracts" VARCHAR   NOT NULL,
    "restrictions_sale_real_property" VARCHAR   NOT NULL,
    "reliability_police" VARCHAR   NOT NULL,
    "business_costs_crime" VARCHAR   NOT NULL,
    "gender_adjustment" VARCHAR   NOT NULL,
    "property_rights" VARCHAR   NOT NULL,
    "money_growth" VARCHAR   NOT NULL,
    "std_inflation" VARCHAR   NOT NULL,
    "inflation" VARCHAR   NOT NULL,
    "freedom_own_foreign_currency" VARCHAR   NOT NULL,
    "sound_money" VARCHAR   NOT NULL,
    "tariffs" VARCHAR   NOT NULL,
    "regulatory_trade_barriers" VARCHAR   NOT NULL,
    "black_market" VARCHAR   NOT NULL,
    "control_movement_capital_ppl" VARCHAR   NOT NULL,
    "trade" VARCHAR   NOT NULL,
    "credit_market_reg" VARCHAR   NOT NULL,
    "labor_market_reg" VARCHAR   NOT NULL,
    "business_reg" VARCHAR   NOT NULL,
    "regulation" VARCHAR   NOT NULL
);

CREATE TABLE "country_rankings" (
    "country" VARCHAR   NOT NULL,
    "Ease_of_Doing_Business_Rank" VARCHAR   NOT NULL,
    "Starting_a_Business" VARCHAR   NOT NULL,
    "Dealing_with_Construction_Permits" VARCHAR   NOT NULL,
    "Getting_Electricity" VARCHAR   NOT NULL,
    "Registering_Property" VARCHAR   NOT NULL,
    "Getting_Credit" VARCHAR   NOT NULL,
    "Protecting_Minority_Investors" VARCHAR   NOT NULL,
    "Paying_Taxes" VARCHAR   NOT NULL,
    "Trading_across_Borders" VARCHAR   NOT NULL,
    "Enforcing_Contracts" VARCHAR   NOT NULL,
    "Resolving_Insolvency" VARCHAR   NOT NULL,
    "country_id" VARCHAR   NOT NULL
);

CREATE TABLE "country_profile" (
    "country_id" VARCHAR   NOT NULL,
    "country" VARCHAR   NOT NULL,
    "Region" VARCHAR   NOT NULL,
    "surface_area" VARCHAR   NOT NULL,
    "population_in_thousands" VARCHAR   NOT NULL,
    "population_density" VARCHAR   NOT NULL,
    "sex_ratio" VARCHAR   NOT NULL,
    "gdp_gross_domestic_product" VARCHAR   NOT NULL,
    "GDP_growth_rate" VARCHAR   NOT NULL,
    "GDP_per_capita" VARCHAR   NOT NULL,
    "economy_agriculture" VARCHAR   NOT NULL,
    "economy_industry" VARCHAR   NOT NULL,
    "economy_services_other" VARCHAR   NOT NULL,
    "employment_agriculture_%_employed" VARCHAR   NOT NULL,
    "employment_industry" VARCHAR   NOT NULL,
    "employment_services_employed" VARCHAR   NOT NULL,
    "unemployment_labour_force" VARCHAR   NOT NULL,
    "labour_force_participation" VARCHAR   NOT NULL,
    "agricultural_production_index" VARCHAR   NOT NULL,
    "food_production" VARCHAR   NOT NULL,
    "international_trade_exports" VARCHAR   NOT NULL,
    "international_trade_imports" VARCHAR   NOT NULL,
    "international_trade_balance" VARCHAR   NOT NULL,
    "balance_payments_current_account" VARCHAR   NOT NULL,
    "population_growth_rate" VARCHAR   NOT NULL,
    "urban_population_total" VARCHAR   NOT NULL,
    "urban_population_growth_rate" VARCHAR   NOT NULL,
    "fertility_rate_total" VARCHAR   NOT NULL,
    "life_expectancy_at_birth" VARCHAR   NOT NULL,
    "population_age_distribution" VARCHAR   NOT NULL,
    "international_migrant_stock" VARCHAR   NOT NULL,
    "Refugees_other_concerns" VARCHAR   NOT NULL,
    "infant_mortality_rate" VARCHAR   NOT NULL,
    "health_total_expenditure" VARCHAR   NOT NULL,
    "health_physicians" VARCHAR   NOT NULL,
    "education_government_expenditure" VARCHAR   NOT NULL,
    "education_primary_gross_enrol" VARCHAR   NOT NULL,
    "education_secondary_gross_enrol" VARCHAR   NOT NULL,
    "education_tertiary_gross_enrol" VARCHAR   NOT NULL,
    "seats_held_by_women_parliment" VARCHAR   NOT NULL,
    "mobile_cellular_subs" VARCHAR   NOT NULL,
    "mobile_cellular_subs_2" VARCHAR   NOT NULL,
    "individuals_using_internet" VARCHAR   NOT NULL,
    "threatend_species" VARCHAR   NOT NULL,
    "forest_area" VARCHAR   NOT NULL,
    "coq2_emission_est" VARCHAR   NOT NULL,
    "energy_production_primary" VARCHAR   NOT NULL,
    "energy_supply_per_capita" VARCHAR   NOT NULL,
    "pop_using_drinking_water" VARCHAR   NOT NULL,
    "pop_using_improved_sanitation_facilities" VARCHAR   NOT NULL,
    "net_offical_development_assist" VARCHAR   NOT NULL
);

ALTER TABLE "no_na_government_data" ADD CONSTRAINT "fk_no_na_government_data_country_id" FOREIGN KEY("country_id")
REFERENCES "country_profile" ("country_id");

ALTER TABLE "country_rankings" ADD CONSTRAINT "fk_country_rankings_country_id" FOREIGN KEY("country_id")
REFERENCES "country_profile" ("country_id");

