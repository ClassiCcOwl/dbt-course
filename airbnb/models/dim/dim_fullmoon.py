import holidays


def is_holiday(date):
    germany_holidays = holidays.Germany()
    return date in germany_holidays


def model(dbt, session):
    dbt.config(
        materialized="table",
        packages=["holidays", "snowflake-connector-python[pandas]"],
    )

    orders_df = dbt.ref("seed_full_moon_dates")

    df = orders_df.to_pandas()
    df["IS_HOLIDAY"] = df["FULL_MOON_DATE"].apply(is_holiday)

    return df
