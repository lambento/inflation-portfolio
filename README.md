# Inflation-Resilient Portfolio (Baseline)

7-stage data-to-dashboard pipeline:  
PostgreSQL → pandas → Excel → Power BI  
(classical forecasts + rule-based allocation)

## Pipeline
1. **Ingest** – FRED + yfinance → PostgreSQL  
2. **Forecast** – ARIMA, VAR, GARCH  
3. **Engineer** – rolling stats / macro features  
4. **Allocate** – 60/40, Risk-Parity, Inflation-Tilt  
5. **Back-test** – rolling returns, Sharpe, Max-DD  
6. **Stress** – historical regime replay  
7. **Report** – Power BI interactive + PDF export

  Foundation for analyzing how inflation impacts asset performance.
  Goal: Build a founation for analyzing how assets performances are impacted based upon varying economic unstability. How can we build a portfolio that remains stable under rising inflation?
      
      V1.0
        Stage 1 - Problem Definition & Data Collection
          Use SQL to build panel
            PostgreSQL
          Create table to include: month_end, cpi, ppi, gold, oil, spy, tips, reit, ten_y
        Stage 2 - Baseline Forecasting using classical statistics
          Using Python (pandas) then export to excel 
          ARIMA
          VAR
          GARCH
        Stage 3 - Feature Enginerering (using the baseline model)
          Create the founadational code for future data analyst with non-classical 
          Store everything in SQL so Excel and PBI can consume them
          Don't really understand yet
        Stage 4 - Portfolio Construction
          Using the most basic rules to create three plain baselines
          Store the weights in weights_baseline()
          Some basic Portfolio Strategy includes: 60% SPY / 40% TIPS (static view), Risk-Parity (Vol target 5%, inverse Vol weighting), Inflation-Tilt (if else statmenets) 
          Use weighted baseline to compute next month return based on the strategy chosen and store this value
          Now we have a clean excel file to work with to create charts
          Use Power BI: BIP cards Sharpe, Max-DD, GAGR
        Stage 5 - Back-Test Metrics
          Use pandas to backtest the strategy's with the different financial metrics: Volatility, Sharpe, Sortono, etc.
          Push summary table to SQL
          use excel is optional
        Stage 6 - Scenario Simulation using the baseline model
          Since I just want a working baseline before I mess around with my model, the simulation still use non Monte-Carlo 
          We can replay 3 historical shocks, (Dot-Com, GFC, COVID) instead to stress test different major economic events
          Average monthly return per regime for each strategy
        Stage 7 - Reporting and Visualization
          Export BPI overview to PDF
          create file called _delibearables\executive_summary
          Include Interactive Power BI file
            Marco time series slicer
            forecast vs actual(ARMIA, VAR)
            Back-test equaity curves and tables of KPIs
            Scenario stress test (regime bars)
          Reproductibility package
            Make sure Python libaries are pinned, and everything can be reproduced
            Video walk through
      
      
    After estisblishing the baseline model, how can I make this project unquie at a masters level?
    Ideas includes but not limited to: 
      Stochastic Programming with Trasnaction Costs
      Bayesian Model Averaging for forecast densities
       Casual inflation Beta via vector error correction 


