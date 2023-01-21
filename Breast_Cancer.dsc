belief network "Network1"

node Age
{
    name : "Age";
    type : discrete[5] = 
    {
        "",
        "",
        "",
        "",
        ""
    };
    position : (218, 171);
}

node Breast_Cancer
{
    name : "Breast Cancer";
    type : discrete[2] = 
    {
        "present",
        "absent"
    };
    position : (491, 167);
}

node Mammogram
{
    name : "Mammogram";
    type : discrete[2] = 
    {
        "normal",
        "abnormal"
    };
    position : (753, 169);
}

probability (Age)
{
    0.40000000, 0.15000000, 0.15000000, 0.15000000, 0.15000000;
}

probability (Breast_Cancer | Age)
{
    (0, 0) : 0.00400000, 0.99600000;
    (0, 0) : 0.01000000, 0.99000000;
    (0, 0) : 0.01400000, 0.98600000;
    (0, 0) : 0.02300000, 0.97700000;
    (0, 0) : 0.02600000, 0.97400000;
}

probability (Mammogram | Breast_Cancer)
{
    (0, 0) : 0.10000000, 0.90000000;
    (0, 0) : 0.95000000, 0.05000000;
}
