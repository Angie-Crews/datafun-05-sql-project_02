import sqlite3
import pandas as pd
import glob
import os

def summarize_sql_files(db_path, sql_folder):
    # Connect to the SQLite database
    conn = sqlite3.connect(db_path)
    
    # Find all .sql files in the folder
    sql_files = glob.glob(os.path.join(sql_folder, "*.sql"))
    
    for sql_file in sql_files:
        print(f"\n--- Results for {os.path.basename(sql_file)} ---")
        with open(sql_file, 'r') as f:
            query = f.read()
        try:
            df = pd.read_sql_query(query, conn)
            print(df.head())  # Show first few rows as summary
            print(f"Total rows: {len(df)}")
        except Exception as e:
            print(f"Error executing {sql_file}: {e}")
    
    conn.close()

# Example usage:
# summarize_sql_files('your_database.db', './sql_queries')