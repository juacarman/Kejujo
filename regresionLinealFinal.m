%REGRESION LINEAL
clear all;
clc;

x=[1535,1534,1533,1532,1531,1530,1529,1528,1527,1526,1525,1524,1523,1522,1521,1520,1519,1518,1517,1516,1515,1514,1513,1512,1511,1510,1509,1508,1507,1506,1505,1504,1503,1502,1501,1500,1499,1498,1497,1496,1495,1494,1493,1492,1491,1490,1489,1488,1487,1486,1485,1484,1483,1482,1481,1480,1479,1478,1477,1476,1475,1474,1473,1472,1471,1470,1469,1468,1467,1466,1465,1464,1463,1462,1461,1460,1459,1458,1457,1456,1455,1454,1453,1452,1451,1450,1449,1448,1447,1446,1445,1444,1443,1442,1441,1440,1439,1438,1437,1436,1435,1434,1433,1432,1431,1430,1429,1428,1427,1426,1425,1424,1423,1422,1421,1420,1419,1418,1417,1416,1415,1414,1413,1412,1411,1410,1409,1408,1407,1406,1405,1404,1403,1402,1401,1400,1399,1398,1397,1396,1395,1394,1393,1392,1391,1390,1389,1388,1387,1386,1385,1384,1383,1382,1381,1380,1379,1378,1377,1376,1375,1374,1373,1372,1371,1370,1369,1368,1367,1366,1365,1364,1363,1362,1361,1360,1359,1358,1357,1356,1355,1354,1353,1352,1351,1350,1349,1348,1347,1346,1345,1344,1343,1342,1341,1340,1339,1338,1337,1336,1335,1334,1333,1332,1331,1330,1329,1328,1327,1326,1325,1324,1323,1322,1321,1320,1319,1318,1317,1316,1315,1314,1313,1312,1311,1310,1309,1308,1307,1306,1305,1304,1303,1302,1301,1300,1299,1298,1297,1296,1295,1294,1293,1292,1291,1290,1289,1288,1287,1286,1285,1284,1283,1282,1281,1280,1279,1278,1277,1276,1275,1274,1273,1272,1271,1270,1269,1268,1267,1266,1265,1264,1263,1262,1261,1260,1259,1258,1257,1256,1255,1254,1253,1252,1251,1250,1249,1248,1247,1246,1245,1244,1243,1242,1241,1240,1239,1238,1237,1236,1235,1234,1233,1232,1231,1230,1229,1228,1227,1226,1225,1224,1223,1222,1221,1220,1219,1218,1217,1216,1215,1214,1213,1212,1211,1210,1209,1208,1207,1206,1205,1204,1203,1202,1201,1200,1199,1198,1197,1196,1195,1194,1193,1192,1191,1190,1189,1188,1187,1186,1185,1184,1183,1182,1181,1180,1179,1178,1177,1176,1175,1174,1173,1172,1171,1170,1169,1168,1167,1166,1165,1164,1163,1162,1161,1160,1159,1158,1157,1156,1155,1154,1153,1152,1151,1150,1149,1148,1147,1146,1145,1144,1143,1142,1141,1140,1139,1138,1137,1136,1135,1134,1133,1132,1131,1130,1129,1128,1127,1126,1125,1124,1123,1122,1121,1120,1119,1118,1117,1116,1115,1114,1113,1112,1111,1110,1109,1108,1107,1106,1105,1104,1103,1102,1101,1100,1099,1098,1097,1096,1095,1094,1093,1092,1091,1090,1089,1088,1087,1086,1085,1084,1083,1082,1081,1080,1079,1078,1077,1076,1075,1074,1073,1072,1071,1070,1069,1068,1067,1066,1065,1064,1063,1062,1061,1060,1059,1058,1057,1056,1055,1054,1053,1052,1051,1050,1049,1048,1047,1046,1045,1044,1043,1042,1041,1040,1039,1038,1037,1036,1035,1034,1033,1032,1031,1030,1029,1028,1027,1026,1025,1024,1023,1022,1021,1020,1019,1018,1017,1016,1015,1014,1013,1012,1011,1010,1009,1008,1007,1006,1005,1004,1003,1002,1001,1000,999,998,997,996,995,994,993,992,991,990,989,988,987,986,985,984,983,982,981,980,979,978,977,976,975,974,973,972,971,970,969,968,967,966,965,964,963,962,961,960,959,958,957,956,955,954,953,952,951,950,949,948,947,946,945,944,943,942,941,940,939,938,937,936,935,934,933,932,931,930,929,928,927,926,925,924,923,922,921,920,919,918,917,916,915,914,913,912,911,910,909,908,907,906,905,904,903,902,901,900,899,898,897,896,895,894,893,892,891,890,889,888,887,886,885,884,883,882,881,880,879,878,877,876,875,874,873,872,871,870,869,868,867,866,865,864,863,862,861,860,859,858,857,856,855,854,853,852,851,850,849,848,847,846,845,844,843,842,841,840,839,838,837,836,835,834,833,832,831,830,829,828,827,826,825,824,823,822,821,820,819,818,817,816,815,814,813,812,811,810,809,808,807,806,805,804,803,802,801,800,799,798,797,796,795,794,793,792,791,790,789,788,787,786,785,784,783,782,781,780,779,778,777,776,775,774,773,772,771,770,769,768,767,766,765,764,763,762,761,760,759,758,757,756,755,754,753,752,751,750,749,748,747,746,745,744,743,742,741,740,739,738,737,736,735,734,733,732,731,730,729,728,727,726,725,724,723,722,721,720,719,718,717,716,715,714,713,712,711,710,709,708,707,706,705,704,703,702,701,700,699,698,697,696,695,694,693,692,691,690,689,688,687,686,685,684,683,682,681,680,679,678,677,676,675,674,673,672,671,670,669,668,667,666,665,664,663,662,661,660,659,658,657,656,655,654,653,652,651,650,649,648,647,646,645,644,643,642,641,640,639,638,637,636,635,634,633,632,631,630,629,628,627,626,625,624,623,622,621,620,619,618,617,616,615,614,613,612,611,610,609,608,607,606,605,604,603,602,601,600,599,598,597,596,595,594,593,592,591,590,589,588,587,586,585,584,583,582,581,580,579,578,577,576,575,574,573,572,571,570,569,568,567,566,565,564,563,562,561,560,559,558,557,556,555,554,553,552,551,550,549,548,547,546,545,544,543,542,541,540,539,538,537,536,535,534,533,532,531,530,529,528,527,526,525,524,523,522,521,520,519,518,517,516,515,514,513,512,511,510,509,508,507,506,505,504,503,502,501,500,499,498,497,496,495,494,493,492,491,490,489,488,487,486,485,484,483,482,481,480,479,478,477,476,475,474,473,472,471,470,469,468,467,466,465,464,463,462,461,460,459,458,457,456,455,454,453,452,451,450,449,448,447,446,445,444,443,442,441,440,439,438,437,436,435,434,433,432,431,430,429,428,427,426,425,424,423,422,421,420,419,418,417,416,415,414,413,412,411,410,409,408,407,406,405,404,403,402,401,400,399,398,397,396,395,394,393,392,391,390,389,388,387,386,385,384,383,382,381,380,379,378,377,376,375,374,373,372,371,370,369,368,367,366,365,364,363,362,361,360,359,358,357,356,355,354,353,352,351,350,349,348,347,346,345,344,343,342,341,340,339,338,337,336,335,334,333,332,331,330,329,328,327,326,325,324,323,322,321,320,319,318,317,316,315,314,313,312,311,310,309,308,307,306,305,304,303,302,301,300,299,298,297,296,295,294,293,292,291,290,289,288,287,286,285,284,283,282,281,280,279,278,277,276,275,274,273,272,271,270,269,268,267,266,265,264,263,262,261,260,259,258,257,256,255,254,253,252,251,250,249,248,247,246,245,244,243,242,241,240,239,238,237,236,235,234,233,232,231,230,229,228,227,226,225,224,223,222,221,220,219,218,217,216,215,214,213,212,211,210,209,208,207,206,205,204,203,202,201,200,199,198,197,196,195,194,193,192,191,190,189,188,187,186,185,184,183,182,181,180,179,178,177,176,175,174,173,172,171,170,169,168,167,166,165,164,163,162,161,160,159,158,157,156,155,154,153,152,151,150,149,148,147,146,145,144,143,142,141,140,139,138,137,136,135,134,133,132,131,130,129,128,127,126,125,124,123,122,121,120,119,118,117,116,115,114,113,112,111,110,109,108,107,106,105,104,103,102,101,100,99,98,97,96,95,94,93,92,91,90,89,88,87,86,85,84,83,82,81,80,79,78,77,76,75,74,73,72,71,70,69,68,67,66,65,64,63,62,61,60,59,58,57,56,55,54,53,52,51,50,49,48,47,46,45,44,43,42,41,40,39,38,37,36,35,34,33,32,31,30,29,28,27,26,25,24,23,22,21,20,19,18,17,16,15,14,13,12,11,10,9,8,7,6,5,4,3,2,1]
y=[267.7;268.42;276.06;272.31;273.2;274.96;267.78;291.81;285.88;289.18;279.86;278.62;274.83;267.77;260.42;264.53;274.02;273.6;267.47;269.49;275.43;289.96;288.96;283.36;290.92;284.14;276.59;276.24;276.54;285.36;294.79;319.88;314.74;297.86;298.77;294.71;291.23;302.56;305.64;307.88;303.77;308.17;311.81;312.84;305.8;307.51;317.22;321.35;312.89;312.21;307.02;308.77;297.46;296.38;297.04;291.51;287.59;298.92;302.26;347.31;346.05;344.43;334.4;347.26;344.97;338.53;335.35;334.96;317.69;300.36;310.12;332.8;333.87;316.13;326.09;295.39;319.77;315.38;332.97;337.03;348.42;365.71;376.79;366.6;366.76;365.15;357.96;363.06;359.7;358.49;350.48;341.17;347.87;343.92;346;325.83;338.19;347.49;353.47;354.31;348.44;344;338.73;331.28;350.51;351.4;348.16;341.06;341.4;346.41;344.28;337.32;329.9;334.85;330.9;314.86;288.5;294.14;260.95;260;263.91;271.78;276.59;259.59;258.78;252.23;256.88;262.8;250.56;261.95;281.83;294.8;301.02;310.7;264.77;307.52;309.58;300.99;299.68;299.1;298.33;299.02;284.96;294.84;295.2;289.46;290.54;279.44;285.5;263.24;280.95;280.74;288.95;301.66;303.15;305.01;311.86;319.27;322.82;320.1;321.64;321.9;308.44;305.5;335.45;338.69;347.64;356.41;355.49;352.45;370.34;379.57;341.99;348.17;349.54;300.84;298.14;290.17;297.18;306.65;308.74;297.43;303.2;313.58;320.23;323.85;322.69;310.1;318.87;316.71;318.96;322.47;318.51;308.9;309.16;310.86;335.07;342.95;349.93;344.5;342;333.01;333.63;347.51;362.22;352.55;370.83;358.17;357.72;344.78;342.77;332.1;317.66;316.09;319.5;291.13;296.74;291.82;284.73;291.72;283.76;278.85;277.85;279.07;275.01;284.49;276.82;284.54;286.48;284.18;291.97;301.06;305.02;306.85;301.97;302.77;294.09;284.45;301.15;299.92;293.9;294.07;285.48;280.69;283.46;283.37;290.24;300.08;293.35;287.69;291.21;300.34;294.08;300.93;304.7;289.66;299.3;305.72;286.94;267.53;252.48;266.13;257.78;279.18;304.18;301.54;309.1;316.53;310.55;313.56;321.35;325.6;326.63;341.84;345.51;327.17;329.1;332.3;328.2;333.35;335.12;330.93;343.06;350.99;357.42;352.05;346.17;333.3;334.77;335.49;334.06;322.31;323.66;315.73;310.42;315.23;345;333.97;333.13;343.75;349.25;354.31;345.82;349.53;342.85;337.64;345.89;352.79;351.56;350.02;344.57;347.16;340.06;336.22;337.95;334.8;333.69;336.41;316.58;314.62;317.25;320.53;311.35;315.36;311.64;317.29;325.2;331.66;328.98;331.1;338.87;343.45;337.89;339.03;341.03;328.91;315.13;311.24;313.26;303.7;305.2;306.53;308.85;307.54;317.55;316.81;315.55;312.6;317.81;308.74;315.05;312.5;311.3;308.7;315.4;302.99;302.99;304.39;306.05;302.78;306.09;299.26;321.08;331.53;320.08;320.87;326.17;325.84;337.34;337.02;345.1;351.81;359.65;355.75;350.6;355.57;355.68;354.6;355.59;342.94;356.88;355.33;355.01;348.14;341.53;341.1;339.6;340.97;345.25;344.99;351.09;366.48;373.91;375.1;385;379.81;377.64;366.23;362.75;363.69;343.4;350.61;344.53;349.59;355.4;355.9;353.18;347.36;345.66;348.05;352.93;352.77;341.35;337.86;347.46;351.92;362.91;362.33;363.8;357.87;355.4;363.53;365.22;355.17;356.91;347.09;325.89;319.57;323.47;335.07;334.46;343.85;339.6;342.52;328.4;329.92;325.26;328.24;319.57;327.78;323.41;329.52;327.22;316.05;313.22;308.83;327.09;352.62;361.61;360.75;371.24;362.37;377.49;383.45;382.61;376.4;372.24;369.8;371.4;375.34;380.66;375.95;359.01;357.32;370;359.65;352.85;347.32;339.85;340.37;341.01;335.1;325.14;316.83;310.22;303.86;310.35;310.83;313.06;306.11;317.01;315.88;324.81;323.1;325.22;321.26;307.19;308.35;295.46;311.02;318.89;322.83;314.07;308.63;310.17;313.79;308.03;305.6;302.51;305.52;300.25;301.44;304;296.84;308.71;312.39;302.54;298.7;295;303.7;298.52;278.3;277.92;277.38;277.45;270.22;263.16;254.78;255.01;250.68;261.92;261.5;262.05;255.73;258;246.17;243.69;244.9;246.87;248.59;251.21;251.57;250.48;250.02;249.99;246.23;257;255.99;273.51;277.39;272.23;268.95;279.76;280.98;280.6;269.23;269.2;262.08;257.48;257.77;251.33;251.55;249.24;251.93;250.63;252.95;252.51;254.47;254.61;248.92;244.73;243.76;238.36;235.58;237.75;229.59;229.73;229.87;231.28;229.01;226.75;226.99;216.99;213.69;214.68;219.74;219.53;213.34;208.45;207.7;208.79;202.73;202.49;197.58;198.69;198.15;192.43;192.18;192.29;193.15;185.85;186.8;181.47;181.88;189.4;189.57;196.12;196.65;193.14;191.17;184.52;185.02;188.66;183.93;183.77;181.45;188.56;185.35;190.06;194.94;193.21;190.56;187.42;188.02;190.79;197.73;199.97;204.01;202.24;202.34;202.76;200.09;199.1;203.56;199.1;193.96;196.51;200.24;201.51;200.1;200.95;196.61;201;208.46;211.41;213.7;204.03;200.7;206.27;205.81;208.99;207.45;206.43;205.22;204.64;206.34;205.4;200.42;196.41;196.05;198.3;194.47;197.36;201.71;202.83;197.78;200.77;212.01;211.34;215.2;219.99;220.96;222.62;224.84;222.93;225;223.51;223.24;223.61;225.59;225.61;224.91;225.65;229.08;226.16;230.03;230.61;225.79;227.2;230.01;234.79;230.61;228.49;229.51;230.01;222.27;220.5;228.36;225.26;226.25;220.4;221.53;222.53;224.65;224.78;216.78;215.94;214.44;213.98;216.5;212.28;210.19;201.79;198.55;193.15;196.4;196.66;219.61;219.7;215.47;217.93;217.7;214.96;217.87;218.79;229.36;235.52;232.34;220.68;218.99;218.96;219.56;223.23;223.04;225.12;219.58;217.91;216.22;220.28;215.21;211.17;204.66;208.29;207.61;207.28;208.96;208.69;208.92;214.93;211.53;222.56;232.32;241.8;240.76;247.71;251.47;253.74;251.82;253.75;248.29;249.97;247.37;253.88;254.51;251.86;254.53;247.82;249.92;250.07;257.2;265.42;255.47;246.99;237.59;229.77;226.89;230.13;230.26;227.75;222.58;234.24;238.32;232.74;226.38;221.93;218.34;215.15;207.5;205.18;208.72;202.6;205.29;201.04;195.74;188.34;186.35;191.93;190.35;190.34;187.43;179;177.21;177.74;166.58;166.77;168.68;155.17;151.04;150.47;143.67;148.25;147.99;162.6;175.33;173.48;182.78;196.94;191.2;189.7;188.07;193.56;196.38;202.55;199.97;198.7;204.72;204.99;206.18;200.31;209.97;207.85;211;215.65;219.04;223.43;223.41;240.01;238.09;237.19;228.95;230.57;229.7;229.95;232.56;230.46;233.39;234.51;221.09;218.58;217.02;227.07;224.52;226.72;231.13;230.38;232.71;231.99;237.19;230.26;231.61;229.64;218.25;217.75;220.01;221.8;221.07;214;214.31;207.19;212.94;219.08;216.5;225.33;232.36;231.77;231.63;208.35;213.79;206.93;211.63;212.96;210.35;215.26;209.09;211.72;210.09;213.03;228.1;227.01;221.31;216.88;219.25;215.58;220.69;226.72;231.96;241.46;246.15;247.57;239.88;248.4;246.65;248.43;256.91;263.12;261.06;260.94;264.2;260.62;262.07;262.25;253.57;253.19;250.24;248.48;248.91;248.17;241.93;245.57;247.69;238.63;249.06;248.48;242.99;224.84;220.03;218.87;230.77;242.18;255.25;260.72;254.99;243.15;242.51;238.17;237.37;241.14;242.51;246.13;270.13;266.28;259.99;266.15;266.79;263.82;264.82;253.01;265.41;267.2;267.87;266.77;282.26;274.66;266.68;263.14;265.65;262.16;259.15;257.92;254.96;267.88;279.72;280.02;269.15;268.26;262.02;267.09;268.79;265.17;267.67;259.79;262.51;261.89;260.41;253.12;250.38;250.69;251.41;250.7;256;256.29;249.14;245.92;248.99;248.35;249.45;250.8;251.45;247.43;247.46;247.73;245.62;244.35;247.14;248.75;248.84;244.1;243.18;244.74;239.49;236.61;236.8;230.43;232.95;230.51;226.03;226.05;232.45;230.48;231.55;218.43;218.6;219.44;209.41;205.27;206.79;206.7;207.83;207.46;209.78;210.9;210.09;207.67;203.25;203.1;191;187.59;188.77;190.57;185;190.41;194.3;201.72;199.63;198.08;195.65;200.71;194.73;195.7;188.68;191.07;193.74;190.32;190.88;193.88;200.63;202.44;199.56;197.32;203.34;207.19;203.76;204.11;207.34;217.11;211.71;204.46;204.35;203.77;202.88;212.8;216.29;217.48;217.36;220.99;218.55;218.36;210.94;203.6;205.2;199.37;205.98;206.55;201.29;201.62;196.57;191.93;193.07;191.87;192.69;204.25;202.21;206.66;210.62;210.95;211.28;210.09;219.31;222.41;222.23;225.71;227.82;222.26;220.97;222.6;219.29;218.26;205.82;197.81;204.04;207;208.88;209.84;216.89;214.36;223.71;228.28;229.3;231.43;231.64;244.52;248.44;248.09;246.72;242.78;248.71;247.74;257.7;253.98;258.68;251.7;249.1;251.08;241.93;240.2;241.22;230.97;238.93;242.59;241.7;238.66;238.1;242.77;221.67;235.24;235.29;231.1;235.34;230.47;227.48;226.35;229.7;227.06;224.59;236.91;257.01;259.28;259.57;260.62;255.21;251.42;240.24;242.68;245.26;246.6;246.95;252.14;250.41;250.03;259.32;263.82;261.38;260.74;253.86;279.2;280.31;281.1;278.48;282.11;277.39;286.04;281.19;284.12;269.7;263.86;263.25;261.74;262.55;256.78;254.34;255.71;256.76;259.94;262.01;261.38;260.31;259.96;259.32;248.13;252.39;248.93;238.49;238.52;233.27;223.3;228.92;225.01;224.82;223.57;223.54;222.49;219.58;220.54;220.02;215.4;217.16;219.58;226.7;218.13;219.46;223.06;219.07;222.66;229.25;229.43;239.72;240.06;239.06;235.6;236.89;232.5;237.22;229.59;227.79;227.12;231.67;224.61;206.42;203.52;204.47;202.3;205.31;208.17;206.9;203.99;204.94;204.7;207.77;210.24;210.24;211.56;207.3;204.88;199.45;195.3;196.09;191.56;188.59;190.62;190.16;184.67;182.26;178.59;201.35;207.28;216.61;210.91;207.73;207.89;206.92;198.51;199.85;207.86;207.99;218.64;204.38;198.12;199.11;193.91;198.09;203.78;204.19;216.93;215.46;207.52;212.22;225.4;230.29;216.97;208.45;212.37;207.32;212.96;220.44;220.17;228.89;234.91;235.84;240.04;233.98;230.97;237.79;241.49;234.41;238.84;246.21;252.94;252.66;254.84;250.56;244.81;252.54;253;248;217.65;209.6;209.97;193.64;203.7;198.23;199.63;195.32;196.62;196.56;186.53;178.38;174.42;178.73;177.11;181.41;182.84;175.23;178.38;169.62;174.6;181.5;178.56;176.68;170.01;170.97;164.13;161.27;139.34;145.72;147.53;151.28;149.36;147;149.56;150.1;150.43;152.44;151.12;155.5;151.41;143.55;143.24;140.72;147.98;152.46;147.94;147.65;147.47;139.65;142.19;141.6;137.36;140.48;138.95;144.7;124.17;127.28;126.94;120.5;120.84;121.38;122.1;121.11;126.09;121.58;135.45;137.6;138.7;137.8;144.7;137.95;139.77;151.16;176.81;175.2;162.17;159.94;159.22;164.47;162.86;169.66;173.15;164.5;171.54;172.6;183.4;182.8;183.56;183.94;179.72;178.7;172.93;168.78;174.73;183.07;180.98;173.31;180.95;193;193.37;190.9;188.64;185.24;182.33;181.11;183.39;177.92;166.22;166.23;166.58;165.54;164.93;163.52;166.37;160.7;166.97;169.93;170.62;168.94;169;166.06;166.45;167.01;164.22;161.84;157.1;147.86;149.58;144.9;142;139.67;139.36;145.43;147.38;153;153.48;134.23;142.15;144.68;138;135.55;134.28;131.74;134.62;129.39;124.07;121.7;122.74;122.43;119.68;119.03;120.25;109.05;127.26;129.9;125.61;122.27;123.45;121.61;120.09;115.24;117.82;117.18;107.36;109.25;105.72;102.4;101.49;99.55;100.65;104.68;103.39;102.2;100.3;98.18;97.73;94.47;100.05;102.04;97.35;95.37;94.84;92.59;97.76;104.95;104.63;110.33;97.08;92.73;87.24;87.59;89.94;91.5;92.25;84.84;83.24;87.8;76.76;69.4;55.79;55.51;59.5;54.55;54.11;53.28;53.99;54.94;51.2;52;50.43;51.01;50.19;47.83;46.97;45.45;45.59;43.3;43.75;43.59;41.86;40.5;41.83;41.37;42.01;41.1;44.34;43.93;37.89;38.16;37.86;37.53;36.62;36.01;35.95;35.08;35.15;35.29;36.85;38.98;39.12
]

n=1535


    
B=ones(n,2);   %llena 16 filas * 2 columnas de ceros

B(:,1)=x;

a=B\y   %traspuesta de la matriz

t=(x(n)-x(1))/n;  %para graficar

xx=x(1):t:x(n);

yy=a(1)*xx+a(2);


plot(x',y','*',xx,yy,'+')