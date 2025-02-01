# 🔥 Wildfire Damage Optimization using Operations Research

This project focuses on optimizing **resource allocation** for wildfire damage mitigation using **Operations Research techniques** in **AMPL**. The model balances **firefighting resources** and **recovery efforts** to **minimize total damage** while keeping costs under control.

## 🎯 Objectives
-**Allocate firefighting resources** efficiently to high-risk wildfire regions.
- **Optimize recovery resource allocation** for post-fire restoration.
- **Minimize wildfire damage** and **costs** using a mathematical model.
- **Use AMPL** for formulating and solving the optimization problem.

## 🛠 Technologies Used
- **Operations Research**
- **AMPL (A Mathematical Programming Language)**
- **Linear and Nonlinear Optimization**
- **Sensitivity Analysis**
- **Excel for Data Analysis**

## 📂 Project Files
- **`RevisedModel.mod`** → AMPL model defining decision variables, constraints, and objective functions.
- **`RevisedModel.run`** → AMPL run file executing the model.
- **`RevisedModelData.dat`** → AMPL data file containing wildfire parameters.
- **`DataOfRevisedModel.xlsx`** → Dataset used for parameter estimation.


## 📊 Key Findings
**Firefighting Resource Allocation**:
- Allocating more resources to high-risk areas significantly reduces total damage.
- Increasing firefighting costs shifts priority to recovery efforts.

  
 **Recovery Optimization**:
- **Infrastructure repair** and **wildlife restoration** are the most critical recovery actions.
- Budget constraints require prioritizing regions with **higher fire probability**.

 **Sensitivity Analysis**:
- **Lowering fire probability (Pi)** shifts resources to **critical areas**.
- **Increasing firefighting costs (Ci > 50)** makes **recovery the priority**.
- **Relaxing resource constraints (Rr)** allows **higher recovery investments** but increases costs.

## 🔮 Future Improvements
- Implement **stochastic modeling** to account for uncertainty in wildfire spread.
- Develop **real-time optimization models** using dynamic programming.
- Use **machine learning** for **fire prediction models** and improve decision-making.

---

