import pandas as pd

df = pd.DataFrame({
    '销量': [10, 20],
    '售价': [100.123, None],
}, index=['aaa', 'bbb'])
df.index.name = '货号'
print(df)
df.to_excel('/Users/Yi/Mirror/我的python教程/Pandas办公自动化/B003_read_excel_3_true_false_values/tb.xlsx',
            sheet_name='tb1',
            float_format='%.2f',
            na_rep='我是空值')
