import pandas as pd
import matplotlib.pyplot as plt

data = {
    "job_title": [
        "Research Engineer, Science (DeepMind)",
        "Data Architect (Logispin)",
        "Research Scientist, Science (DeepMind)",
        "Analytics Engineer (Accor)",
        "Data Analyst – Ratings Ops (Sylvera)",
        "BI Data Analyst (Ocorian)",
        "Data Analyst (Informa)",
        "Data Analyst (Verisk)",
        "Founding Data Analyst (Relay)",
        "Data Analyst – Gas & Power (Energy Aspects)"
    ],
    "salary": [
        177283, 163782, 149653, 139216, 111175,
        111175, 105000, 102500, 100500, 100500
    ]
}

df = pd.DataFrame(data)

plt.figure()
plt.barh(df["job_title"], df["salary"])
plt.xlabel("Average Yearly Salary (£)")
plt.title("Top 10 Highest-Paying Data Analyst Roles (London, UK)")
plt.gca().invert_yaxis()
plt.show()