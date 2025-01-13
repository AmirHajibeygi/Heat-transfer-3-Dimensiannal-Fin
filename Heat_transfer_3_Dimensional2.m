clear
clc
syms rm k_conductivity T_infinity H density c
%%
T_11=308;T12=308*ones(1,10);T13=308*ones(1,10);T14=308*ones(1,10);T15=308*ones(1,10);T16=308*ones(1,10);

T_21=307.9971;T22=[307.9973  307.9974  307.9974  307.9974  307.9973  307.9969  307.9968  307.9968  307.9968  307.9969];T23=[308.0195  308.0221  308.0223  308.0221  308.0195  307.9744  307.9718  307.9717  307.9718  307.9744];T24=[308.3443  308.3709  308.3720  308.3709  308.3440  307.6453  307.6190  307.6180  307.6190  307.6457];T25=[308.7023  308.7861  308.7898  308.7858  308.6987  307.2783  307.1954  307.1917  307.1957  307.2818];T26=[308.8846  308.9973  309.0024  308.9965  308.8727  307.0725  306.9617  306.9567  306.9625  307.0840];

T_31=307.9943;T32=[307.9967  307.9969  307.9970  307.9969  307.9967  307.9918  307.9916  307.9915  307.9916  307.9918];T33=[308.2308  308.2427  308.2429  308.2427  308.2308  307.7550  307.7434  307.7431  307.7434  307.7550];T34=[312.9336  312.9377  312.9377  312.9377  312.9336  303.0012  303.0011  303.0011  303.0011  303.0012];T35=[312.1313  312.3720  312.3789  312.3708  312.1138  303.8021  303.5666  303.5599  303.5678  303.8193];T36=[311.7536  312.0019  312.0099  311.9972  311.6500  304.1663  303.9261  303.9183  303.9305  304.2681];

T_41=307.9918;T42=[307.9919  307.9920  307.9920  307.9920  307.9919  307.9916  307.9916  307.9916  307.9916  307.9916];T43=[308.0057  308.0070  308.0071  308.0070  308.0057  307.9769  307.9756  307.9756  307.9756  307.9769];T44=[308.1630  308.1694  308.1695  308.1694  308.1630  307.8043  307.7980  307.7979  307.7980  307.8043];

T_51=307.9895;T52=[307.9895  307.9895  307.9895  307.9895  307.9895  307.9895  307.9895  307.9895  307.9895  307.9895];T53=[307.9901  307.9902  307.9902  307.9902  307.9901  307.9880  307.9879  307.9879  307.9879  307.9880];T54=[307.9956  307.9963  307.9963  307.9963  307.9956  307.9679  307.9672  307.9672  307.9672  307.9679];

T_61=307.9873;T62=[307.9873  307.9873  307.9873  307.9873  307.9873  307.9873  307.9873  307.9873  307.9873  307.9873];T63=[307.9873  307.9874  307.9874  307.9874  307.9873  307.9865  307.9865  307.9865  307.9865  307.9865];T64=[307.9876  307.9879  307.9879  307.9879  307.9876  307.9717  307.9714  307.9714  307.9714  307.9717];

T_71=307.9854;T72=[307.9854  307.9854  307.9854  307.9854  307.9854  307.9854  307.9854  307.9854  307.9854  307.9854];T73=[307.9854  307.9854  307.9854  307.9854  307.9854  307.9846  307.9846  307.9846  307.9846  307.9846];T74=[307.9854  307.9857  307.9857  307.9857  307.9854  307.9700  307.9697  307.9697  307.9697  307.9700];

T_81=307.9837;T82=[307.9837  307.9837  307.9837  307.9837  307.9837  307.9837  307.9837  307.9837  307.9837  307.9837];T83=[307.9837  307.9837  307.9837  307.9837  307.9837  307.9829  307.9829  307.9829  307.9829  307.9829];T84=[307.9837  307.9840  307.9840  307.9840  307.9837  307.9683  307.9680  307.9680  307.9680  307.9683];

T_91=307.9822;T92=[307.9822  307.9822  307.9822  307.9822  307.9822  307.9822  307.9822  307.9822  307.9822  307.9822];T93=[307.9822  307.9822  307.9822  307.9822  307.9822  307.9814  307.9814  307.9814  307.9814  307.9814];T94=[307.9823  307.9825  307.9825  307.9825  307.9823  307.9668  307.9665  307.9665  307.9665  307.9668];

T_101=307.9810;T102=[307.9810  307.9810  307.9810  307.9810  307.9810  307.9810  307.9810  307.9810  307.9810  307.9810];T103=[307.9810  307.9810  307.9811  307.9810  307.9810  307.9802  307.9801  307.9801  307.9801  307.9802];T104=[307.9812  307.9815  307.9815  307.9815  307.9812  307.9654  307.9651  307.9651  307.9651  307.9653];
%%%%
T_111=307.9800;T112=[307.9800  307.9800  307.9800  307.9800  307.9800  307.9800  307.9800  307.9800  307.9800  307.9800];T113=[307.9807  307.9808  307.9808  307.9808  307.9807  307.9786  307.9785  307.9785  307.9785  307.9786];T114=[307.9862  307.9869  307.9869  307.9869  307.9862  307.9586  307.9579  307.9578  307.9579  307.9586];
%%%%
T_121=307.9793;T122=[307.9795  307.9795  307.9795  307.9795  307.9795  307.9792  307.9792  307.9792  307.9792  307.9792];T123=[307.9934  307.9947  307.9947  307.9947  307.9934  307.9645  307.9632  307.9632  307.9632  307.9645];T124=[308.1514  308.1577  308.1578  308.1577  308.1514  307.7924  307.7862  307.7861  307.7862  307.7924];
%%%%
T_131=307.9789;T132=[307.9814  307.9816  307.9816  307.9816  307.9814  307.9764  307.9762  307.9762  307.9762  307.9764];T133=[308.2163  308.2279  308.2282  308.2279  308.2163  307.7408  307.7292  307.7289  307.7292  307.7408];T134=[312.9429  312.9434  312.9435  312.9434  312.9429  303.0010  303.0010  303.0010  303.0010  303.0010];T135=[312.9300  312.9348  312.9348  312.9348  312.9300  303.0140  303.0096  303.0096  303.0096  303.0140];T136=[312.9118  312.9210  312.9210  312.9210  312.9118  303.0322  303.0235  303.0235  303.0235  303.0322];
T_137=[312.8872  312.9009  312.9009  312.9009  312.8872  303.0567  303.0436  303.0436  303.0436  303.0567];T138=[312.8553  312.8733  312.8734  312.8733  312.8552  303.0884  303.0710  303.0709  303.0710  303.0884];T139=[312.8150  312.8374  312.8375  312.8374  312.8150  303.1249  303.1031  303.1031  303.1031  303.1249];T1310=[312.7636  312.7905  312.7905  312.7905  312.7636  303.0945  303.0684  303.0684  303.0684  303.0945];T1311=[312.7521  312.7791  312.7792  312.7791  312.7521  303.0161  303.0081  303.0080  303.0081  303.0161];
%%%%
T_141=307.9788;T142=[307.9791  307.9789  307.9789  307.9789  307.9788  307.9786  307.9786  307.9786  307.9786  307.9787];T143=[307.9870  307.9876  307.9876  307.9875  307.9868  307.9706  307.9699  307.9699  307.9699  307.9706];T144=[308.0264  308.0273  308.0273  308.0273  308.0262  307.9311  307.9300  307.9300  307.9300  307.9311];T145=[308.0349  308.0358  308.0358  308.0358  308.0347  307.9226  307.9215  307.9214  307.9215  307.9226];T146=[308.0484  308.0494  308.0494  308.0494  308.0482  307.9090  307.9078  307.9078  307.9078  307.9090];
T_147=[308.0680  308.0691  308.0692  308.0691  308.0678  307.8893  307.8880  307.8880  307.8880  307.8893];T148=[308.0947  308.0960  308.0960  308.0960  308.0945  307.8625  307.8610  307.8610  307.8610  307.8626];T149=[308.1291  308.1307  308.1307  308.1307  308.1289  307.8279  307.8261  307.8261  307.8261  307.8279];T1410=[308.1715  308.1735  308.1735  308.1735  308.1713  307.7825  307.7803  307.7803  307.7803  307.7825];T1411=[308.1974  308.1996  308.1996  308.1996  308.1972  307.7411  307.7387  307.7386  307.7387  307.7411];
%%%%
T_151=307.9782;T152=[307.9782  307.9782  307.9782  307.9782  307.9782  307.9782  307.9782  307.9782  307.9782  307.9782];T153=[307.9785  307.9785  307.9785  307.9785  307.9785  307.9780  307.9780  307.9780  307.9780  307.9780];T154=[307.9788  307.9789  307.9789  307.9789  307.9788  307.9776  307.9776  307.9776  307.9776  307.9776];T155=[307.9789  307.9790  307.9790  307.9790  307.9789  307.9775  307.9775  307.9775  307.9775  307.9775];T156=[307.9791  307.9791  307.9791  307.9791  307.9791  307.9773  307.9773  307.9773  307.9773  307.9773];
T_157=[307.9795  307.9795  307.9795  307.9795  307.9794  307.9769  307.9769  307.9769  307.9769  307.9769];T158=[307.9801  307.9802  307.9802  307.9802  307.9801  307.9763  307.9762  307.9762  307.9762  307.9763];T159=[307.9812  307.9813  307.9813  307.9813  307.9812  307.9752  307.9751  307.9751  307.9751  307.9752];T1510=[307.9830  307.9831  307.9831  307.9831  307.9829  307.9731  307.9730  307.9730  307.9730  307.9731];T1511=[307.9844  307.9845  307.9845  307.9845  307.9844  307.9565  307.9564  307.9564  307.9564  307.9565];
%%%%
T_161=307.9779;T162=[307.9779  307.9779  307.9779  307.9779  307.9779  307.9779  307.9779  307.9779  307.9779  307.9779];T163=[307.9779  307.9779  307.9779  307.9779  307.9779  307.9779  307.9779  307.9779  307.9779  307.9779];T164=[307.9779  307.9779  307.9779  307.9779  307.9779  307.9779  307.9779  307.9779  307.9779  307.9779];T165=[307.9779  307.9779  307.9779  307.9779  307.9779  307.9779  307.9779  307.9779  307.9779  307.9779];T166=[307.9779  307.9779  307.9779  307.9779  307.9779  307.9779  307.9779  307.9779  307.9779  307.9779];
T_167=[307.9779  307.9779  307.9779  307.9779  307.9779  307.9779  307.9779  307.9779  307.9779  307.9779];T168=[307.9779  307.9779  307.9779  307.9779  307.9779  307.9778  307.9778  307.9778  307.9778  307.9778];T169=[307.9779  307.9779  307.9779  307.9779  307.9779  307.9778  307.9778  307.9778  307.9778  307.9778];T1610=[307.9779  307.9779  307.9779  307.9779  307.9779  307.9775  307.9775  307.9775  307.9775  307.9775];T1611=[307.9782  307.9782  307.9782  307.9782  307.9782  307.9621  307.9621  307.9621  307.9621  307.9621];
%%%%
T_171=307.9778;T172=[307.9778  307.9778  307.9778  307.9778  307.9778  307.9778  307.9778  307.9778  307.9778  307.9778];T173=[307.9778  307.9778  307.9778  307.9778  307.9778  307.9778  307.9778  307.9778  307.9778  307.9778];T174=[307.9778  307.9778  307.9778  307.9778  307.9778  307.9778  307.9778  307.9778  307.9778  307.9778];T175=[307.9778  307.9778  307.9778  307.9778  307.9778  307.9778  307.9778  307.9778  307.9778  307.9778];T176=[307.9778  307.9778  307.9778  307.9778  307.9778  307.9778  307.9778  307.9778  307.9778  307.9778];
T_177=[307.9778  307.9778  307.9778  307.9778  307.9778  307.9778  307.9778  307.9778  307.9778  307.9778];T178=[307.9778  307.9778  307.9778  307.9778  307.9778  307.9778  307.9778  307.9778  307.9778  307.9778];T179=[307.9778  307.9778  307.9778  307.9778  307.9778  307.9778  307.9778  307.9778  307.9778  307.9778];T1710=[307.9778  307.9778  307.9778  307.9778  307.9778  307.9775  307.9775  307.9775  307.9775  307.9775];T1711=[307.9779  307.9780  307.9780  307.9780  307.9779  307.9621  307.9621  307.9621  307.9621  307.9621];
%%%%
%%-------------------------------------
h=[5.76,294.27,7,392.59,4.42,338.04];theta=pi/5;deltaR=0.02;deltaZ=0.025;
ks=44.5;rhos=7850;cps=475;%[w/m.k],[kg/m^3],[j/kg.k]
kc=386;rhoc=8954;cpc=383;%[w/m.k],[kg/m^3],[j/kg.k]
Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);Rh=1/((rm+deltaR)*deltaZ*theta*H);
deltav=rm*deltaR*theta*deltaZ;deltat=0.0001;Q=50000;
%%-------------------------------------
t138=T138(3)*ones(1,1634);
t11=T_11*ones(1,1634);t21=T_21*ones(1,1634);t31=T_31*ones(1,1634);t41=T_41*ones(1,1634);t51=T_51*ones(1,1634);t61=T_61*ones(1,1634);t71=T_71*ones(1,1634);t81=T_81*ones(1,1634);t91=T_91*ones(1,1634);
t101=T_101*ones(1,1634);t111=T_111*ones(1,1634);t121=T_121*ones(1,1634);t131=T_131*ones(1,1634);t141=T_141*ones(1,1634);t151=T_151*ones(1,1634);t161=T_161*ones(1,1634);t171=T_171*ones(1,1634);
%%-------------------------------------
g=0;
while true
    g=g+1;
    %%
    %1)T16
    for i=1:5
        H=h(1);
        rm=5*deltaR;
        k_conductivity=kc;density=rhoc;c=cpc;
        T_infinity=40+273;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);Rh=1/((rm+deltaR)*deltaZ*theta*H);deltav=rm*deltaR*theta*deltaZ;
        if i==1
            T16(i)=(Q*rm*deltaR*pi/2+(T26(i)-T16(i))/(2*Rz)+(T15(i)-T16(i))/deltaR/((4*deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T_infinity-T16(i))/Rh+(T16(10)-T16(i))/(2*Rtheta)+(T16(i+1)-T16(i))/(2*Rtheta))*(deltat/(density*c*deltav/2))+1.0001*T16(i);
            continue
        end
        T16(i)=(Q*rm*deltaR*pi/2+(T26(i)-T16(i))/(2*Rz)+(T15(i)-T16(i))/deltaR/((4*deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T_infinity-T16(i))/Rh+(T16(i-1)-T16(i))/(2*Rtheta)+(T16(i+1)-T16(i))/(2*Rtheta))*(deltat/(density*c*deltav/2))+1.0001*T16(i);
    end
    for i=6:10
        H=h(2);
        rm=5*deltaR;
        k_conductivity=kc;density=rhoc;c=cpc;
        T_infinity=30+273;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);Rh=1/((rm+deltaR)*deltaZ*theta*H);deltav=rm*deltaR*theta*deltaZ;
        if i==10
            T16(i)=(Q*rm*deltaR*pi/2+(T26(i)-T16(i))/(2*Rz)+(T15(i)-T16(i))/deltaR/((4*deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T_infinity-T16(i))/Rh+(T16(i-1)-T16(i))/(2*Rtheta)+(T16(10)-T16(i))/(2*Rtheta))*(deltat/(density*c*deltav/2))+1.0001*T16(i);
            continue
        end
        T16(i)=(Q*rm*deltaR*pi/2+(T26(i)-T16(i))/(2*Rz)+(T15(i)-T16(i))/deltaR/((4*deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T_infinity-T16(i))/Rh+(T16(i-1)-T16(i))/(2*Rtheta)+(T16(i+1)-T16(i))/(2*Rtheta))*(deltat/(density*c*deltav/2))+1.0001*T16(i);
    end
    %T15 T14 T13 T12 T11
    for i=1:10
        rm=4*deltaR;
        k_conductivity=kc;density=rhoc;c=cpc;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);Rh=1/((rm+deltaR)*deltaZ*theta*H);deltav=rm*deltaR*theta*deltaZ;
        if i==1
            T15(i)=((T16(i)-T15(i)/Rr)+(T14(i)-T15(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T15(10)-T15(i))/Rtheta+(T15(i+1)-T15(i))/Rtheta+(Q*rm*deltaR*pi)+(T25(i)-T15(i))/Rz)*(deltat/(density*c*deltav))+1.0001*T15(i);
            continue
        end
        if i==10
            T15(i)=((T16(i)-T15(i)/Rr)+(T14(i)-T15(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T15(i-1)-T15(i))/Rtheta+(T15(1)-T15(i))/Rtheta+(Q*rm*deltaR*pi)+(T25(i)-T15(i))/Rz)*(deltat/(density*c*deltav))+1.0001*T15(i);
            continue
        end
        T15(i)=((T16(i)-T15(i)/Rr)+(T14(i)-T15(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T15(i-1)-T15(i))/Rtheta+(T15(i+1)-T15(i))/Rtheta+(Q*rm*deltaR*pi)+(T25(i)-T15(i))/Rz)*(deltat/(density*c*deltav))+1.0001*T15(i);
    end
    
    for i=1:10
        rm=3*deltaR;
        k_conductivity=kc;density=rhoc;c=cpc;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);Rh=1/((rm+deltaR)*deltaZ*theta*H);deltav=rm*deltaR*theta*deltaZ;
        if i==1
            T14(i)=((T15(i)-T14(i)/Rr)+(T13(i)-T14(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T14(10)-T14(i))/Rtheta+(T14(i+1)-T14(i))/Rtheta+(Q*rm*deltaR*pi)+(T24(i)-T14(i))/Rz)*(deltat/(density*c*deltav))+1.0001*T14(i);
            continue
        end
        if i==10
            T14(i)=((T15(i)-T14(i)/Rr)+(T13(i)-T14(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T14(i-1)-T14(i))/Rtheta+(T14(1)-T14(i))/Rtheta+(Q*rm*deltaR*pi)+(T24(i)-T14(i))/Rz)*(deltat/(density*c*deltav))+1.0001*T14(i);
            continue
        end
        T14(i)=((T15(i)-T14(i)/Rr)+(T13(i)-T14(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T14(i-1)-T14(i))/Rtheta+(T14(i+1)-T14(i))/Rtheta+(Q*rm*deltaR*pi)+(T24(i)-T14(i))/Rz)*(deltat/(density*c*deltav))+1.0001*T14(i);
            
    end
    
    for i=1:10
        rm=2*deltaR;
        k_conductivity=kc;density=rhoc;c=cpc;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);Rh=1/((rm+deltaR)*deltaZ*theta*H);deltav=rm*deltaR*theta*deltaZ;
        if i==1
            T13(i)=((T14(i)-T13(i)/Rr)+(T12(i)-T13(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T13(10)-T13(i))/Rtheta+(T13(i+1)-T13(i))/Rtheta+(Q*rm*deltaR*pi)+(T23(i)-T13(i))/Rz)*(deltat/(density*c*deltav))+1.0001*T13(i);
            continue
        end
        if i==10
            T13(i)=((T14(i)-T13(i)/Rr)+(T12(i)-T13(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T13(i-1)-T13(i))/Rtheta+(T13(10)-T13(i))/Rtheta+(Q*rm*deltaR*pi)+(T23(i)-T13(i))/Rz)*(deltat/(density*c*deltav))+1.0001*T13(i);
            continue
        end
        T13(i)=((T14(i)-T13(i)/Rr)+(T12(i)-T13(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T13(i-1)-T13(i))/Rtheta+(T13(i+1)-T13(i))/Rtheta+(Q*rm*deltaR*pi)+(T23(i)-T13(i))/Rz)*(deltat/(density*c*deltav))+1.0001*T13(i);
             
    end
    
    for i=1:10
        rm=1*deltaR;
        k_conductivity=kc;density=rhoc;c=cpc;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);Rh=1/((rm+deltaR)*deltaZ*theta*H);deltav=rm*deltaR*theta*deltaZ;
        if i==1
            T12(i)=((T13(i)-T12(i)/Rr)+(T_11-T12(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T12(10)-T12(i))/Rtheta+(T12(i+1)-T12(i))/Rtheta+(Q*rm*deltaR*pi)+(T22(i)-T12(i))/Rz)*(deltat/(density*c*deltav))+1.0001*T12(i);
            continue
        end
        if i==10
            T12(i)=((T13(i)-T12(i)/Rr)+(T_11-T12(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T12(i-1)-T12(i))/Rtheta+(T12(1)-T12(i))/Rtheta+(Q*rm*deltaR*pi)+(T22(i)-T12(i))/Rz)*(deltat/(density*c*deltav))+1.0001*T12(i);
            continue
        end
        T12(i)=((T13(i)-T12(i)/Rr)+(T_11-T12(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T12(i-1)-T12(i))/Rtheta+(T12(i+1)-T12(i))/Rtheta+(Q*rm*deltaR*pi)+(T22(i)-T12(i))/Rz)*(deltat/(density*c*deltav))+1.0001*T12(i);
              
    end
    %T11
    l=0;k_conductivity=kc;density=rhoc;c=cpc;
    for i=1:10
        l=l+(T12(i)-T_11)/(2*deltaR)/(deltaR*theta*deltaZ*k_conductivity);    
    end
    T_11=(l+(T_21-T_11)/deltaZ/(pi*k_conductivity*deltaR^2)+Q*rm*deltaR*pi)*(deltat/(density*c*deltaZ*pi*deltaR^2))+1.001*T_11;
    t11(g+1)=T_11;
    %%
    %2)T26
    for i=1:5
        H=h(1);
        rm=5*deltaR;
        k_conductivity=kc;density=rhoc;c=cpc;
        T_infinity=40+273;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);Rh=1/((rm+deltaR)*deltaZ*theta*H);deltav=rm*deltaR*theta*deltaZ;
        if i==1
            T26(i)=((T36(i)-T26(i))/(2*Rz)+(T16(i)-T26(i))/(2*Rz)+(T25(i)-T26(i))/deltaR/((4*deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T_infinity-T26(i))/Rh+(T26(10)-T26(i))/(2*Rtheta)+(T26(i+1)-T26(i)/(2*Rtheta)))*deltat/(density*c*deltav/2)+1.0001*T26(i);
            continue
        end
        T26(i)=((T36(i)-T26(i))/(2*Rz)+(T16(i)-T26(i))/(2*Rz)+(T25(i)-T26(i))/deltaR/((4*deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T_infinity-T26(i))/Rh+(T26(i-1)-T26(i))/(2*Rtheta)+(T26(i+1)-T26(i)/(2*Rtheta)))*deltat/(density*c*deltav/2)+1.0001*T26(i);       
    end
    for i=6:10
        H=h(2);
        rm=5*deltaR;
        k_conductivity=kc;density=rhoc;c=cpc;
        T_infinity=30+273;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);Rh=1/((rm+deltaR)*deltaZ*theta*H);deltav=rm*deltaR*theta*deltaZ;
        if i==10
            T26(i)=((T36(i)-T26(i))/(2*Rz)+(T16(i)-T26(i))/(2*Rz)+(T25(i)-T26(i))/deltaR/((4*deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T_infinity-T26(i))/Rh+(T26(i-1)-T26(i))/(2*Rtheta)+(T26(1)-T26(i)/(2*Rtheta)))*deltat/(density*c*deltav/2)+1.0001*T26(i);
            continue
        end
        T26(i)=((T36(i)-T26(i))/(2*Rz)+(T16(i)-T26(i))/(2*Rz)+(T25(i)-T26(i))/deltaR/((4*deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T_infinity-T26(i))/Rh+(T26(i-1)-T26(i))/(2*Rtheta)+(T26(i+1)-T26(i))/(2*Rtheta))*deltat/(density*c*deltav/2)+1.0001*T26(i);
    end
    %T25 T24 T23 T22 T21
    for i=1:10
        rm=4*deltaR;
        k_conductivity=kc;density=rhoc;c=cpc;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);Rh=1/((rm+deltaR)*deltaZ*theta*H);deltav=rm*deltaR*theta*deltaZ;
        if i==1
            T25(i)=((T26(i)-T25(i)/Rr)+(T24(i)-T25(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T25(10)-T25(i))/Rtheta+(T25(i+1)-T25(i))/Rtheta+(T15(i)-T25(i))/Rz+(T35(i)-T25(i))/Rz)*(deltat/(density*c*deltav))+1.0001*T25(i);
            continue
        end
        if i==10
           T25(i)=((T26(i)-T25(i)/Rr)+(T24(i)-T25(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T25(i-1)-T25(i))/Rtheta+(T25(1)-T25(i))/Rtheta+(T15(i)-T25(i))/Rz+(T35(i)-T25(i))/Rz)*(deltat/(density*c*deltav))+1.0001*T25(i);
            continue
        end
        T25(i)=((T26(i)-T25(i)/Rr)+(T24(i)-T25(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T25(i-1)-T25(i))/Rtheta+(T25(i+1)-T25(i))/Rtheta+(T15(i)-T25(i))/Rz+(T35(i)-T25(i))/Rz)*(deltat/(density*c*deltav))+1.0001*T25(i);
           
    end
    
    for i=1:10
        rm=3*deltaR;
        k_conductivity=kc;density=rhoc;c=cpc;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);Rh=1/((rm+deltaR)*deltaZ*theta*H);deltav=rm*deltaR*theta*deltaZ;
        if i==1
            T24(i)=((T25(i)-T24(i)/Rr)+(T23(i)-T24(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T24(10)-T24(i))/Rtheta+(T24(i+1)-T24(i))/Rtheta+(T14(i)-T24(i))/Rz+(T34(i)-T24(i))/Rz)*(deltat/(density*c*deltav))+1.0001*T24(i);
            continue
        end
        if i==10
           T24(i)=((T25(i)-T24(i)/Rr)+(T23(i)-T24(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T24(i-1)-T24(i))/Rtheta+(T24(1)-T24(i))/Rtheta+(T14(i)-T24(i))/Rz+(T34(i)-T24(i))/Rz)*(deltat/(density*c*deltav))+1.0001*T24(i);
            continue
        end
        T24(i)=((T25(i)-T24(i)/Rr)+(T23(i)-T24(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T24(i-1)-T24(i))/Rtheta+(T24(i+1)-T24(i))/Rtheta+(T14(i)-T24(i))/Rz+(T34(i)-T24(i))/Rz)*(deltat/(density*c*deltav))+1.0001*T24(i);
         
    end
    
    for i=1:10
        rm=2*deltaR;
        k_conductivity=kc;density=rhoc;c=cpc;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);Rh=1/((rm+deltaR)*deltaZ*theta*H);deltav=rm*deltaR*theta*deltaZ;
        if i==1
            T23(i)=((T24(i)-T23(i)/Rr)+(T22(i)-T23(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T23(10)-T23(i))/Rtheta+(T23(i+1)-T23(i))/Rtheta+(T13(i)-T23(i))/Rz+(T33(i)-T23(i))/Rz)*(deltat/(density*c*deltav))+1.0001*T23(i);
            continue
        end
        if i==10
           T23(i)=((T24(i)-T23(i)/Rr)+(T22(i)-T23(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T23(i-1)-T23(i))/Rtheta+(T23(1)-T23(i))/Rtheta+(T13(i)-T23(i))/Rz+(T33(i)-T23(i))/Rz)*(deltat/(density*c*deltav))+1.0001*T23(i);
            continue
        end
        T23(i)=((T24(i)-T23(i)/Rr)+(T22(i)-T23(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T23(i-1)-T23(i))/Rtheta+(T23(i+1)-T23(i))/Rtheta+(T13(i)-T23(i))/Rz+(T33(i)-T23(i))/Rz)*(deltat/(density*c*deltav))+1.0001*T23(i);
            
    end
    
    for i=1:10
        rm=1*deltaR;
        k_conductivity=kc;density=rhoc;c=cpc;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);Rh=1/((rm+deltaR)*deltaZ*theta*H);deltav=rm*deltaR*theta*deltaZ;
        if i==1
            T22(i)=((T23(i)-T22(i)/Rr)+(T_21-T22(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T22(10)-T22(i))/Rtheta+(T22(i+1)-T22(i))/Rtheta+(T12(i)-T22(i))/Rz+(T32(i)-T22(i))/Rz)*(deltat/(density*c*deltav))+1.0001*T22(i);
            continue
        end
        if i==10
          T22(i)=((T23(i)-T22(i)/Rr)+(T_21-T22(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T22(i-1)-T22(i))/Rtheta+(T22(1)-T22(i))/Rtheta+(T12(i)-T22(i))/Rz+(T32(i)-T22(i))/Rz)*(deltat/(density*c*deltav))+1.0001*T22(i);
            continue
        end
        T22(i)=((T23(i)-T22(i)/Rr)+(T_21-T22(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T22(i-1)-T22(i))/Rtheta+(T22(i+1)-T22(i))/Rtheta+(T12(i)-T22(i))/Rz+(T32(i)-T22(i))/Rz)*(deltat/(density*c*deltav))+1.0001*T22(i);
              
    end
    %T21
    l=0;k_conductivity=kc;density=rhoc;c=cpc;
    for i=1:10
        l=l+(T22(i)-T_21)/(2*deltaR)/(deltaR*theta*deltaZ*k_conductivity);    
    end
    T_21=(l+(T_11-T_21)/deltaZ/(pi*k_conductivity*deltaR^2)+(T_31-T_21)/deltaZ/(pi*k_conductivity*deltaR^2))*(deltat/(density*c*deltaZ*pi*deltaR^2))+1.0001*T_21;
    t21(g+1)=T_21;
    %%
    %3)T36
    for i=1:5
        H=h(1);
        rm=5*deltaR;
        k_conductivity=kc;density=rhoc;c=cpc;
        T_infinity=40+273;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);Rh=1/((rm+deltaR)*deltaZ*theta*H);deltav=rm*deltaR*theta*deltaZ;
        if i==1
            T36(i)=((T_infinity-T36(i))/(1/(h(3)*theta*9*deltaR^2))+(T26(i)-T36(i))/(2*Rz)+(T35(i)-T36(i))/deltaR/((4*deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T_infinity-T36(i))/Rh+(T36(10)-T36(i))/(2*Rtheta)+(T36(i+1)-T36(i))/(2*Rtheta))*(deltat/(density*c*deltav/2))+1.0001*T36(i);
            continue
        end
        T36(i)=((T_infinity-T36(i))/(1/(h(3)*theta*9*deltaR^2))+(T26(i)-T36(i))/(2*Rz)+(T35(i)-T36(i))/deltaR/((4*deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T_infinity-T36(i))/Rh+(T36(i-1)-T36(i))/(2*Rtheta)+(T36(i+1)-T36(i))/(2*Rtheta))*(deltat/(density*c*deltav/2))+1.0001*T36(i);       
    end
    for i=6:10
        H=h(2);
        rm=5*deltaR;
        k_conductivity=kc;density=rhoc;c=cpc;
        T_infinity=30+273;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);Rh=1/((rm+deltaR)*deltaZ*theta*H);deltav=rm*deltaR*theta*deltaZ;
        if i==10
            T36(i)=((T_infinity-T36(i))/(1/(h(4)*theta*9*deltaR^2))+(T26(i)-T36(i))/(2*Rz)+(T35(i)-T36(i))/deltaR/((4*deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T_infinity-T36(i))/Rh+(T36(i-1)-T36(i))/(2*Rtheta)+(T36(1)-T36(i))/(2*Rtheta))*(deltat/(density*c*deltav/2))+1.0001*T36(i);
            continue
        end
        T36(i)=((T_infinity-T36(i))/(1/(h(4)*theta*9*deltaR^2))+(T26(i)-T36(i))/(2*Rz)+(T35(i)-T36(i))/deltaR/((4*deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T_infinity-T36(i))/Rh+(T36(i-1)-T36(i))/(2*Rtheta)+(T36(i+1)-T36(i))/(2*Rtheta))*(deltat/(density*c*deltav/2))+1.0001*T36(i);
    end
    %T35 T34
    for i=1:5
        rm=5*deltaR;
        k_conductivity=kc;density=rhoc;c=cpc;
        T_infinity=40+273;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);Rh=1/((rm+deltaR)*deltaZ*theta*H);deltav=rm*deltaR*theta*deltaZ;
        if i==1
            T35(i)=((T36(i)-T35(i))/Rr+(T34(i)-T35(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T35(10)-T35(i))/Rtheta+(T35(i+1)-T35(i))/Rtheta+(T25(i)-T35(i))/Rz+(T_infinity-T35(i))/(1/(7*h(3)*theta*deltaR^2)))*deltat/(density*c*deltav/2)+1.0001*T35(i);
            continue
        end
       T35(i)=((T36(i)-T35(i))/Rr+(T34(i)-T35(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T35(i-1)-T35(i))/Rtheta+(T35(i+1)-T35(i))/Rtheta+(T25(i)-T35(i))/Rz+(T_infinity-T35(i))/(1/(7*h(3)*theta*deltaR^2)))*deltat/(density*c*deltav/2)+1.0001*T35(i);
            
    end
    for i=6:10
        rm=5*deltaR;
        k_conductivity=kc;density=rhoc;c=cpc;
        T_infinity=30+273;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);Rh=1/((rm+deltaR)*deltaZ*theta*H);deltav=rm*deltaR*theta*deltaZ;
        if i==10
            T35(i)=((T36(i)-T35(i))/Rr+(T34(i)-T35(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T35(i-1)-T35(i))/Rtheta+(T35(1)-T35(i))/Rtheta+(T25(i)-T35(i))/Rz+(T_infinity-T35(i))/(1/(7*h(4)*theta*deltaR^2)))*deltat/(density*c*deltav/2)+1.0001*T35(i);
            continue
        end
        T35(i)=((T36(i)-T35(i))/Rr+(T34(i)-T35(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T35(i-1)-T35(i))/Rtheta+(T35(i+1)-T35(i))/Rtheta+(T25(i)-T35(i))/Rz+(T_infinity-T35(i))/(1/(7*h(4)*theta*deltaR^2)))*deltat/(density*c*deltav/2)+1.0001*T35(i);
    end
    
    for i=1:5
        rm=4*deltaR;
        k_conductivity=kc;density=rhoc;c=cpc;
        T_infinity=40+273;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);Rh=1/((rm+deltaR)*deltaZ*theta*H);deltav=rm*deltaR*theta*deltaZ;
        if i==1
            T34(i)=((T35(i)-T34(i))/Rr+(T33(i)-T34(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T34(10)-T34(i))/Rtheta+(T34(i+1)-T34(i))/Rtheta+(T24(i)-T34(i))/Rz+(T_infinity-T34(i))/(2/(h(3)*theta*deltaR^2))+(T44(i)-T34(i))/(2*Rz))*deltat/(density*c*deltav/2)+1.0001*T34(i);
            continue
        end
       T34(i)=((T35(i)-T34(i))/Rr+(T33(i)-T34(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T34(i-1)-T34(i))/Rtheta+(T34(i+1)-T34(i))/Rtheta+(T24(i)-T34(i))/Rz+(T_infinity-T34(i))/(2/(h(3)*theta*deltaR^2))+(T44(i)-T34(i))/(2*Rz))*deltat/(density*c*deltav/2)+1.0001*T34(i);
            
    end
    for i=6:10
        rm=4*deltaR;
        k_conductivity=kc;density=rhoc;c=cpc;
        T_infinity=30+273;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);Rh=1/((rm+deltaR)*deltaZ*theta*H);deltav=rm*deltaR*theta*deltaZ;
        if i==10
            T34(i)=((T35(i)-T34(i))/Rr+(T33(i)-T34(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T34(i-1)-T34(i))/Rtheta+(T34(1)-T34(i))/Rtheta+(T24(i)-T34(i))/Rz+(T_infinity-T34(i))/(2/(h(4)*theta*deltaR^2))+(T44(i)-T34(i))/(2*Rz))*deltat/(density*c*deltav/2)+1.0001*T34(i);
            continue
        end
        T34(i)=((T35(i)-T34(i))/Rr+(T33(i)-T34(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T34(i-1)-T34(i))/Rtheta+(T34(i+1)-T34(i))/Rtheta+(T24(i)-T34(i))/Rz+(T_infinity-T34(i))/(2/(h(4)*theta*deltaR^2))+(T44(i)-T34(i))/(2*Rz))*deltat/(density*c*deltav/2)+1.0001*T34(i);
    end
    %T33 T32 
    for i=1:10
        rm=2*deltaR;
        k_conductivity=kc;density=rhoc;c=cpc;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);Rh=1/((rm+deltaR)*deltaZ*theta*H);deltav=rm*deltaR*theta*deltaZ;
        if i==1
            T33(i)=((T34(i)-T33(i)/Rr)+(T32(i)-T33(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T33(10)-T33(i))/Rtheta+(T33(i+1)-T33(i))/Rtheta+(T23(i)-T33(i))/Rz+(T43(i)-T33(i))/Rz)*(deltat/(density*c*deltav))+1.0001*T33(i);
            continue
        end
        if i==10
           T33(i)=((T34(i)-T33(i)/Rr)+(T32(i)-T33(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T33(i-1)-T33(i))/Rtheta+(T33(1)-T33(i))/Rtheta+(T23(i)-T33(i))/Rz+(T43(i)-T33(i))/Rz)*(deltat/(density*c*deltav))+1.0001*T33(i);
            continue
        end
       T33(i)=((T34(i)-T33(i)/Rr)+(T32(i)-T33(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T33(i-1)-T33(i))/Rtheta+(T33(i+1)-T33(i))/Rtheta+(T23(i)-T33(i))/Rz+(T43(i)-T33(i))/Rz)*(deltat/(density*c*deltav))+1.0001*T33(i);
           
    end
    
    for i=1:10
        rm=1*deltaR;
        k_conductivity=kc;density=rhoc;c=cpc;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);Rh=1/((rm+deltaR)*deltaZ*theta*H);deltav=rm*deltaR*theta*deltaZ;
        if i==1
            T32(i)=((T33(i)-T32(i)/Rr)+(T_31-T32(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T32(10)-T32(i))/Rtheta+(T32(i+1)-T32(i))/Rtheta+(T22(i)-T32(i))/Rz+(T42(i)-T32(i))/Rz)*(deltat/(density*c*deltav))+1.0001*T32(i);
            continue
        end
        if i==10
          T32(i)=((T33(i)-T32(i)/Rr)+(T_31-T32(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T32(i-1)-T32(i))/Rtheta+(T32(1)-T32(i))/Rtheta+(T22(i)-T32(i))/Rz+(T42(i)-T32(i))/Rz)*(deltat/(density*c*deltav))+1.0001*T32(i);
           continue
        end
        T32(i)=((T33(i)-T32(i)/Rr)+(T_31-T32(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T32(i-1)-T32(i))/Rtheta+(T32(i+1)-T32(i))/Rtheta+(T22(i)-T32(i))/Rz+(T42(i)-T32(i))/Rz)*(deltat/(density*c*deltav))+1.0001*T32(i);
              
    end
    %T31
    l=0;k_conductivity=kc;density=rhoc;c=cpc;
    for i=1:10
        l=l+(T32(i)-T_31)/(2*deltaR)/(deltaR*theta*deltaZ*k_conductivity);    
    end
    T_31=(l+(T_21-T_31)/deltaZ/(pi*k_conductivity*deltaR^2)+(T_41-T_31)/deltaZ/(pi*k_conductivity*deltaR^2))*(deltat/(density*c*deltaZ*pi*deltaR^2))+1.0001*T_31;
    t31(g+1)=T_31;
    %%
    %4)T44
    for i=1:5
        H=h(3);
        rm=3*deltaR;
        k_conductivity=kc;density=rhoc;c=cpc;
        T_infinity=40+273;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);Rh=1/((rm+deltaR)*deltaZ*theta*H);deltav=rm*deltaR*theta*deltaZ;
        if i==1
            T44(i)=((T54(i)-T44(i))/(2*Rz)+(T34(i)-T44(i))/(2*Rz)+(T43(i)-T44(i))/deltaR/((2*deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T_infinity-T44(i))/Rh+(T44(10)-T44(i))/(2*Rtheta)+(T44(i+1)-T44(i)/(2*Rtheta)))*deltat/(density*c*deltav/2)+1.0001*T44(i);
            continue
        end
        T44(i)=((T54(i)-T44(i))/(2*Rz)+(T34(i)-T44(i))/(2*Rz)+(T43(i)-T44(i))/deltaR/((2*deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T_infinity-T44(i))/Rh+(T44(i-1)-T44(i))/(2*Rtheta)+(T44(i+1)-T44(i)/(2*Rtheta)))*deltat/(density*c*deltav/2)+1.0001*T44(i);       
    end
    for i=6:10
        H=h(4);
        rm=3*deltaR;
        k_conductivity=kc;density=rhoc;c=cpc;
        T_infinity=30+273;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);Rh=1/((rm+deltaR)*deltaZ*theta*H);deltav=rm*deltaR*theta*deltaZ;
        if i==10
            T44(i)=((T54(i)-T44(i))/(2*Rz)+(T34(i)-T44(i))/(2*Rz)+(T43(i)-T44(i))/deltaR/((2*deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T_infinity-T44(i))/Rh+(T44(i-1)-T44(i))/(2*Rtheta)+(T44(1)-T44(i)/(2*Rtheta)))*deltat/(density*c*deltav/2)+1.0001*T44(i);
            continue
        end
        T44(i)=((T54(i)-T44(i))/(2*Rz)+(T34(i)-T44(i))/(2*Rz)+(T43(i)-T44(i))/deltaR/((2*deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T_infinity-T44(i))/Rh+(T44(i-1)-T44(i))/(2*Rtheta)+(T44(i+1)-T44(i)/(2*Rtheta)))*deltat/(density*c*deltav/2)+1.0001*T44(i);
    end
    %T43 T42 
    for i=1:10
        rm=2*deltaR;
        k_conductivity=kc;density=rhoc;c=cpc;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);Rh=1/((rm+deltaR)*deltaZ*theta*H);deltav=rm*deltaR*theta*deltaZ;
        if i==1
            T43(i)=((T44(i)-T43(i)/Rr)+(T42(i)-T43(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T43(10)-T43(i))/Rtheta+(T43(i+1)-T43(i))/Rtheta+(T33(i)-T43(i))/Rz+(T53(i)-T43(i))/Rz)*(deltat/(density*c*deltav))+1.0001*T43(i);
            continue
        end
        if i==10
           T43(i)=((T44(i)-T43(i)/Rr)+(T42(i)-T43(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T43(i-1)-T43(i))/Rtheta+(T43(1)-T43(i))/Rtheta+(T33(i)-T43(i))/Rz+(T53(i)-T43(i))/Rz)*(deltat/(density*c*deltav))+1.0001*T43(i);
            continue
        end
       T43(i)=((T44(i)-T43(i)/Rr)+(T42(i)-T43(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T43(i-1)-T43(i))/Rtheta+(T43(i+1)-T43(i))/Rtheta+(T33(i)-T43(i))/Rz+(T53(i)-T43(i))/Rz)*(deltat/(density*c*deltav))+1.0001*T43(i);
           
    end
    
    for i=1:10
        rm=1*deltaR;
        k_conductivity=kc;density=rhoc;c=cpc;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);Rh=1/((rm+deltaR)*deltaZ*theta*H);deltav=rm*deltaR*theta*deltaZ;
        if i==1
            T42(i)=((T43(i)-T42(i)/Rr)+(T_41-T42(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T42(10)-T42(i))/Rtheta+(T42(i+1)-T42(i))/Rtheta+(T32(i)-T42(i))/Rz+(T52(i)-T42(i))/Rz)*(deltat/(density*c*deltav))+1.0001*T42(i);
            continue
        end
        if i==10
          T42(i)=((T43(i)-T42(i)/Rr)+(T_41-T42(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T42(i-1)-T42(i))/Rtheta+(T42(1)-T42(i))/Rtheta+(T32(i)-T42(i))/Rz+(T52(i)-T42(i))/Rz)*(deltat/(density*c*deltav))+1.0001*T42(i);
            continue
        end
        T42(i)=((T43(i)-T42(i)/Rr)+(T_41-T42(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T42(i-1)-T42(i))/Rtheta+(T42(i+1)-T42(i))/Rtheta+(T32(i)-T42(i))/Rz+(T52(i)-T42(i))/Rz)*(deltat/(density*c*deltav))+1.0001*T42(i);
              
    end
    %T41
    l=0;k_conductivity=kc;density=rhoc;c=cpc;
    for i=1:10
        l=l+(T42(i)-T_41)/(2*deltaR)/(deltaR*theta*deltaZ*k_conductivity);    
    end
    T_41=(l+(T_31-T_41)/deltaZ/(pi*k_conductivity*deltaR^2)+(T_51-T_41)/deltaZ/(pi*k_conductivity*deltaR^2))*(deltat/(density*c*deltaZ*pi*deltaR^2))+T_41;
    t41(g+1)=T_41;
    %%
    %5)T54
    for i=1:5
        H=h(3);
        rm=3*deltaR;
        k_conductivity=kc;density=rhoc;c=cpc;
        T_infinity=40+273;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);Rh=1/((rm+deltaR)*deltaZ*theta*H);deltav=rm*deltaR*theta*deltaZ;
        if i==1
            T54(i)=((T64(i)-T54(i))/(2*Rz)+(T44(i)-T54(i))/(2*Rz)+(T53(i)-T54(i))/deltaR/((2*deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T_infinity-T54(i))/Rh+(T54(10)-T54(i))/(2*Rtheta)+(T54(i+1)-T54(i)/(2*Rtheta)))*deltat/(density*c*deltav/2)+1.0001*T54(i);
            continue
        end
        T54(i)=((T64(i)-T54(i))/(2*Rz)+(T44(i)-T54(i))/(2*Rz)+(T53(i)-T54(i))/deltaR/((2*deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T_infinity-T54(i))/Rh+(T54(i-1)-T54(i))/(2*Rtheta)+(T54(i+1)-T54(i)/(2*Rtheta)))*deltat/(density*c*deltav/2)+1.0001*T54(i);       
    end
    for i=6:10
        H=h(4);
        rm=3*deltaR;
        k_conductivity=kc;density=rhoc;c=cpc;
        T_infinity=30+273;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);Rh=1/((rm+deltaR)*deltaZ*theta*H);deltav=rm*deltaR*theta*deltaZ;
        if i==10
            T54(i)=((T64(i)-T54(i))/(2*Rz)+(T44(i)-T54(i))/(2*Rz)+(T53(i)-T54(i))/deltaR/((2*deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T_infinity-T54(i))/Rh+(T54(i-1)-T54(i))/(2*Rtheta)+(T54(1)-T54(i)/(2*Rtheta)))*deltat/(density*c*deltav/2)+1.0001*T54(i);
            continue
        end
        T54(i)=((T64(i)-T54(i))/(2*Rz)+(T44(i)-T54(i))/(2*Rz)+(T53(i)-T54(i))/deltaR/((2*deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T_infinity-T54(i))/Rh+(T54(i-1)-T54(i))/(2*Rtheta)+(T54(i+1)-T54(i)/(2*Rtheta)))*deltat/(density*c*deltav/2)+1.0001*T54(i);
    end
    %T53 T52 
    for i=1:10
        rm=2*deltaR;
        k_conductivity=kc;density=rhoc;c=cpc;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);Rh=1/((rm+deltaR)*deltaZ*theta*H);deltav=rm*deltaR*theta*deltaZ;
        if i==1
            T53(i)=((T54(i)-T53(i)/Rr)+(T52(i)-T53(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T53(10)-T53(i))/Rtheta+(T53(i+1)-T53(i))/Rtheta+(T43(i)-T53(i))/Rz+(T63(i)-T53(i))/Rz)*(deltat/(density*c*deltav))+1.0001*T53(i);
            continue
        end
        if i==10
            T53(i)=((T54(i)-T53(i)/Rr)+(T52(i)-T53(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T53(i-1)-T53(i))/Rtheta+(T53(1)-T53(i))/Rtheta+(T43(i)-T53(i))/Rz+(T63(i)-T53(i))/Rz)*(deltat/(density*c*deltav))+1.0001*T53(i);
            continue
        end
        T53(i)=((T54(i)-T53(i)/Rr)+(T52(i)-T53(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T53(i-1)-T53(i))/Rtheta+(T53(i+1)-T53(i))/Rtheta+(T43(i)-T53(i))/Rz+(T63(i)-T53(i))/Rz)*(deltat/(density*c*deltav))+1.0001*T53(i);
             
    end
    
    for i=1:10
        rm=1*deltaR;
        k_conductivity=kc;density=rhoc;c=cpc;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);Rh=1/((rm+deltaR)*deltaZ*theta*H);deltav=rm*deltaR*theta*deltaZ;
        if i==1
            T52(i)=((T53(i)-T52(i)/Rr)+(T_51-T52(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T52(10)-T52(i))/Rtheta+(T52(i+1)-T52(i))/Rtheta+(T42(i)-T52(i))/Rz+(T62(i)-T52(i))/Rz)*(deltat/(density*c*deltav))+1.0001*T52(i);
            continue
        end
        if i==10
          T52(i)=((T53(i)-T52(i)/Rr)+(T_51-T52(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T52(i-1)-T52(i))/Rtheta+(T52(1)-T52(i))/Rtheta+(T42(i)-T52(i))/Rz+(T62(i)-T52(i))/Rz)*(deltat/(density*c*deltav))+1.0001*T52(i);
            continue
        end
        T52(i)=((T53(i)-T52(i)/Rr)+(T_51-T52(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T52(i-1)-T52(i))/Rtheta+(T52(i+1)-T52(i))/Rtheta+(T42(i)-T52(i))/Rz+(T62(i)-T52(i))/Rz)*(deltat/(density*c*deltav))+1.0001*T52(i);
              
    end
    %T51
    l=0;k_conductivity=kc;density=rhoc;c=cpc;
    for i=1:10
        l=l+(T52(i)-T_51)/(2*deltaR)/(deltaR*theta*deltaZ*k_conductivity);    
    end
    T_51=(l+(T_41-T_51)/deltaZ/(pi*k_conductivity*deltaR^2)+(T_61-T_51)/deltaZ/(pi*k_conductivity*deltaR^2))*(deltat/(density*c*deltaZ*pi*deltaR^2))+1.0001*T_51;
    t51(g+1)=T_51;
    %%
    %6)T64
    for i=1:5
        H=h(3);
        rm=3*deltaR;
        k_conductivity=kc;density=rhoc;c=cpc;
        T_infinity=40+273;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);Rh=1/((rm+deltaR)*deltaZ*theta*H);deltav=rm*deltaR*theta*deltaZ;
        if i==1
            T64(i)=((T74(i)-T64(i))/(2*Rz)+(T54(i)-T64(i))/(2*Rz)+(T63(i)-T64(i))/deltaR/((2*deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T_infinity-T64(i))/Rh+(T64(10)-T64(i))/(2*Rtheta)+(T64(i+1)-T64(i)/(2*Rtheta)))*deltat/(density*c*deltav/2)+1.0001*T64(i);
            continue
        end
        T64(i)=((T74(i)-T64(i))/(2*Rz)+(T54(i)-T64(i))/(2*Rz)+(T63(i)-T64(i))/deltaR/((2*deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T_infinity-T64(i))/Rh+(T64(i-1)-T64(i))/(2*Rtheta)+(T64(i+1)-T64(i)/(2*Rtheta)))*deltat/(density*c*deltav/2)+1.0001*T64(i);       
    end
    for i=6:10
        H=h(4);
        rm=3*deltaR;
        k_conductivity=kc;density=rhoc;c=cpc;
        T_infinity=30+273;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);Rh=1/((rm+deltaR)*deltaZ*theta*H);deltav=rm*deltaR*theta*deltaZ;
        if i==10
           T64(i)=((T74(i)-T64(i))/(2*Rz)+(T54(i)-T64(i))/(2*Rz)+(T63(i)-T64(i))/deltaR/((2*deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T_infinity-T64(i))/Rh+(T64(i-1)-T64(i))/(2*Rtheta)+(T64(1)-T64(i)/(2*Rtheta)))*deltat/(density*c*deltav/2)+1.0001*T64(i);
            continue
        end
        T64(i)=((T74(i)-T64(i))/(2*Rz)+(T54(i)-T64(i))/(2*Rz)+(T63(i)-T64(i))/deltaR/((2*deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T_infinity-T64(i))/Rh+(T64(i-1)-T64(i))/(2*Rtheta)+(T64(i+1)-T64(i)/(2*Rtheta)))*deltat/(density*c*deltav/2)+1.0001*T64(i);
    end
    %T63 T62 
    for i=1:10
        rm=2*deltaR;
        k_conductivity=kc;density=rhoc;c=cpc;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);Rh=1/((rm+deltaR)*deltaZ*theta*H);deltav=rm*deltaR*theta*deltaZ;
        if i==1
            T63(i)=((T64(i)-T63(i)/Rr)+(T62(i)-T63(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T63(10)-T63(i))/Rtheta+(T63(i+1)-T63(i))/Rtheta+(T53(i)-T63(i))/Rz+(T73(i)-T63(i))/Rz)*(deltat/(density*c*deltav))+1.0001*T63(i);
            continue
        end
        if i==10
            T63(i)=((T64(i)-T63(i)/Rr)+(T62(i)-T63(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T63(i-1)-T63(i))/Rtheta+(T63(1)-T63(i))/Rtheta+(T53(i)-T63(i))/Rz+(T73(i)-T63(i))/Rz)*(deltat/(density*c*deltav))+1.0001*T63(i);
            continue
        end
        T63(i)=((T64(i)-T63(i)/Rr)+(T62(i)-T63(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T63(i-1)-T63(i))/Rtheta+(T63(i+1)-T63(i))/Rtheta+(T53(i)-T63(i))/Rz+(T73(i)-T63(i))/Rz)*(deltat/(density*c*deltav))+1.0001*T63(i);
              
    end
    
    for i=1:10
        rm=1*deltaR;
        k_conductivity=kc;density=rhoc;c=cpc;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);Rh=1/((rm+deltaR)*deltaZ*theta*H);deltav=rm*deltaR*theta*deltaZ;
        if i==1
            T62(i)=((T63(i)-T62(i)/Rr)+(T_61-T62(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T62(10)-T62(i))/Rtheta+(T62(i+1)-T62(i))/Rtheta+(T52(i)-T62(i))/Rz+(T72(i)-T62(i))/Rz)*(deltat/(density*c*deltav))+1.0001*T62(i);
            continue
        end
        if i==10
           T62(i)=((T63(i)-T62(i)/Rr)+(T_61-T62(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T62(i-1)-T62(i))/Rtheta+(T62(1)-T62(i))/Rtheta+(T52(i)-T62(i))/Rz+(T72(i)-T62(i))/Rz)*(deltat/(density*c*deltav))+1.0001*T62(i);
            continue
        end
        T62(i)=((T63(i)-T62(i)/Rr)+(T_61-T62(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T62(i-1)-T62(i))/Rtheta+(T62(i+1)-T62(i))/Rtheta+(T52(i)-T62(i))/Rz+(T72(i)-T62(i))/Rz)*(deltat/(density*c*deltav))+1.0001*T62(i);
             
    end
    %T61
    l=0;k_conductivity=kc;density=rhoc;c=cpc;
    for i=1:10
        l=l+(T62(i)-T_61)/(2*deltaR)/(deltaR*theta*deltaZ*k_conductivity);    
    end
    T_61=(l+(T_51-T_61)/deltaZ/(pi*k_conductivity*deltaR^2)+(T_71-T_61)/deltaZ/(pi*k_conductivity*deltaR^2))*(deltat/(density*c*deltaZ*pi*deltaR^2))+1.0001*T_61;
    t61(g+1)=T_61;
    %%
    %7)T74
    for i=1:5
        H=h(3);
        rm=3*deltaR;
        k_conductivity=kc;density=rhoc;c=cpc;
        T_infinity=40+273;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);Rh=1/((rm+deltaR)*deltaZ*theta*H);deltav=rm*deltaR*theta*deltaZ;
        if i==1
            T74(i)=((T84(i)-T74(i))/(2*Rz)+(T64(i)-T74(i))/(2*Rz)+(T73(i)-T74(i))/deltaR/((2*deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T_infinity-T74(i))/Rh+(T74(10)-T74(i))/(2*Rtheta)+(T74(i+1)-T74(i)/(2*Rtheta)))*deltat/(density*c*deltav/2)+1.0001*T74(i);
            continue
        end
        T74(i)=((T84(i)-T74(i))/(2*Rz)+(T64(i)-T74(i))/(2*Rz)+(T73(i)-T74(i))/deltaR/((2*deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T_infinity-T74(i))/Rh+(T74(i-1)-T74(i))/(2*Rtheta)+(T74(i+1)-T74(i)/(2*Rtheta)))*deltat/(density*c*deltav/2)+1.0001*T74(i);       
    end
    for i=6:10
        H=h(4);
        rm=3*deltaR;
        k_conductivity=kc;density=rhoc;c=cpc;
        T_infinity=30+273;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);Rh=1/((rm+deltaR)*deltaZ*theta*H);deltav=rm*deltaR*theta*deltaZ;
        if i==10
           T74(i)=((T84(i)-T74(i))/(2*Rz)+(T64(i)-T74(i))/(2*Rz)+(T73(i)-T74(i))/deltaR/((2*deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T_infinity-T74(i))/Rh+(T74(i-1)-T74(i))/(2*Rtheta)+(T74(1)-T74(i)/(2*Rtheta)))*deltat/(density*c*deltav/2)+1.0001*T74(i);
            continue
        end
        T74(i)=((T84(i)-T74(i))/(2*Rz)+(T64(i)-T74(i))/(2*Rz)+(T73(i)-T74(i))/deltaR/((2*deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T_infinity-T74(i))/Rh+(T74(i-1)-T74(i))/(2*Rtheta)+(T74(i+1)-T74(i)/(2*Rtheta)))*deltat/(density*c*deltav/2)+1.0001*T74(i);
    end
    %T73 T72 
    for i=1:10
        rm=2*deltaR;
        k_conductivity=kc;density=rhoc;c=cpc;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);Rh=1/((rm+deltaR)*deltaZ*theta*H);deltav=rm*deltaR*theta*deltaZ;
        if i==1
            T73(i)=((T74(i)-T73(i)/Rr)+(T72(i)-T73(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T73(10)-T73(i))/Rtheta+(T73(i+1)-T73(i))/Rtheta+(T63(i)-T73(i))/Rz+(T83(i)-T73(i))/Rz)*(deltat/(density*c*deltav))+1.0001*T73(i);
            continue
        end
        if i==10
            T73(i)=((T74(i)-T73(i)/Rr)+(T72(i)-T73(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T73(i-1)-T73(i))/Rtheta+(T73(1)-T73(i))/Rtheta+(T63(i)-T73(i))/Rz+(T83(i)-T73(i))/Rz)*(deltat/(density*c*deltav))+1.0001*T73(i);
            continue
        end
        T73(i)=((T74(i)-T73(i)/Rr)+(T72(i)-T73(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T73(i-1)-T73(i))/Rtheta+(T73(i+1)-T73(i))/Rtheta+(T63(i)-T73(i))/Rz+(T83(i)-T73(i))/Rz)*(deltat/(density*c*deltav))+1.0001*T73(i);
                
    end
    
    for i=1:10
        rm=1*deltaR;
        k_conductivity=kc;density=rhoc;c=cpc;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);Rh=1/((rm+deltaR)*deltaZ*theta*H);deltav=rm*deltaR*theta*deltaZ;
        if i==1
            T72(i)=((T73(i)-T72(i)/Rr)+(T_71-T72(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T72(10)-T72(i))/Rtheta+(T72(i+1)-T72(i))/Rtheta+(T62(i)-T72(i))/Rz+(T82(i)-T72(i))/Rz)*(deltat/(density*c*deltav))+1.0001*T72(i);
            continue
        end
        if i==10
           T72(i)=((T73(i)-T72(i)/Rr)+(T_71-T72(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T72(i-1)-T72(i))/Rtheta+(T72(1)-T72(i))/Rtheta+(T62(i)-T72(i))/Rz+(T82(i)-T72(i))/Rz)*(deltat/(density*c*deltav))+1.0001*T72(i);
            continue
        end
        T72(i)=((T73(i)-T72(i)/Rr)+(T_71-T72(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T72(i-1)-T72(i))/Rtheta+(T72(i+1)-T72(i))/Rtheta+(T62(i)-T72(i))/Rz+(T82(i)-T72(i))/Rz)*(deltat/(density*c*deltav))+1.0001*T72(i);
               
    end
    %T71
    l=0;k_conductivity=kc;density=rhoc;c=cpc;
    for i=1:10
        l=l+(T72(i)-T_71)/(2*deltaR)/(deltaR*theta*deltaZ*k_conductivity);    
    end
    T_71=(l+(T_61-T_71)/deltaZ/(pi*k_conductivity*deltaR^2)+(T_81-T_71)/deltaZ/(pi*k_conductivity*deltaR^2))*(deltat/(density*c*deltaZ*pi*deltaR^2))+1.0001*T_71;
    t71(g+1)=T_71;
    %%
    %8)T84
    for i=1:5
        H=h(3);
        rm=3*deltaR;
        k_conductivity=kc;density=rhoc;c=cpc;
        T_infinity=40+273;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);Rh=1/((rm+deltaR)*deltaZ*theta*H);deltav=rm*deltaR*theta*deltaZ;
        if i==1
            T84(i)=((T94(i)-T84(i))/(2*Rz)+(T74(i)-T84(i))/(2*Rz)+(T83(i)-T84(i))/deltaR/((2*deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T_infinity-T84(i))/Rh+(T84(10)-T84(i))/(2*Rtheta)+(T84(i+1)-T84(i)/(2*Rtheta)))*deltat/(density*c*deltav/2)+1.0001*T84(i);
            continue
        end
         T84(i)=((T94(i)-T84(i))/(2*Rz)+(T74(i)-T84(i))/(2*Rz)+(T83(i)-T84(i))/deltaR/((2*deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T_infinity-T84(i))/Rh+(T84(i-1)-T84(i))/(2*Rtheta)+(T84(i+1)-T84(i)/(2*Rtheta)))*deltat/(density*c*deltav/2)+1.0001*T84(i);       
    end
    for i=6:10
        H=h(4);
        rm=3*deltaR;
        k_conductivity=kc;density=rhoc;c=cpc;
        T_infinity=30+273;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);Rh=1/((rm+deltaR)*deltaZ*theta*H);deltav=rm*deltaR*theta*deltaZ;
        if i==10
            T84(i)=((T94(i)-T84(i))/(2*Rz)+(T74(i)-T84(i))/(2*Rz)+(T83(i)-T84(i))/deltaR/((2*deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T_infinity-T84(i))/Rh+(T84(i-1)-T84(i))/(2*Rtheta)+(T84(1)-T84(i)/(2*Rtheta)))*deltat/(density*c*deltav/2)+1.0001*T84(i);
            continue
        end
         T84(i)=((T94(i)-T84(i))/(2*Rz)+(T74(i)-T84(i))/(2*Rz)+(T83(i)-T84(i))/deltaR/((2*deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T_infinity-T84(i))/Rh+(T84(i-1)-T84(i))/(2*Rtheta)+(T84(i+1)-T84(i)/(2*Rtheta)))*deltat/(density*c*deltav/2)+1.0001*T84(i);
    end
    %T83 T82 
    for i=1:10
        rm=2*deltaR;
        k_conductivity=kc;density=rhoc;c=cpc;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);Rh=1/((rm+deltaR)*deltaZ*theta*H);deltav=rm*deltaR*theta*deltaZ;
        if i==1
            T83(i)=((T84(i)-T83(i)/Rr)+(T82(i)-T83(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T83(10)-T83(i))/Rtheta+(T83(i+1)-T83(i))/Rtheta+(T73(i)-T83(i))/Rz+(T93(i)-T83(i))/Rz)*(deltat/(density*c*deltav))+1.0001*T83(i);
            continue
        end
        if i==10
            T83(i)=((T84(i)-T83(i)/Rr)+(T82(i)-T83(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T83(i-1)-T83(i))/Rtheta+(T83(1)-T83(i))/Rtheta+(T73(i)-T83(i))/Rz+(T93(i)-T83(i))/Rz)*(deltat/(density*c*deltav))+1.0001*T83(i);
            continue
        end
        T83(i)=((T84(i)-T83(i)/Rr)+(T82(i)-T83(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T83(i-1)-T83(i))/Rtheta+(T83(i+1)-T83(i))/Rtheta+(T73(i)-T83(i))/Rz+(T93(i)-T83(i))/Rz)*(deltat/(density*c*deltav))+1.0001*T83(i);
                
    end
    
    for i=1:10
        rm=1*deltaR;
        k_conductivity=kc;density=rhoc;c=cpc;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);Rh=1/((rm+deltaR)*deltaZ*theta*H);deltav=rm*deltaR*theta*deltaZ;
        if i==1
            T82(i)=((T83(i)-T82(i)/Rr)+(T_81-T82(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T82(10)-T82(i))/Rtheta+(T82(i+1)-T82(i))/Rtheta+(T72(i)-T82(i))/Rz+(T92(i)-T82(i))/Rz)*(deltat/(density*c*deltav))+1.0001*T82(i);
            continue
        end
        if i==10
           T82(i)=((T83(i)-T82(i)/Rr)+(T_81-T82(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T82(i-1)-T82(i))/Rtheta+(T82(1)-T82(i))/Rtheta+(T72(i)-T82(i))/Rz+(T92(i)-T82(i))/Rz)*(deltat/(density*c*deltav))+1.0001*T82(i);
            continue
        end
        T82(i)=((T83(i)-T82(i)/Rr)+(T_81-T82(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T82(i-1)-T82(i))/Rtheta+(T82(i+1)-T82(i))/Rtheta+(T72(i)-T82(i))/Rz+(T92(i)-T82(i))/Rz)*(deltat/(density*c*deltav))+1.0001*T82(i);
                
    end
    %T81
    l=0;k_conductivity=kc;density=rhoc;c=cpc;
    for i=1:10
        l=l+(T82(i)-T_81)/(2*deltaR)/(deltaR*theta*deltaZ*k_conductivity);    
    end
    T_81=(l+(T_71-T_81)/deltaZ/(pi*k_conductivity*deltaR^2)+(T_91-T_81)/deltaZ/(pi*k_conductivity*deltaR^2))*(deltat/(density*c*deltaZ*pi*deltaR^2))+1.0001*T_81;
    t81(g+1)=T_81;
    %%
    %9)T94
    for i=1:5
        H=h(3);
        rm=3*deltaR;
        k_conductivity=kc;density=rhoc;c=cpc;
        T_infinity=40+273;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);Rh=1/((rm+deltaR)*deltaZ*theta*H);deltav=rm*deltaR*theta*deltaZ;
        if i==1
            T94(i)=((T104(i)-T94(i))/(2*Rz)+(T84(i)-T94(i))/(2*Rz)+(T93(i)-T94(i))/deltaR/((2*deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T_infinity-T94(i))/Rh+(T94(10)-T94(i))/(2*Rtheta)+(T94(i+1)-T94(i)/(2*Rtheta)))*deltat/(density*c*deltav/2)+1.0001*T94(i);
            continue
        end
          T94(i)=((T104(i)-T94(i))/(2*Rz)+(T84(i)-T94(i))/(2*Rz)+(T93(i)-T94(i))/deltaR/((2*deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T_infinity-T94(i))/Rh+(T94(i-1)-T94(i))/(2*Rtheta)+(T94(i+1)-T94(i)/(2*Rtheta)))*deltat/(density*c*deltav/2)+1.0001*T94(i);       
    end
    for i=6:10
        H=h(4);
        rm=3*deltaR;
        k_conductivity=kc;density=rhoc;c=cpc;
        T_infinity=30+273;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);Rh=1/((rm+deltaR)*deltaZ*theta*H);deltav=rm*deltaR*theta*deltaZ;
        if i==10
             T94(i)=((T104(i)-T94(i))/(2*Rz)+(T84(i)-T94(i))/(2*Rz)+(T93(i)-T94(i))/deltaR/((2*deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T_infinity-T94(i))/Rh+(T94(i-1)-T94(i))/(2*Rtheta)+(T94(1)-T94(i)/(2*Rtheta)))*deltat/(density*c*deltav/2)+1.0001*T94(i);
            continue
        end
          T94(i)=((T104(i)-T94(i))/(2*Rz)+(T84(i)-T94(i))/(2*Rz)+(T93(i)-T94(i))/deltaR/((2*deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T_infinity-T94(i))/Rh+(T94(i-1)-T94(i))/(2*Rtheta)+(T94(i+1)-T94(i)/(2*Rtheta)))*deltat/(density*c*deltav/2)+1.0001*T94(i);
    end
    %T93 T92 
    for i=1:10
        rm=2*deltaR;
        k_conductivity=kc;density=rhoc;c=cpc;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);Rh=1/((rm+deltaR)*deltaZ*theta*H);deltav=rm*deltaR*theta*deltaZ;
        if i==1
            T93(i)=((T94(i)-T93(i)/Rr)+(T92(i)-T93(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T93(10)-T93(i))/Rtheta+(T93(i+1)-T93(i))/Rtheta+(T83(i)-T93(i))/Rz+(T103(i)-T93(i))/Rz)*(deltat/(density*c*deltav))+1.0001*T93(i);
            continue
        end
        if i==10
            T93(i)=((T94(i)-T93(i)/Rr)+(T92(i)-T93(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T93(i-1)-T93(i))/Rtheta+(T93(1)-T93(i))/Rtheta+(T83(i)-T93(i))/Rz+(T103(i)-T93(i))/Rz)*(deltat/(density*c*deltav))+1.0001*T93(i);
            continue
        end
        T93(i)=((T94(i)-T93(i)/Rr)+(T92(i)-T93(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T93(i-1)-T93(i))/Rtheta+(T93(i+1)-T93(i))/Rtheta+(T83(i)-T93(i))/Rz+(T103(i)-T93(i))/Rz)*(deltat/(density*c*deltav))+1.0001*T93(i);
              
    end
    
    for i=1:10
        rm=1*deltaR;
        k_conductivity=kc;density=rhoc;c=cpc;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);Rh=1/((rm+deltaR)*deltaZ*theta*H);deltav=rm*deltaR*theta*deltaZ;
        if i==1
            T92(i)=((T93(i)-T92(i)/Rr)+(T_91-T92(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T92(10)-T92(i))/Rtheta+(T92(i+1)-T92(i))/Rtheta+(T82(i)-T92(i))/Rz+(T102(i)-T92(i))/Rz)*(deltat/(density*c*deltav))+1.0001*T92(i);
            continue
        end
        if i==10
           T92(i)=((T93(i)-T92(i)/Rr)+(T_91-T92(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T92(i-1)-T92(i))/Rtheta+(T92(1)-T92(i))/Rtheta+(T82(i)-T92(i))/Rz+(T102(i)-T92(i))/Rz)*(deltat/(density*c*deltav))+1.0001*T92(i);
           continue
        end
        T92(i)=((T93(i)-T92(i)/Rr)+(T_91-T92(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T92(i-1)-T92(i))/Rtheta+(T92(1)-T92(i))/Rtheta+(T82(i)-T92(i))/Rz+(T102(i)-T92(i))/Rz)*(deltat/(density*c*deltav))+1.0001*T92(i);
               
    end
    %T91
    l=0;k_conductivity=kc;density=rhoc;c=cpc;
    for i=1:10
        l=l+(T92(i)-T_91)/(2*deltaR)/(deltaR*theta*deltaZ*k_conductivity);    
    end
    T_91=(l+(T_81-T_91)/deltaZ/(pi*k_conductivity*deltaR^2)+(T_101-T_91)/deltaZ/(pi*k_conductivity*deltaR^2))*(deltat/(density*c*deltaZ*pi*deltaR^2))+1.0001*T_91;
    t91(g+1)=T_91;
    %%
    %10)T104
    for i=1:5
        H=h(3);
        rm=3*deltaR;
        k_conductivity=kc;density=rhoc;c=cpc;
        T_infinity=40+273;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);Rh=1/((rm+deltaR)*deltaZ*theta*H);deltav=rm*deltaR*theta*deltaZ;
        if i==1
            T104(i)=((T114(i)-T104(i))/(2*Rz)+(T94(i)-T104(i))/(2*Rz)+(T103(i)-T104(i))/deltaR/((2*deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T_infinity-T104(i))/Rh+(T104(10)-T104(i))/(2*Rtheta)+(T104(i+1)-T104(i)/(2*Rtheta)))*deltat/(density*c*deltav/2)+1.0001*T104(i);
            continue
        end
          T104(i)=((T114(i)-T104(i))/(2*Rz)+(T94(i)-T104(i))/(2*Rz)+(T103(i)-T104(i))/deltaR/((2*deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T_infinity-T104(i))/Rh+(T104(i-1)-T104(i))/(2*Rtheta)+(T104(i+1)-T104(i)/(2*Rtheta)))*deltat/(density*c*deltav/2)+1.0001*T104(i);       
    end
    for i=6:10
        H=h(4);
        rm=3*deltaR;
        k_conductivity=kc;density=rhoc;c=cpc;
        T_infinity=30+273;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);Rh=1/((rm+deltaR)*deltaZ*theta*H);deltav=rm*deltaR*theta*deltaZ;
        if i==10
             T104(i)=((T114(i)-T104(i))/(2*Rz)+(T94(i)-T104(i))/(2*Rz)+(T103(i)-T104(i))/deltaR/((2*deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T_infinity-T104(i))/Rh+(T104(i-1)-T104(i))/(2*Rtheta)+(T104(1)-T104(i)/(2*Rtheta)))*deltat/(density*c*deltav/2)+1.0001*T104(i);
            continue
        end
          T104(i)=((T114(i)-T104(i))/(2*Rz)+(T94(i)-T104(i))/(2*Rz)+(T103(i)-T104(i))/deltaR/((2*deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T_infinity-T104(i))/Rh+(T104(i-1)-T104(i))/(2*Rtheta)+(T104(i+1)-T104(i)/(2*Rtheta)))*deltat/(density*c*deltav/2)+1.0001*T104(i);
    end
    %T103 T102 
    for i=1:10
        rm=2*deltaR;
        k_conductivity=kc;density=rhoc;c=cpc;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);Rh=1/((rm+deltaR)*deltaZ*theta*H);deltav=rm*deltaR*theta*deltaZ;
        if i==1
            T103(i)=((T104(i)-T103(i)/Rr)+(T102(i)-T103(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T103(10)-T103(i))/Rtheta+(T103(i+1)-T103(i))/Rtheta+(T93(i)-T103(i))/Rz+(T113(i)-T103(i))/Rz)*(deltat/(density*c*deltav))+1.0001*T103(i);
            continue
        end
        if i==10
            T103(i)=((T104(i)-T103(i)/Rr)+(T102(i)-T103(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T103(i-1)-T103(i))/Rtheta+(T103(1)-T103(i))/Rtheta+(T93(i)-T103(i))/Rz+(T113(i)-T103(i))/Rz)*(deltat/(density*c*deltav))+1.0001*T103(i);
            continue
        end
        T103(i)=((T104(i)-T103(i)/Rr)+(T102(i)-T103(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T103(i-1)-T103(i))/Rtheta+(T103(i+1)-T103(i))/Rtheta+(T93(i)-T103(i))/Rz+(T113(i)-T103(i))/Rz)*(deltat/(density*c*deltav))+1.0001*T103(i);
            
    end
    
    for i=1:10
        rm=1*deltaR;
        k_conductivity=kc;density=rhoc;c=cpc;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);Rh=1/((rm+deltaR)*deltaZ*theta*H);deltav=rm*deltaR*theta*deltaZ;
        if i==1
            T102(i)=((T103(i)-T102(i)/Rr)+(T_101-T102(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T102(10)-T102(i))/Rtheta+(T102(i+1)-T102(i))/Rtheta+(T92(i)-T102(i))/Rz+(T112(i)-T102(i))/Rz)*(deltat/(density*c*deltav))+1.0001*T102(i);
            continue
        end
        if i==10
           T102(i)=((T103(i)-T102(i)/Rr)+(T_101-T102(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T102(i-1)-T102(i))/Rtheta+(T102(1)-T102(i))/Rtheta+(T92(i)-T102(i))/Rz+(T112(i)-T102(i))/Rz)*(deltat/(density*c*deltav))+1.0001*T102(i);
            continue
        end
       T102(i)=((T103(i)-T102(i)/Rr)+(T_101-T102(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T102(i-1)-T102(i))/Rtheta+(T102(i+1)-T102(i))/Rtheta+(T92(i)-T102(i))/Rz+(T112(i)-T102(i))/Rz)*(deltat/(density*c*deltav))+1.0001*T102(i);
                   
    end
    %T101
    l=0;k_conductivity=kc;density=rhoc;c=cpc;
    for i=1:10
        l=l+(T102(i)-T_101)/(2*deltaR)/(deltaR*theta*deltaZ*k_conductivity);    
    end
    T_101=(l+(T_91-T_101)/deltaZ/(pi*k_conductivity*deltaR^2)+(T_111-T_101)/deltaZ/(pi*k_conductivity*deltaR^2))*(deltat/(density*c*deltaZ*pi*deltaR^2))+1.0001*T_101;
    t101(g+1)=T_101;
    %%
    %11)T114
    for i=1:5
        H=h(3);
        rm=3*deltaR;
        k_conductivity=kc;density=rhoc;c=cpc;
        T_infinity=40+273;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);Rh=1/((rm+deltaR)*deltaZ*theta*H);deltav=rm*deltaR*theta*deltaZ;
        if i==1
            T114(i)=((T124(i)-T114(i))/(2*Rz)+(T104(i)-T114(i))/(2*Rz)+(T113(i)-T114(i))/deltaR/((2*deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T_infinity-T114(i))/Rh+(T114(10)-T114(i))/(2*Rtheta)+(T114(i+1)-T114(i)/(2*Rtheta)))*deltat/(density*c*deltav/2)+1.0001*T114(i);
            continue
        end
         T114(i)=((T124(i)-T114(i))/(2*Rz)+(T104(i)-T114(i))/(2*Rz)+(T113(i)-T114(i))/deltaR/((2*deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T_infinity-T114(i))/Rh+(T114(i-1)-T114(i))/(2*Rtheta)+(T114(i+1)-T114(i)/(2*Rtheta)))*deltat/(density*c*deltav/2)+1.0001*T114(i);       
    end
    for i=6:10
        H=h(4);
        rm=3*deltaR;
        k_conductivity=kc;density=rhoc;c=cpc;
        T_infinity=30+273;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);Rh=1/((rm+deltaR)*deltaZ*theta*H);deltav=rm*deltaR*theta*deltaZ;
        if i==10
             T114(i)=((T124(i)-T114(i))/(2*Rz)+(T104(i)-T114(i))/(2*Rz)+(T113(i)-T114(i))/deltaR/((2*deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T_infinity-T114(i))/Rh+(T114(i-1)-T114(i))/(2*Rtheta)+(T114(1)-T114(i)/(2*Rtheta)))*deltat/(density*c*deltav/2)+1.0001*T114(i);
            continue
        end
          T114(i)=((T124(i)-T114(i))/(2*Rz)+(T104(i)-T114(i))/(2*Rz)+(T113(i)-T114(i))/deltaR/((2*deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T_infinity-T114(i))/Rh+(T114(i-1)-T114(i))/(2*Rtheta)+(T114(i+1)-T114(i)/(2*Rtheta)))*deltat/(density*c*deltav/2)+1.0001*T114(i);
    end
    %T113 T112 
    for i=1:10
        rm=2*deltaR;
        k_conductivity=kc;density=rhoc;c=cpc;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);Rh=1/((rm+deltaR)*deltaZ*theta*H);deltav=rm*deltaR*theta*deltaZ;
        if i==1
            T113(i)=((T114(i)-T113(i)/Rr)+(T112(i)-T113(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T113(10)-T113(i))/Rtheta+(T113(i+1)-T113(i))/Rtheta+(T103(i)-T113(i))/Rz+(T123(i)-T113(i))/Rz)*(deltat/(density*c*deltav))+1.0001*T113(i);
            continue
        end
        if i==10
            T113(i)=((T114(i)-T113(i)/Rr)+(T112(i)-T113(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T113(i-1)-T113(i))/Rtheta+(T113(1)-T113(i))/Rtheta+(T103(i)-T113(i))/Rz+(T123(i)-T113(i))/Rz)*(deltat/(density*c*deltav))+1.0001*T113(i);
            continue
        end
        T113(i)=((T114(i)-T113(i)/Rr)+(T112(i)-T113(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T113(i-1)-T113(i))/Rtheta+(T113(i+1)-T113(i))/Rtheta+(T103(i)-T113(i))/Rz+(T123(i)-T113(i))/Rz)*(deltat/(density*c*deltav))+1.0001*T113(i);  
    
    end
    
    for i=1:10
        rm=1*deltaR;
        k_conductivity=kc;density=rhoc;c=cpc;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);Rh=1/((rm+deltaR)*deltaZ*theta*H);deltav=rm*deltaR*theta*deltaZ;
        if i==1
            T112(i)=((T113(i)-T112(i)/Rr)+(T_111-T112(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T112(10)-T112(i))/Rtheta+(T112(i+1)-T112(i))/Rtheta+(T102(i)-T112(i))/Rz+(T122(i)-T112(i))/Rz)*(deltat/(density*c*deltav))+1.0001*T112(i);
            continue
        end
        if i==10
           T112(i)=((T113(i)-T112(i)/Rr)+(T_111-T112(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T112(i-1)-T112(i))/Rtheta+(T112(1)-T112(i))/Rtheta+(T102(i)-T112(i))/Rz+(T122(i)-T112(i))/Rz)*(deltat/(density*c*deltav))+1.0001*T112(i);
            continue
        end
       T112(i)=((T113(i)-T112(i)/Rr)+(T_111-T112(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T112(i-1)-T112(i))/Rtheta+(T112(i+1)-T112(i))/Rtheta+(T102(i)-T112(i))/Rz+(T122(i)-T112(i))/Rz)*(deltat/(density*c*deltav))+1.0001*T112(i);
                    
    end
    %T111
    l=0;k_conductivity=kc;density=rhoc;c=cpc;
    for i=1:10
        l=l+(T112(i)-T_111)/(2*deltaR)/(deltaR*theta*deltaZ*k_conductivity);    
    end
    T_111=(l+(T_101-T_111)/deltaZ/(pi*k_conductivity*deltaR^2)+(T_121-T_111)/deltaZ/(pi*k_conductivity*deltaR^2))*(deltat/(density*c*deltaZ*pi*deltaR^2))+1.0001*T_111;
    t111(g+1)=T_111;
    %%
    %12)T124
    for i=1:5
        H=h(3);
        rm=3*deltaR;
        k_conductivity=kc;density=rhoc;c=cpc;
        T_infinity=40+273;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);Rh=1/((rm+deltaR)*deltaZ*theta*H);deltav=rm*deltaR*theta*deltaZ;
        if i==1
            T124(i)=((T134(i)-T124(i))/(2*Rz)+(T114(i)-T124(i))/(2*Rz)+(T123(i)-T124(i))/deltaR/((2*deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T_infinity-T124(i))/Rh+(T124(10)-T124(i))/(2*Rtheta)+(T124(i+1)-T124(i)/(2*Rtheta)))*deltat/(density*c*deltav/2)+1.0001*T124(i);
            continue
        end
         T124(i)=((T134(i)-T124(i))/(2*Rz)+(T114(i)-T124(i))/(2*Rz)+(T123(i)-T124(i))/deltaR/((2*deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T_infinity-T124(i))/Rh+(T124(i-1)-T124(i))/(2*Rtheta)+(T124(i+1)-T124(i)/(2*Rtheta)))*deltat/(density*c*deltav/2)+1.0001*T124(i);      
    end
    for i=6:10
        H=h(4);
        rm=3*deltaR;
        k_conductivity=kc;density=rhoc;c=cpc;
        T_infinity=30+273;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);Rh=1/((rm+deltaR)*deltaZ*theta*H);deltav=rm*deltaR*theta*deltaZ;
        if i==10
             T124(i)=((T134(i)-T124(i))/(2*Rz)+(T114(i)-T124(i))/(2*Rz)+(T123(i)-T124(i))/deltaR/((2*deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T_infinity-T124(i))/Rh+(T124(i-1)-T124(i))/(2*Rtheta)+(T124(1)-T124(i)/(2*Rtheta)))*deltat/(density*c*deltav/2)+1.0001*T124(i);
            continue
        end
          T124(i)=((T134(i)-T124(i))/(2*Rz)+(T114(i)-T124(i))/(2*Rz)+(T123(i)-T124(i))/deltaR/((2*deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T_infinity-T124(i))/Rh+(T124(i-1)-T124(i))/(2*Rtheta)+(T124(i+1)-T124(i)/(2*Rtheta)))*deltat/(density*c*deltav/2)+1.0001*T124(i);
    end
    %T123 T122 
    for i=1:10
        rm=2*deltaR;
        k_conductivity=kc;density=rhoc;c=cpc;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);Rh=1/((rm+deltaR)*deltaZ*theta*H);deltav=rm*deltaR*theta*deltaZ;
        if i==1
            T123(i)=((T124(i)-T123(i)/Rr)+(T122(i)-T123(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T123(10)-T123(i))/Rtheta+(T123(i+1)-T123(i))/Rtheta+(T113(i)-T123(i))/Rz+(T133(i)-T123(i))/Rz)*(deltat/(density*c*deltav))+1.0001*T123(i);
            continue
        end
        if i==10
            T123(i)=((T124(i)-T123(i)/Rr)+(T122(i)-T123(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T123(i-1)-T123(i))/Rtheta+(T123(1)-T123(i))/Rtheta+(T113(i)-T123(i))/Rz+(T133(i)-T123(i))/Rz)*(deltat/(density*c*deltav))+1.0001*T123(i);
            continue
        end
        T123(i)=((T124(i)-T123(i)/Rr)+(T122(i)-T123(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T123(i-1)-T123(i))/Rtheta+(T123(i+1)-T123(i))/Rtheta+(T113(i)-T123(i))/Rz+(T133(i)-T123(i))/Rz)*(deltat/(density*c*deltav))+1.0001*T123(i);
            
    end
    
    for i=1:10
        rm=1*deltaR;
        k_conductivity=kc;density=rhoc;c=cpc;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);Rh=1/((rm+deltaR)*deltaZ*theta*H);deltav=rm*deltaR*theta*deltaZ;
        if i==1
            T122(i)=((T123(i)-T122(i)/Rr)+(T_121-T122(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T122(10)-T122(i))/Rtheta+(T122(i+1)-T122(i))/Rtheta+(T112(i)-T122(i))/Rz+(T132(i)-T122(i))/Rz)*(deltat/(density*c*deltav))+1.0001*T122(i);
            continue
        end
        if i==10
           T122(i)=((T123(i)-T122(i)/Rr)+(T_121-T122(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T122(i-1)-T122(i))/Rtheta+(T122(1)-T122(i))/Rtheta+(T112(i)-T122(i))/Rz+(T132(i)-T122(i))/Rz)*(deltat/(density*c*deltav))+1.0001*T122(i);
            continue
        end
       T122(i)=((T123(i)-T122(i)/Rr)+(T_121-T122(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T122(i-1)-T122(i))/Rtheta+(T122(i+1)-T122(i))/Rtheta+(T112(i)-T122(i))/Rz+(T132(i)-T122(i))/Rz)*(deltat/(density*c*deltav))+1.0001*T122(i);
                      
    end
    %T121
    l=0;k_conductivity=kc;density=rhoc;c=cpc;
    for i=1:10
        l=l+(T122(i)-T_121)/(2*deltaR)/(deltaR*theta*deltaZ*k_conductivity);    
    end
    T_121=(l+(T_111-T_121)/deltaZ/(pi*k_conductivity*deltaR^2)+(T_131-T_121)/deltaZ/(pi*k_conductivity*deltaR^2))*(deltat/(density*c*deltaZ*pi*deltaR^2))+1.0001*T_121;
    t121(g+1)=T_121;
    %%
    %13)T131
    l=0;k_conductivity=kc;density=rhoc;c=cpc;
    for i=1:10
        l=l+(T132(i)-T_131)/(2*deltaR)/(deltaR*theta*deltaZ*k_conductivity);    
    end
    T_131=(l+(T_121-T_131)/deltaZ/(pi*k_conductivity*deltaR^2)+(T_141-T_131)/deltaZ/(pi*k_conductivity*deltaR^2))*(deltat/(density*c*deltaZ*pi*deltaR^2))+T_131;
    t131(g+1)=T_131;
    %T132 T133 
    for i=1:10
        rm=1*deltaR;
        k_conductivity=kc;density=rhoc;c=cpc;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);Rh=1/((rm+deltaR)*deltaZ*theta*H);deltav=rm*deltaR*theta*deltaZ;
        if i==1
            T132(i)=((T133(i)-T132(i)/Rr)+(T_131-T132(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T132(10)-T132(i))/Rtheta+(T132(i+1)-T132(i))/Rtheta+(T122(i)-T132(i))/Rz+(T142(i)-T132(i))/Rz)*(deltat/(density*c*deltav))+1.0001*T132(i);
            continue
        end
        if i==10
            T132(i)=((T133(i)-T132(i)/Rr)+(T_131-T132(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T132(i-1)-T132(i))/Rtheta+(T132(1)-T132(i))/Rtheta+(T122(i)-T132(i))/Rz+(T142(i)-T132(i))/Rz)*(deltat/(density*c*deltav))+1.0001*T132(i);
            continue
        end
        T132(i)=((T133(i)-T132(i)/Rr)+(T_131-T132(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T132(i-1)-T132(i))/Rtheta+(T132(i+1)-T132(i))/Rtheta+(T122(i)-T132(i))/Rz+(T142(i)-T132(i))/Rz)*(deltat/(density*c*deltav))+1.0001*T132(i);
                         
    end
    
    for i=1:10
        rm=2*deltaR;
        k_conductivity=kc;density=rhoc;c=cpc;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);Rh=1/((rm+deltaR)*deltaZ*theta*H);deltav=rm*deltaR*theta*deltaZ;
        if i==1
            T133(i)=((T134(i)-T133(i)/Rr)+(T132(i)-T133(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T133(10)-T133(i))/Rtheta+(T133(i+1)-T133(i))/Rtheta+(T123(i)-T133(i))/Rz+(T143(i)-T133(i))/Rz)*(deltat/(density*c*deltav))+1.0001*T133(i);
            continue
        end
        if i==10
           T133(i)=((T134(i)-T133(i)/Rr)+(T132(i)-T133(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T133(i-1)-T133(i))/Rtheta+(T133(1)-T133(i))/Rtheta+(T123(i)-T133(i))/Rz+(T143(i)-T133(i))/Rz)*(deltat/(density*c*deltav))+1.0001*T133(i);
            continue
        end
        T133(i)=((T134(i)-T133(i)/Rr)+(T132(i)-T133(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T133(i-1)-T133(i))/Rtheta+(T133(i+1)-T133(i))/Rtheta+(T123(i)-T133(i))/Rz+(T143(i)-T133(i))/Rz)*(deltat/(density*c*deltav))+1.0001*T133(i);
            
    end
    %T134
    for i=1:10
        rm=3*deltaR;
        k_conductivity=kc;
        Rr=deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);Rh=1/((rm+deltaR)*deltaZ*theta*H);deltav=rm*deltaR*theta*deltaZ;
        if i==1
            T134(i)=((T135(i)-T134(i))/deltaR/((rm+deltaR/2)*(deltaZ*theta*ks))+(T133(i)-T134(i))/Rr+(T144(i)-T134(i))/Rz+(T144(i)-T134(i))/deltaZ/(rm*theta*deltaR*ks)+(T134(10)-T134(i))/Rtheta+(T134(i+1)-T134(i))/Rtheta)*deltat/((rhos+rhoc)*(cpc+cps)*(deltav)/4)+1.0001*T134(i);
            continue
        end
        if i==10
            T134(i)=((T135(i)-T134(i))/deltaR/((rm+deltaR/2)*(deltaZ*theta*ks))+(T133(i)-T134(i))/Rr+(T144(i)-T134(i))/Rz+(T144(i)-T134(i))/deltaZ/(rm*theta*deltaR*ks)+(T134(i-1)-T134(i))/Rtheta+(T134(1)-T134(i))/Rtheta)*deltat/((rhos+rhoc)*(cpc+cps)*(deltav)/4)+1.0001*T134(i);
            continue
        end
         T134(i)=((T135(i)-T134(i))/deltaR/((rm+deltaR/2)*(deltaZ*theta*ks))+(T133(i)-T134(i))/Rr+(T144(i)-T134(i))/Rz+(T144(i)-T134(i))/deltaZ/(rm*theta*deltaR*ks)+(T134(i-1)-T134(i))/Rtheta+(T134(i+1)-T134(i))/Rtheta)*deltat/((rhos+rhoc)*(cpc+cps)*(deltav)/4)+1.0001*T134(i);
     
    end
    %T135 T136 T137 T138 T139 T1310 T1311
    for i=1:10
        rm=4*deltaR;
        k_conductivity=ks;density=rhos;c=cps;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);Rh=1/((rm+deltaR)*deltaZ*theta*H);deltav=rm*deltaR*theta*deltaZ;
        if i==1
            T135(i)=((T136(i)-T135(i))/Rr+(T134(i)-T135(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+2*(T145(i)-T135(i))/Rz+(T135(10)-T135(i))/Rtheta+(T135(i+1)-T135(i))/Rtheta)*deltat/((density*c*deltav))+1.0001*T135(i);
            continue
        end
        if i==10
            T135(i)=((T136(i)-T135(i))/Rr+(T134(i)-T135(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+2*(T145(i)-T135(i))/Rz+(T135(i-1)-T135(i))/Rtheta+(T135(1)-T135(i))/Rtheta)*deltat/((density*c*deltav))+1.0001*T135(i);
            continue
        end
        T135(i)=((T136(i)-T135(i))/Rr+(T134(i)-T135(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+2*(T145(i)-T135(i))/Rz+(T135(i-1)-T135(i))/Rtheta+(T135(i+1)-T135(i))/Rtheta)*deltat/((density*c*deltav))+1.0001*T135(i);
      
    end
    for i=1:10
        rm=5*deltaR;
        k_conductivity=ks;density=rhos;c=cps;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);Rh=1/((rm+deltaR)*deltaZ*theta*H);deltav=rm*deltaR*theta*deltaZ;
        if i==1
            T136(i)=((T_137(i)-T136(i))/Rr+(T135(i)-T136(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+2*(T146(i)-T136(i))/Rz+(T136(10)-T136(i))/Rtheta+(T136(i+1)-T136(i))/Rtheta)*deltat/((density*c*deltav))+1.0001*T136(i);
            continue
        end
        if i==10
            T136(i)=((T_137(i)-T136(i))/Rr+(T135(i)-T136(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+2*(T146(i)-T136(i))/Rz+(T136(i-1)-T136(i))/Rtheta+(T136(1)-T136(i))/Rtheta)*deltat/((density*c*deltav))+1.0001*T136(i);
            continue
        end
        T136(i)=((T_137(i)-T136(i))/Rr+(T135(i)-T136(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+2*(T146(i)-T136(i))/Rz+(T136(i-1)-T136(i))/Rtheta+(T136(i+1)-T136(i))/Rtheta)*deltat/((density*c*deltav))+1.0001*T136(i);
           
    end
    for i=1:10
        rm=6*deltaR;
        k_conductivity=ks;density=rhos;c=cps;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);Rh=1/((rm+deltaR)*deltaZ*theta*H);deltav=rm*deltaR*theta*deltaZ;
        if i==1
            T_137(i)=((T138(i)-T_137(i))/Rr+(T136(i)-T_137(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+2*(T_147(i)-T_137(i))/Rz+(T_137(10)-T_137(i))/Rtheta+(T_137(i+1)-T_137(i))/Rtheta)*deltat/((density*c*deltav))+1.0001*T_137(i);
            continue
        end
        if i==10
            T_137(i)=((T138(i)-T_137(i))/Rr+(T136(i)-T_137(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+2*(T_147(i)-T_137(i))/Rz+(T_137(i-1)-T_137(i))/Rtheta+(T_137(1)-T_137(i))/Rtheta)*deltat/((density*c*deltav))+1.0001*T_137(i);
            continue
        end
        T_137(i)=((T138(i)-T_137(i))/Rr+(T136(i)-T_137(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+2*(T_147(i)-T_137(i))/Rz+(T_137(i-1)-T_137(i))/Rtheta+(T_137(i+1)-T_137(i))/Rtheta)*deltat/((density*c*deltav))+1.0001*T_137(i);
            
    end
    for i=1:10
        rm=7*deltaR;
        k_conductivity=ks;density=rhos;c=cps;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);Rh=1/((rm+deltaR)*deltaZ*theta*H);deltav=rm*deltaR*theta*deltaZ;
        if i==1
            T138(i)=((T139(i)-T138(i))/Rr+(T_137(i)-T138(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+2*(T148(i)-T138(i))/Rz+(T138(10)-T138(i))/Rtheta+(T138(i+1)-T138(i))/Rtheta)*deltat/((density*c*deltav))+1.0001*T138(i);
            continue
        end
        if i==10
            T138(i)=((T139(i)-T138(i))/Rr+(T_137(i)-T138(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+2*(T148(i)-T138(i))/Rz+(T138(i-1)-T138(i))/Rtheta+(T138(1)-T138(i))/Rtheta)*deltat/((density*c*deltav))+1.0001*T138(i);
            continue
        end
        T138(i)=((T139(i)-T138(i))/Rr+(T_137(i)-T138(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+2*(T148(i)-T138(i))/Rz+(T138(i-1)-T138(i))/Rtheta+(T138(i+1)-T138(i))/Rtheta)*deltat/((density*c*deltav))+1.0001*T138(i);
    end
    t138(g+1)=T138(3);
    for i=1:10
        rm=8*deltaR;
        k_conductivity=ks;density=rhos;c=cps;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);Rh=1/((rm+deltaR)*deltaZ*theta*H);deltav=rm*deltaR*theta*deltaZ;
        if i==1
            T139(i)=((T1310(i)-T139(i))/Rr+(T138(i)-T139(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+2*(T149(i)-T139(i))/Rz+(T139(10)-T139(i))/Rtheta+(T139(i+1)-T139(i))/Rtheta)*deltat/((density*c*deltav))+1.0001*T139(i);
            continue
        end
        if i==10
            T139(i)=((T1310(i)-T139(i))/Rr+(T138(i)-T139(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+2*(T149(i)-T139(i))/Rz+(T139(i-1)-T139(i))/Rtheta+(T139(1)-T139(i))/Rtheta)*deltat/((density*c*deltav))+1.0001*T139(i);
            continue
        end
         T139(i)=((T1310(i)-T139(i))/Rr+(T138(i)-T139(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+2*(T149(i)-T139(i))/Rz+(T139(i-1)-T139(i))/Rtheta+(T139(i+1)-T139(i))/Rtheta)*deltat/((density*c*deltav))+1.0001*T139(i);
            
    end
    
    for i=1:10
        rm=9*deltaR;
        k_conductivity=ks;density=rhos;c=cps;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);Rh=1/((rm+deltaR)*deltaZ*theta*H);deltav=rm*deltaR*theta*deltaZ;
        if i==1
            T1310(i)=((T1311(i)-T1310(i))/Rr+(T139(i)-T1310(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+2*(T1410(i)-T1310(i))/Rz+(T1310(10)-T1310(i))/Rtheta+(T1310(i+1)-T1310(i))/Rtheta)*deltat/((density*c*deltav))+1.0001*T1310(i);
            continue
        end
        if i==10
            T1310(i)=((T1311(i)-T1310(i))/Rr+(T139(i)-T1310(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+2*(T1410(i)-T1310(i))/Rz+(T1310(i-1)-T1310(i))/Rtheta+(T1310(1)-T1310(i))/Rtheta)*deltat/((density*c*deltav))+1.0001*T1310(i);
            continue
        end
         T1310(i)=((T1311(i)-T1310(i))/Rr+(T139(i)-T1310(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+2*(T1410(i)-T1310(i))/Rz+(T1310(i-1)-T1310(i))/Rtheta+(T1310(i+1)-T1310(i))/Rtheta)*deltat/((density*c*deltav))+1.0001*T1310(i);
             
    end
    
    for i=1:10
        rm=10*deltaR;
        k_conductivity=ks;density=rhos;c=cps;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);Rh=1/((rm+deltaR)*deltaZ*theta*H);deltav=rm*deltaR*theta*deltaZ;
        if i==1
            T1311(i)=((T1310(i)-T1311(i))/Rr+(T1310(i)-T1311(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+2*(T1411(i)-T1311(i))/Rz+(T1311(10)-T1311(i))/Rtheta+(T1311(i+1)-T1311(i))/Rtheta)*deltat/((density*c*deltav))+1.0001*T1311(i);
            continue
        end
        if i==10
            T1311(i)=((T1310(i)-T1311(i))/Rr+(T1310(i)-T1311(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+2*(T1411(i)-T1311(i))/Rz+(T1311(i-1)-T1311(i))/Rtheta+(T1311(1)-T1311(i))/Rtheta)*deltat/((density*c*deltav))+1.0001*T1311(i);
            continue
        end
         T1311(i)=((T1310(i)-T1311(i))/Rr+(T1310(i)-T1311(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+2*(T1411(i)-T1311(i))/Rz+(T1311(i-1)-T1311(i))/Rtheta+(T1311(i+1)-T1311(i))/Rtheta)*deltat/((density*c*deltav))+1.0001*T1311(i);
            
    end
    %%
    %14)T141
    l=0;k_conductivity=kc;density=rhoc;c=cpc;
    for i=1:10
        l=l+(T142(i)-T_141)/(2*deltaR)/(deltaR*theta*deltaZ*k_conductivity);    
    end
    T_141=(l+(T_131-T_141)/deltaZ/(pi*k_conductivity*deltaR^2)+(T_151-T_141)/deltaZ/(pi*k_conductivity*deltaR^2))*(deltat/(density*c*deltaZ*pi*deltaR^2))+1.0001*T_141;
    t141(g+1)=T_141;
    %T142 T143 
    for i=1:10
        rm=1*deltaR;
        k_conductivity=kc;density=rhoc;c=cpc;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);Rh=1/((rm+deltaR)*deltaZ*theta*H);deltav=rm*deltaR*theta*deltaZ;
        if i==1
            T142(i)=((T143(i)-T142(i)/Rr)+(T_141-T142(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T142(10)-T142(i))/Rtheta+(T142(i+1)-T142(i))/Rtheta+(T132(i)-T142(i))/Rz+(T152(i)-T142(i))/Rz)*(deltat/(density*c*deltav))+1.0001*T142(i);
            continue
        end
        if i==10
            T142(i)=((T143(i)-T142(i)/Rr)+(T_141-T142(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T142(i-1)-T142(i))/Rtheta+(T142(1)-T142(i))/Rtheta+(T132(i)-T142(i))/Rz+(T152(i)-T142(i))/Rz)*(deltat/(density*c*deltav))+1.0001*T142(i);
            continue
        end
        T142(i)=((T143(i)-T142(i)/Rr)+(T_141-T142(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T142(i-1)-T142(i))/Rtheta+(T142(i+1)-T142(i))/Rtheta+(T132(i)-T142(i))/Rz+(T152(i)-T142(i))/Rz)*(deltat/(density*c*deltav))+1.0001*T142(i);
                         
    end
    
    for i=1:10
        rm=2*deltaR;
        k_conductivity=kc;density=rhoc;c=cpc;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);Rh=1/((rm+deltaR)*deltaZ*theta*H);deltav=rm*deltaR*theta*deltaZ;
        if i==1
            T143(i)=((T144(i)-T143(i)/Rr)+(T142(i)-T143(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T143(10)-T143(i))/Rtheta+(T143(i+1)-T143(i))/Rtheta+(T133(i)-T143(i))/Rz+(T153(i)-T143(i))/Rz)*(deltat/(density*c*deltav))+1.0001*T143(i);
            continue
        end
        if i==10
           T143(i)=((T144(i)-T143(i)/Rr)+(T142(i)-T143(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T143(i-1)-T143(i))/Rtheta+(T143(1)-T143(i))/Rtheta+(T133(i)-T143(i))/Rz+(T153(i)-T143(i))/Rz)*(deltat/(density*c*deltav))+1.0001*T143(i);
            continue
        end
        T143(i)=((T144(i)-T143(i)/Rr)+(T142(i)-T143(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T143(i-1)-T143(i))/Rtheta+(T143(i+1)-T143(i))/Rtheta+(T133(i)-T143(i))/Rz+(T153(i)-T143(i))/Rz)*(deltat/(density*c*deltav))+1.0001*T143(i);
         
    end
    %T144
    for i=1:10
        rm=3*deltaR;
        k_conductivity=kc;
        Rr=deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);Rh=1/((rm+deltaR)*deltaZ*theta*H);deltav=rm*deltaR*theta*deltaZ;
        if i==1
           T144(i)=((T145(i)-T144(i))/deltaR/((rm+deltaR/2)*(deltaZ*theta*ks))+(T143(i)-T144(i))/Rr+(T134(i)-T144(i))/Rz+(T154(i)-T144(i))/Rz+(T144(10)-T144(i))/Rtheta+(T144(i+1)-T144(i))/Rtheta)*deltat/((rhos+rhoc)*(cpc+cps)*(deltav)/4)+1.0001*T144(i);
           continue
        end
        if i==10
            T144(i)=((T145(i)-T144(i))/deltaR/((rm+deltaR/2)*(deltaZ*theta*ks))+(T143(i)-T144(i))/Rr+(T134(i)-T144(i))/Rz+(T154(i)-T144(i))/Rz+(T144(i-1)-T144(i))/Rtheta+(T144(1)-T144(i))/Rtheta)*deltat/((rhos+rhoc)*(cpc+cps)*(deltav)/4)+1.0001*T144(i);
           continue
        end
        T144(i)=((T145(i)-T144(i))/deltaR/((rm+deltaR/2)*(deltaZ*theta*ks))+(T143(i)-T144(i))/Rr+(T134(i)-T144(i))/Rz+(T154(i)-T144(i))/Rz+(T144(i-1)-T144(i))/Rtheta+(T144(i+1)-T144(i))/Rtheta)*deltat/((rhos+rhoc)*(cpc+cps)*(deltav)/4)+1.0001*T144(i);
         
    end
    %T145 T146 T147 T148 T149 T1410 T1411
    for i=1:10
        rm=4*deltaR;
        k_conductivity=ks;density=rhos;c=cps;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);Rh=1/((rm+deltaR)*deltaZ*theta*H);deltav=rm*deltaR*theta*deltaZ;
        if i==1
            T145(i)=((T146(i)-T145(i))/Rr+(T144(i)-T145(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T155(i)-T145(i))/Rz+(T135(i)-T145(i))/Rz+(T145(10)-T145(i))/Rtheta+(T145(i+1)-T145(i))/Rtheta)*deltat/((density*c*deltav))+1.0001*T145(i);
            continue
        end
        if i==10
             T145(i)=((T146(i)-T145(i))/Rr+(T144(i)-T145(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T155(i)-T145(i))/Rz+(T135(i)-T145(i))/Rz+(T145(i-1)-T145(i))/Rtheta+(T145(1)-T145(i))/Rtheta)*deltat/((density*c*deltav))+1.0001*T145(i);
            continue
        end
         T145(i)=((T146(i)-T145(i))/Rr+(T144(i)-T145(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T155(i)-T145(i))/Rz+(T135(i)-T145(i))/Rz+(T145(i-1)-T145(i))/Rtheta+(T145(i+1)-T145(i))/Rtheta)*deltat/((density*c*deltav))+1.0001*T145(i);
         
    end
    for i=1:10
        rm=5*deltaR;
        k_conductivity=ks;density=rhos;c=cps;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);Rh=1/((rm+deltaR)*deltaZ*theta*H);deltav=rm*deltaR*theta*deltaZ;
        if i==1
            T146(i)=((T_147(i)-T146(i))/Rr+(T145(i)-T146(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T156(i)-T146(i))/Rz+(T136(i)-T146(i))/Rz+(T146(10)-T146(i))/Rtheta+(T146(i+1)-T146(i))/Rtheta)*deltat/((density*c*deltav))+1.0001*T146(i);
            continue
        end
        if i==10
           T146(i)=((T_147(i)-T146(i))/Rr+(T145(i)-T146(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T156(i)-T146(i))/Rz+(T136(i)-T146(i))/Rz+(T146(i-1)-T146(i))/Rtheta+(T146(1)-T146(i))/Rtheta)*deltat/((density*c*deltav))+1.0001*T146(i);
            continue
        end
        T146(i)=((T_147(i)-T146(i))/Rr+(T145(i)-T146(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T156(i)-T146(i))/Rz+(T136(i)-T146(i))/Rz+(T146(i-1)-T146(i))/Rtheta+(T146(i+1)-T146(i))/Rtheta)*deltat/((density*c*deltav))+1.0001*T146(i);
           
    end
    for i=1:10
        rm=6*deltaR;
        k_conductivity=ks;density=rhos;c=cps;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);Rh=1/((rm+deltaR)*deltaZ*theta*H);deltav=rm*deltaR*theta*deltaZ;
        if i==1
            T_147(i)=((T148(i)-T_147(i))/Rr+(T146(i)-T_147(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T_157(i)-T_147(i))/Rz+(T_137(i)-T_147(i))/Rz+(T_147(10)-T_147(i))/Rtheta+(T_147(i+1)-T_147(i))/Rtheta)*deltat/((density*c*deltav))+1.0001*T_147(i);
            continue
        end
        if i==10
            T_147(i)=((T148(i)-T_147(i))/Rr+(T146(i)-T_147(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T_157(i)-T_147(i))/Rz+(T_137(i)-T_147(i))/Rz+(T_147(i-1)-T_147(i))/Rtheta+(T_147(1)-T_147(i))/Rtheta)*deltat/((density*c*deltav))+1.0001*T_147(i);
            continue
        end
        T_147(i)=((T148(i)-T_147(i))/Rr+(T146(i)-T_147(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T_157(i)-T_147(i))/Rz+(T_137(i)-T_147(i))/Rz+(T_147(i-1)-T_147(i))/Rtheta+(T_147(i+1)-T_147(i))/Rtheta)*deltat/((density*c*deltav))+1.0001*T_147(i);
            
    end
    for i=1:10
        rm=7*deltaR;
        k_conductivity=ks;density=rhos;c=cps;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);Rh=1/((rm+deltaR)*deltaZ*theta*H);deltav=rm*deltaR*theta*deltaZ;
        if i==1
            T148(i)=((T149(i)-T148(i))/Rr+(T_147(i)-T148(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T158(i)-T148(i))/Rz+(T138(i)-T148(i))/Rz+(T148(10)-T148(i))/Rtheta+(T148(i+1)-T148(i))/Rtheta)*deltat/((density*c*deltav))+1.0001*T148(i);
            continue
        end
        if i==10
             T148(i)=((T149(i)-T148(i))/Rr+(T_147(i)-T148(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T158(i)-T148(i))/Rz+(T138(i)-T148(i))/Rz+(T148(i-1)-T148(i))/Rtheta+(T148(1)-T148(i))/Rtheta)*deltat/((density*c*deltav))+1.0001*T148(i);
            continue
        end
         T148(i)=((T149(i)-T148(i))/Rr+(T_147(i)-T148(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T158(i)-T148(i))/Rz+(T138(i)-T148(i))/Rz+(T148(i-1)-T148(i))/Rtheta+(T148(i+1)-T148(i))/Rtheta)*deltat/((density*c*deltav))+1.0001*T148(i);
           
    end
    for i=1:10
        rm=8*deltaR;
        k_conductivity=ks;density=rhos;c=cps;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);Rh=1/((rm+deltaR)*deltaZ*theta*H);deltav=rm*deltaR*theta*deltaZ;
        if i==1
             T149(i)=((T1410(i)-T149(i))/Rr+(T148(i)-T149(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T159(i)-T149(i))/Rz+(T139(i)-T149(i))/Rz+(T149(10)-T149(i))/Rtheta+(T149(i+1)-T149(i))/Rtheta)*deltat/((density*c*deltav))+1.0001*T149(i);
             continue
        end
        if i==10
            T149(i)=((T1410(i)-T149(i))/Rr+(T148(i)-T149(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T159(i)-T149(i))/Rz+(T139(i)-T149(i))/Rz+(T149(i-1)-T149(i))/Rtheta+(T149(1)-T149(i))/Rtheta)*deltat/((density*c*deltav))+1.0001*T149(i);
            continue
        end
         T149(i)=((T1410(i)-T149(i))/Rr+(T148(i)-T149(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T159(i)-T149(i))/Rz+(T139(i)-T149(i))/Rz+(T149(i-1)-T149(i))/Rtheta+(T149(i+1)-T149(i))/Rtheta)*deltat/((density*c*deltav))+1.0001*T149(i);
           
    end
    
    for i=1:10
        rm=9*deltaR;
        k_conductivity=ks;density=rhos;c=cps;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);Rh=1/((rm+deltaR)*deltaZ*theta*H);deltav=rm*deltaR*theta*deltaZ;
        if i==1
            T1410(i)=((T1411(i)-T1410(i))/Rr+(T149(i)-T1410(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T1510(i)-T1410(i))/Rz+(T1310(i)-T1410(i))/Rz+(T1410(10)-T1410(i))/Rtheta+(T1410(i+1)-T1410(i))/Rtheta)*deltat/((density*c*deltav))+1.0001*T1410(i);
            continue
        end
        if i==10
             T1410(i)=((T1411(i)-T1410(i))/Rr+(T149(i)-T1410(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T1510(i)-T1410(i))/Rz+(T1310(i)-T1410(i))/Rz+(T1410(i-1)-T1410(i))/Rtheta+(T1410(1)-T1410(i))/Rtheta)*deltat/((density*c*deltav))+1.0001*T1410(i);
            continue
        end
          T1410(i)=((T1411(i)-T1410(i))/Rr+(T149(i)-T1410(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T1510(i)-T1410(i))/Rz+(T1310(i)-T1410(i))/Rz+(T1410(i-1)-T1410(i))/Rtheta+(T1410(1)-T1410(i))/Rtheta)*deltat/((density*c*deltav))+1.0001*T1410(i);
           
    end
    
    for i=1:10
        rm=10*deltaR;
        k_conductivity=ks;density=rhos;c=cps;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);Rh=1/((rm+deltaR)*deltaZ*theta*H);deltav=rm*deltaR*theta*deltaZ;
        if i==1
            T1411(i)=((T1410(i)-T1411(i))/Rr+(T1410(i)-T1411(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T1511(i)-T1411(i))/Rz+(T1311(i)-T1411(i))/Rz+(T1411(10)-T1411(i))/Rtheta+(T1411(i+1)-T1411(i))/Rtheta)*deltat/((density*c*deltav))+1.0001*T1411(i);
            continue
        end
        if i==10
            T1411(i)=((T1410(i)-T1411(i))/Rr+(T1410(i)-T1411(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T1511(i)-T1411(i))/Rz+(T1311(i)-T1411(i))/Rz+(T1411(i-1)-T1411(i))/Rtheta+(T1411(1)-T1411(i))/Rtheta)*deltat/((density*c*deltav))+1.0001*T1411(i);
            continue
        end
         T1411(i)=((T1410(i)-T1411(i))/Rr+(T1410(i)-T1411(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T1511(i)-T1411(i))/Rz+(T1311(i)-T1411(i))/Rz+(T1411(i-1)-T1411(i))/Rtheta+(T1411(i+1)-T1411(i))/Rtheta)*deltat/((density*c*deltav))+1.0001*T1411(i);
            
    end
    %%
    %15)T151
    l=0;k_conductivity=kc;density=rhoc;c=cpc;
    for i=1:10
        l=l+(T152(i)-T_151)/(2*deltaR)/(deltaR*theta*deltaZ*k_conductivity);    
    end
    T_151=(l+(T_141-T_151)/deltaZ/(pi*k_conductivity*deltaR^2)+(T_161-T_151)/deltaZ/(pi*ks*deltaR^2))*(deltat/(density*c*deltaZ*pi*deltaR^2))+1.0001*T_151;
    t151(g+1)=T_151;
    %T152 T153 
    for i=1:10
        rm=1*deltaR;
        k_conductivity=kc;density=rhoc;c=cpc;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);Rh=1/((rm+deltaR)*deltaZ*theta*H);deltav=rm*deltaR*theta*deltaZ;
        if i==1
            T152(i)=((T153(i)-T152(i)/Rr)+(T_151-T152(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T152(10)-T152(i))/Rtheta+(T152(i+1)-T152(i))/Rtheta+(T142(i)-T152(i))/Rz+(T162(i)-T152(i))/deltaZ/(rm*theta*deltaR*ks))*(deltat/(density*c*deltav))+1.0001*T152(i);
            continue
        end
        if i==10
             T152(i)=((T153(i)-T152(i)/Rr)+(T_151-T152(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T152(i-1)-T152(i))/Rtheta+(T152(1)-T152(i))/Rtheta+(T142(i)-T152(i))/Rz+(T162(i)-T152(i))/deltaZ/(rm*theta*deltaR*ks))*(deltat/(density*c*deltav))+1.0001*T152(i);
            continue
        end
         T152(i)=((T153(i)-T152(i)/Rr)+(T_151-T152(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T152(i-1)-T152(i))/Rtheta+(T152(i+1)-T152(i))/Rtheta+(T142(i)-T152(i))/Rz+(T162(i)-T152(i))/deltaZ/(rm*theta*deltaR*ks))*(deltat/(density*c*deltav))+1.0001*T152(i);
                          
    end
    
    for i=1:10
        rm=2*deltaR;
        k_conductivity=kc;density=rhoc;c=cpc;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);Rh=1/((rm+deltaR)*deltaZ*theta*H);deltav=rm*deltaR*theta*deltaZ;
        if i==1
            T153(i)=((T154(i)-T153(i)/Rr)+(T152(i)-T153(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T153(10)-T153(i))/Rtheta+(T153(i+1)-T153(i))/Rtheta+(T143(i)-T153(i))/Rz+(T163(i)-T153(i))/deltaZ/(rm*theta*deltaR*ks))*(deltat/(density*c*deltav))+1.0001*T153(i);
            continue
        end
        if i==10
          T153(i)=((T154(i)-T153(i)/Rr)+(T152(i)-T153(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T153(i-1)-T153(i))/Rtheta+(T153(1)-T153(i))/Rtheta+(T143(i)-T153(i))/Rz+(T163(i)-T153(i))/deltaZ/(rm*theta*deltaR*ks))*(deltat/(density*c*deltav))+1.0001*T153(i);
          continue
        end
        T153(i)=((T154(i)-T153(i)/Rr)+(T152(i)-T153(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T153(i-1)-T153(i))/Rtheta+(T153(i+1)-T153(i))/Rtheta+(T143(i)-T153(i))/Rz+(T163(i)-T153(i))/deltaZ/(rm*theta*deltaR*ks))*(deltat/(density*c*deltav))+1.0001*T153(i);
          
    end
    %T154
    for i=1:10
        rm=3*deltaR;
        k_conductivity=kc;
        Rr=deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);Rh=1/((rm+deltaR)*deltaZ*theta*H);deltav=rm*deltaR*theta*deltaZ;
        if i==1
           T154(i)=((T155(i)-T154(i))/deltaR/((rm+deltaR/2)*(deltaZ*theta*ks))+(T153(i)-T154(i))/Rr+(T144(i)-T154(i))/Rz+(T164(i)-T154(i))/deltaZ/(rm*theta*deltaR*ks)+(T154(10)-T154(i))/Rtheta+(T154(i+1)-T154(i))/Rtheta)*deltat/((rhos+rhoc)*(cpc+cps)*(deltav)/4)+1.0001*T154(i);
           continue
        end
        if i==10
            T154(i)=((T155(i)-T154(i))/deltaR/((rm+deltaR/2)*(deltaZ*theta*ks))+(T153(i)-T154(i))/Rr+(T144(i)-T154(i))/Rz+(T164(i)-T154(i))/deltaZ/(rm*theta*deltaR*ks)+(T154(i-1)-T154(i))/Rtheta+(T154(1)-T154(i))/Rtheta)*deltat/((rhos+rhoc)*(cpc+cps)*(deltav)/4)+1.0001*T154(i);
           continue
        end
        T154(i)=((T155(i)-T154(i))/deltaR/((rm+deltaR/2)*(deltaZ*theta*ks))+(T153(i)-T154(i))/Rr+(T144(i)-T154(i))/Rz+(T164(i)-T154(i))/deltaZ/(rm*theta*deltaR*ks)+(T154(i-1)-T154(i))/Rtheta+(T154(i+1)-T154(i))/Rtheta)*deltat/((rhos+rhoc)*(cpc+cps)*(deltav)/4)+1.0001*T154(i);
           
    end
    %T155 T156 T157 T158 T159 T1510 T1511
    for i=1:10
        rm=4*deltaR;
        k_conductivity=ks;density=rhos;c=cps;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);Rh=1/((rm+deltaR)*deltaZ*theta*H);deltav=rm*deltaR*theta*deltaZ;
        if i==1
            T155(i)=((T156(i)-T155(i))/Rr+(T154(i)-T155(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T165(i)-T155(i))/Rz+(T145(i)-T155(i))/Rz+(T155(10)-T155(i))/Rtheta+(T155(i+1)-T155(i))/Rtheta)*deltat/((density*c*deltav))+1.0001*T155(i);
            continue
        end
        if i==10
            T155(i)=((T156(i)-T155(i))/Rr+(T154(i)-T155(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T165(i)-T155(i))/Rz+(T145(i)-T155(i))/Rz+(T155(i-1)-T155(i))/Rtheta+(T155(1)-T155(i))/Rtheta)*deltat/((density*c*deltav))+1.0001*T155(i);
            continue
        end
         T155(i)=((T156(i)-T155(i))/Rr+(T154(i)-T155(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T165(i)-T155(i))/Rz+(T145(i)-T155(i))/Rz+(T155(i-1)-T155(i))/Rtheta+(T155(i+1)-T155(i))/Rtheta)*deltat/((density*c*deltav))+1.0001*T155(i);
          
    end
    for i=1:10
        rm=5*deltaR;
        k_conductivity=ks;density=rhos;c=cps;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);Rh=1/((rm+deltaR)*deltaZ*theta*H);deltav=rm*deltaR*theta*deltaZ;
        if i==1
            T156(i)=((T_157(i)-T156(i))/Rr+(T155(i)-T156(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T166(i)-T156(i))/Rz+(T146(i)-T156(i))/Rz+(T156(10)-T156(i))/Rtheta+(T156(i+1)-T156(i))/Rtheta)*deltat/((density*c*deltav))+1.0001*T156(i);
            continue
        end
        if i==10
           T156(i)=((T_157(i)-T156(i))/Rr+(T155(i)-T156(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T166(i)-T156(i))/Rz+(T146(i)-T156(i))/Rz+(T156(i-1)-T156(i))/Rtheta+(T156(1)-T156(i))/Rtheta)*deltat/((density*c*deltav))+1.0001*T156(i);
            continue
        end
        T156(i)=((T_157(i)-T156(i))/Rr+(T155(i)-T156(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T166(i)-T156(i))/Rz+(T146(i)-T156(i))/Rz+(T156(i-1)-T156(i))/Rtheta+(T156(i+1)-T156(i))/Rtheta)*deltat/((density*c*deltav))+1.0001*T156(i);
            
    end
    for i=1:10
        rm=6*deltaR;
        k_conductivity=ks;density=rhos;c=cps;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);Rh=1/((rm+deltaR)*deltaZ*theta*H);deltav=rm*deltaR*theta*deltaZ;
        if i==1
            T_157(i)=((T158(i)-T_157(i))/Rr+(T156(i)-T_157(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T_167(i)-T_157(i))/Rz+(T_147(i)-T_157(i))/Rz+(T_157(10)-T_157(i))/Rtheta+(T_157(i+1)-T_157(i))/Rtheta)*deltat/((density*c*deltav))+1.0001*T_157(i);
            continue
        end
        if i==10
            T_157(i)=((T158(i)-T_157(i))/Rr+(T156(i)-T_157(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T_167(i)-T_157(i))/Rz+(T_147(i)-T_157(i))/Rz+(T_157(i-1)-T_157(i))/Rtheta+(T_157(i)-T_157(i))/Rtheta)*deltat/((density*c*deltav))+1.0001*T_157(i);
            continue
        end
        T_157(i)=((T158(i)-T_157(i))/Rr+(T156(i)-T_157(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T_167(i)-T_157(i))/Rz+(T_147(i)-T_157(i))/Rz+(T_157(i-1)-T_157(i))/Rtheta+(T_157(i+1)-T_157(i))/Rtheta)*deltat/((density*c*deltav))+1.0001*T_157(i);
             
    end
    for i=1:10
        rm=7*deltaR;
        k_conductivity=ks;density=rhos;c=cps;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);Rh=1/((rm+deltaR)*deltaZ*theta*H);deltav=rm*deltaR*theta*deltaZ;
        if i==1
            T158(i)=((T159(i)-T158(i))/Rr+(T_157(i)-T158(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T168(i)-T158(i))/Rz+(T148(i)-T158(i))/Rz+(T158(10)-T158(i))/Rtheta+(T158(i+1)-T158(i))/Rtheta)*deltat/((density*c*deltav))+1.0001*T158(i);
            continue
        end
        if i==10
             T158(i)=((T159(i)-T158(i))/Rr+(T_157(i)-T158(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T168(i)-T158(i))/Rz+(T148(i)-T158(i))/Rz+(T158(i-1)-T158(i))/Rtheta+(T158(1)-T158(i))/Rtheta)*deltat/((density*c*deltav))+1.0001*T158(i);
            continue
        end
         T158(i)=((T159(i)-T158(i))/Rr+(T_157(i)-T158(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T168(i)-T158(i))/Rz+(T148(i)-T158(i))/Rz+(T158(i-1)-T158(i))/Rtheta+(T158(i+1)-T158(i))/Rtheta)*deltat/((density*c*deltav))+1.0001*T158(i);
           
    end
    for i=1:10
        rm=8*deltaR;
        k_conductivity=ks;density=rhos;c=cps;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);Rh=1/((rm+deltaR)*deltaZ*theta*H);deltav=rm*deltaR*theta*deltaZ;
        if i==1
             T159(i)=((T1510(i)-T159(i))/Rr+(T158(i)-T159(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T169(i)-T159(i))/Rz+(T149(i)-T159(i))/Rz+(T159(10)-T159(i))/Rtheta+(T159(i+1)-T159(i))/Rtheta)*deltat/((density*c*deltav))+1.0001*T159(i);
             continue
        end
        if i==10
             T159(i)=((T1510(i)-T159(i))/Rr+(T158(i)-T159(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T169(i)-T159(i))/Rz+(T149(i)-T159(i))/Rz+(T159(i-1)-T159(i))/Rtheta+(T159(1)-T159(i))/Rtheta)*deltat/((density*c*deltav))+1.0001*T159(i);
             continue
        end
          T159(i)=((T1510(i)-T159(i))/Rr+(T158(i)-T159(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T169(i)-T159(i))/Rz+(T149(i)-T159(i))/Rz+(T159(i-1)-T159(i))/Rtheta+(T159(i+1)-T159(i))/Rtheta)*deltat/((density*c*deltav))+1.0001*T159(i);
             
    end
    
    for i=1:10
        rm=9*deltaR;
        k_conductivity=ks;density=rhos;c=cps;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);Rh=1/((rm+deltaR)*deltaZ*theta*H);deltav=rm*deltaR*theta*deltaZ;
        if i==1
            T1510(i)=((T1511(i)-T1510(i))/Rr+(T159(i)-T1510(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T1610(i)-T1510(i))/Rz+(T1410(i)-T1510(i))/Rz+(T1510(10)-T1510(i))/Rtheta+(T1510(i+1)-T1510(i))/Rtheta)*deltat/((density*c*deltav))+1.0001*T1510(i);
            continue
        end
        if i==10
             T1510(i)=((T1511(i)-T1510(i))/Rr+(T159(i)-T1510(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T1610(i)-T1510(i))/Rz+(T1410(i)-T1510(i))/Rz+(T1510(i-1)-T1510(i))/Rtheta+(T1510(1)-T1510(i))/Rtheta)*deltat/((density*c*deltav))+1.0001*T1510(i);
            continue
        end
          T1510(i)=((T1511(i)-T1510(i))/Rr+(T159(i)-T1510(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T1610(i)-T1510(i))/Rz+(T1410(i)-T1510(i))/Rz+(T1510(i-1)-T1510(i))/Rtheta+(T1510(i+1)-T1510(i))/Rtheta)*deltat/((density*c*deltav))+1.0001*T1510(i);
            
    end
    
    for i=1:10
        rm=10*deltaR;
        k_conductivity=ks;density=rhos;c=cps;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);Rh=1/((rm+deltaR)*deltaZ*theta*H);deltav=rm*deltaR*theta*deltaZ;
        if i==1
            T1511(i)=((T1510(i)-T1511(i))/Rr+(T1510(i)-T1511(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T1611(i)-T1511(i))/Rz+(T1411(i)-T1511(i))/Rz+(T1511(10)-T1511(i))/Rtheta+(T1511(i+1)-T1511(i))/Rtheta)*deltat/((density*c*deltav))+1.0001*T1511(i);
            continue
        end
        if i==10
            T1511(i)=((T1510(i)-T1511(i))/Rr+(T1510(i)-T1511(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T1611(i)-T1511(i))/Rz+(T1411(i)-T1511(i))/Rz+(T1511(i-1)-T1511(i))/Rtheta+(T1511(1)-T1511(i))/Rtheta)*deltat/((density*c*deltav))+1.0001*T1511(i);
            continue
        end
         T1511(i)=((T1510(i)-T1511(i))/Rr+(T1510(i)-T1511(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T1611(i)-T1511(i))/Rz+(T1411(i)-T1511(i))/Rz+(T1511(i-1)-T1511(i))/Rtheta+(T1511(i+1)-T1511(i))/Rtheta)*deltat/((density*c*deltav))+1.0001*T1511(i);
           
    end
    %%
    %16)T161
    l=0;k_conductivity=ks;density=rhos;c=cps;
    for i=1:10
        l=l+(T162(i)-T_161)/(2*deltaR)/(deltaR*theta*deltaZ*k_conductivity);    
    end
    T_161=(l+(T_151-T_161)/deltaZ/(pi*k_conductivity*deltaR^2)+(T_171-T_161)/deltaZ/(pi*k_conductivity*deltaR^2))*(deltat/(density*c*deltaZ*pi*deltaR^2))+1.0001*T_161;
    t161(g+1)=T_161;
    %T162 T163 T164 T165 T166 T167 T168 T169 T1610 T1611
    for i=1:10
        rm=1*deltaR;
        k_conductivity=ks;density=rhos;c=cps;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);Rh=1/((rm+deltaR)*deltaZ*theta*H);deltav=rm*deltaR*theta*deltaZ;
        if i==1
            T162(i)=((T163(i)-T162(i)/Rr)+(T_161-T162(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T162(10)-T162(i))/Rtheta+(T162(i+1)-T162(i))/Rtheta+(T152(i)-T162(i))/Rz+(T172(i)-T162(i))/Rz)*(deltat/(density*c*deltav))+1.0001*T162(i);
            continue
        end
        if i==10
            T162(i)=((T163(i)-T162(i)/Rr)+(T_161-T162(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T162(i-1)-T162(i))/Rtheta+(T162(1)-T162(i))/Rtheta+(T152(i)-T162(i))/Rz+(T172(i)-T162(i))/Rz)*(deltat/(density*c*deltav))+1.0001*T162(i);
            continue
        end
         T162(i)=((T163(i)-T162(i)/Rr)+(T_161-T162(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T162(i-1)-T162(i))/Rtheta+(T162(i+1)-T162(i))/Rtheta+(T152(i)-T162(i))/Rz+(T172(i)-T162(i))/Rz)*(deltat/(density*c*deltav))+1.0001*T162(i);
                         
    end
    
    for i=1:10
        rm=2*deltaR;
        k_conductivity=ks;density=rhos;c=cps;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);Rh=1/((rm+deltaR)*deltaZ*theta*H);deltav=rm*deltaR*theta*deltaZ;
        if i==1
           T163(i)=((T164(i)-T163(i)/Rr)+(T162(i)-T163(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T163(10)-T163(i))/Rtheta+(T163(i+1)-T163(i))/Rtheta+(T153(i)-T163(i))/Rz+(T173(i)-T163(i))/Rz)*(deltat/(density*c*deltav))+1.0001*T163(i);
           continue
        end
        if i==10
          T163(i)=((T164(i)-T163(i)/Rr)+(T162(i)-T163(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T163(i-1)-T163(i))/Rtheta+(T163(1)-T163(i))/Rtheta+(T153(i)-T163(i))/Rz+(T173(i)-T163(i))/Rz)*(deltat/(density*c*deltav))+1.0001*T163(i);
          continue 
        end
        T163(i)=((T164(i)-T163(i)/Rr)+(T162(i)-T163(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T163(i-1)-T163(i))/Rtheta+(T163(i+1)-T163(i))/Rtheta+(T153(i)-T163(i))/Rz+(T173(i)-T163(i))/Rz)*(deltat/(density*c*deltav))+1.0001*T163(i);
            
    end
    
    for i=1:10
        rm=3*deltaR;
        k_conductivity=ks;density=rhos;c=cps;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);Rh=1/((rm+deltaR)*deltaZ*theta*H);deltav=rm*deltaR*theta*deltaZ;
        if i==1
            T164(i)=((T165(i)-T164(i)/Rr)+(T163(i)-T164(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T164(10)-T164(i))/Rtheta+(T164(i+1)-T164(i))/Rtheta+(T154(i)-T164(i))/Rz+(T174(i)-T164(i))/Rz)*(deltat/(density*c*deltav))+1.0001*T164(i);
            continue
        end
        if i==10
         T164(i)=((T165(i)-T164(i)/Rr)+(T163(i)-T164(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T164(i-1)-T164(i))/Rtheta+(T164(1)-T164(i))/Rtheta+(T154(i)-T164(i))/Rz+(T174(i)-T164(i))/Rz)*(deltat/(density*c*deltav))+1.0001*T164(i);
         continue 
        end
        T164(i)=((T165(i)-T164(i)/Rr)+(T163(i)-T164(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T164(i-1)-T164(i))/Rtheta+(T164(i+1)-T164(i))/Rtheta+(T154(i)-T164(i))/Rz+(T174(i)-T164(i))/Rz)*(deltat/(density*c*deltav))+1.0001*T164(i);
           
    end
    for i=1:10
        rm=4*deltaR;
        k_conductivity=ks;density=rhos;c=cps;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);Rh=1/((rm+deltaR)*deltaZ*theta*H);deltav=rm*deltaR*theta*deltaZ;
        if i==1
            T165(i)=((T166(i)-T165(i))/Rr+(T164(i)-T165(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T175(i)-T165(i))/Rz+(T155(i)-T165(i))/Rz+(T165(10)-T165(i))/Rtheta+(T165(i+1)-T165(i))/Rtheta)*deltat/((density*c*deltav))+1.0001*T165(i);
            continue
        end
        if i==10
            T165(i)=((T166(i)-T165(i))/Rr+(T164(i)-T165(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T175(i)-T165(i))/Rz+(T155(i)-T165(i))/Rz+(T165(i-1)-T165(i))/Rtheta+(T165(1)-T165(i))/Rtheta)*deltat/((density*c*deltav))+1.0001*T165(i);
            continue
        end
         T165(i)=((T166(i)-T165(i))/Rr+(T164(i)-T165(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T175(i)-T165(i))/Rz+(T155(i)-T165(i))/Rz+(T165(i-1)-T165(i))/Rtheta+(T165(i+1)-T165(i))/Rtheta)*deltat/((density*c*deltav))+1.0001*T165(i);
            
    end
    for i=1:10
        rm=5*deltaR;
        k_conductivity=ks;density=rhos;c=cps;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);Rh=1/((rm+deltaR)*deltaZ*theta*H);deltav=rm*deltaR*theta*deltaZ;
        if i==1
            T166(i)=((T_167(i)-T166(i))/Rr+(T165(i)-T166(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T176(i)-T166(i))/Rz+(T156(i)-T166(i))/Rz+(T166(10)-T166(i))/Rtheta+(T166(i+1)-T166(i))/Rtheta)*deltat/((density*c*deltav))+1.0001*T166(i);
            continue
        end
        if i==10
           T166(i)=((T_167(i)-T166(i))/Rr+(T165(i)-T166(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T176(i)-T166(i))/Rz+(T156(i)-T166(i))/Rz+(T166(i-1)-T166(i))/Rtheta+(T166(1)-T166(i))/Rtheta)*deltat/((density*c*deltav))+1.0001*T166(i);
            continue
        end
        T166(i)=((T_167(i)-T166(i))/Rr+(T165(i)-T166(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T176(i)-T166(i))/Rz+(T156(i)-T166(i))/Rz+(T166(i-1)-T166(i))/Rtheta+(T166(i+1)-T166(i))/Rtheta)*deltat/((density*c*deltav))+1.0001*T166(i);
           
    end
    for i=1:10
        rm=6*deltaR;
        k_conductivity=ks;density=rhos;c=cps;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);Rh=1/((rm+deltaR)*deltaZ*theta*H);deltav=rm*deltaR*theta*deltaZ;
        if i==1
            T_167(i)=((T168(i)-T_167(i))/Rr+(T166(i)-T_167(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T_177(i)-T_167(i))/Rz+(T_157(i)-T_167(i))/Rz+(T_167(10)-T_167(i))/Rtheta+(T_167(i+1)-T_167(i))/Rtheta)*deltat/((density*c*deltav))+1.0001*T_167(i);
            continue
        end
        if i==10
            T_167(i)=((T168(i)-T_167(i))/Rr+(T166(i)-T_167(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T_177(i)-T_167(i))/Rz+(T_157(i)-T_167(i))/Rz+(T_167(i-1)-T_167(i))/Rtheta+(T_167(1)-T_167(i))/Rtheta)*deltat/((density*c*deltav))+1.0001*T_167(i);
            continue
        end
        T_167(i)=((T168(i)-T_167(i))/Rr+(T166(i)-T_167(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T_177(i)-T_167(i))/Rz+(T_157(i)-T_167(i))/Rz+(T_167(i-1)-T_167(i))/Rtheta+(T_167(i+1)-T_167(i))/Rtheta)*deltat/((density*c*deltav))+1.0001*T_167(i);
        
    end
    for i=1:10
        rm=7*deltaR;
        k_conductivity=ks;density=rhos;c=cps;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);Rh=1/((rm+deltaR)*deltaZ*theta*H);deltav=rm*deltaR*theta*deltaZ;
        if i==1
            T168(i)=((T169(i)-T168(i))/Rr+(T_167(i)-T168(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T178(i)-T168(i))/Rz+(T158(i)-T168(i))/Rz+(T168(10)-T168(i))/Rtheta+(T168(i+1)-T168(i))/Rtheta)*deltat/((density*c*deltav))+1.0001*T168(i);
            continue
        end
        if i==10
             T168(i)=((T169(i)-T168(i))/Rr+(T_167(i)-T168(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T178(i)-T168(i))/Rz+(T158(i)-T168(i))/Rz+(T168(i-1)-T168(i))/Rtheta+(T168(1)-T168(i))/Rtheta)*deltat/((density*c*deltav))+1.0001*T168(i);
            continue
        end
         T168(i)=((T169(i)-T168(i))/Rr+(T_167(i)-T168(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T178(i)-T168(i))/Rz+(T158(i)-T168(i))/Rz+(T168(i-1)-T168(i))/Rtheta+(T168(i+1)-T168(i))/Rtheta)*deltat/((density*c*deltav))+1.0001*T168(i);
         
    end
    for i=1:10
        rm=8*deltaR;
        k_conductivity=ks;density=rhos;c=cps;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);Rh=1/((rm+deltaR)*deltaZ*theta*H);deltav=rm*deltaR*theta*deltaZ;
        if i==1
             T169(i)=((T1610(i)-T169(i))/Rr+(T168(i)-T169(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T179(i)-T169(i))/Rz+(T159(i)-T169(i))/Rz+(T169(10)-T169(i))/Rtheta+(T169(i+1)-T169(i))/Rtheta)*deltat/((density*c*deltav))+1.0001*T169(i);
             continue
        end
        if i==10
             T169(i)=((T1610(i)-T169(i))/Rr+(T168(i)-T169(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T179(i)-T169(i))/Rz+(T159(i)-T169(i))/Rz+(T169(i-1)-T169(i))/Rtheta+(T169(1)-T169(i))/Rtheta)*deltat/((density*c*deltav))+1.0001*T169(i);
             continue
        end
           T169(i)=((T1610(i)-T169(i))/Rr+(T168(i)-T169(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T179(i)-T169(i))/Rz+(T159(i)-T169(i))/Rz+(T169(i-1)-T169(i))/Rtheta+(T169(i+1)-T169(i))/Rtheta)*deltat/((density*c*deltav))+1.0001*T169(i);
             
    end
    
    for i=1:10
        rm=9*deltaR;
        k_conductivity=ks;density=rhos;c=cps;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);Rh=1/((rm+deltaR)*deltaZ*theta*H);deltav=rm*deltaR*theta*deltaZ;
        if i==1
            T1610(i)=((T1611(i)-T1610(i))/Rr+(T169(i)-T1610(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T1710(i)-T1610(i))/Rz+(T1510(i)-T1610(i))/Rz+(T1610(10)-T1610(i))/Rtheta+(T1610(i+1)-T1610(i))/Rtheta)*deltat/((density*c*deltav))+1.0001*T1610(i);
            continue
        end
        if i==10
             T1610(i)=((T1611(i)-T1610(i))/Rr+(T169(i)-T1610(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T1710(i)-T1610(i))/Rz+(T1510(i)-T1610(i))/Rz+(T1610(i-1)-T1610(i))/Rtheta+(T1610(1)-T1610(i))/Rtheta)*deltat/((density*c*deltav))+1.0001*T1610(i);
              continue
        end
          T1610(i)=((T1611(i)-T1610(i))/Rr+(T169(i)-T1610(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T1710(i)-T1610(i))/Rz+(T1510(i)-T1610(i))/Rz+(T1610(i-1)-T1610(i))/Rtheta+(T1610(i+1)-T1610(i))/Rtheta)*deltat/((density*c*deltav))+1.0001*T1610(i);
           
    end
    
    for i=1:10
        rm=10*deltaR;
        k_conductivity=ks;density=rhos;c=cps;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);Rh=1/((rm+deltaR)*deltaZ*theta*H);deltav=rm*deltaR*theta*deltaZ;
        if i==1
            T1611(i)=((T1610(i)-T1611(i))/Rr+(T1610(i)-T1611(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T1711(i)-T1611(i))/Rz+(T1511(i)-T1611(i))/Rz+(T1611(10)-T1611(i))/Rtheta+(T1611(i+1)-T1611(i))/Rtheta)*deltat/((density*c*deltav))+1.0001*T1611(i);
            continue
        end
        if i==10
            T1611(i)=((T1610(i)-T1611(i))/Rr+(T1610(i)-T1611(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T1711(i)-T1611(i))/Rz+(T1511(i)-T1611(i))/Rz+(T1611(i-1)-T1611(i))/Rtheta+(T1611(1)-T1611(i))/Rtheta)*deltat/((density*c*deltav))+1.0001*T1611(i);
            continue
        end
        T1611(i)=((T1610(i)-T1611(i))/Rr+(T1610(i)-T1611(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T1711(i)-T1611(i))/Rz+(T1511(i)-T1611(i))/Rz+(T1611(i-1)-T1611(i))/Rtheta+(T1611(i+1)-T1611(i))/Rtheta)*deltat/((density*c*deltav))+1.0001*T1611(i);
       
    end
    %%
    %17)T171
    l=0;k_conductivity=ks;density=rhos;c=cps;
    for i=1:10
        l=l+(T172(i)-T_171)/(2*deltaR)/(deltaR*theta*deltaZ*k_conductivity);    
    end
    T_171=(l+(T_161-T_171)/deltaZ/(pi*k_conductivity*deltaR^2)+(T_161-T_171)/deltaZ/(pi*k_conductivity*deltaR^2))*(deltat/(density*c*deltaZ*pi*deltaR^2))+1.0001*T_171;
    t171(g+1)=T_171;
    %T172 T173 T174 T175 T176 T177 T178 T179 T1710 T1711
    for i=1:10
        rm=1*deltaR;
        k_conductivity=ks;density=rhos;c=cps;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);Rh=1/((rm+deltaR)*deltaZ*theta*H);deltav=rm*deltaR*theta*deltaZ;
        if i==1
            T172(i)=((T173(i)-T172(i)/Rr)+(T_171-T172(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T172(10)-T172(i))/Rtheta+(T172(i+1)-T172(i))/Rtheta+2*(T162(i)-T172(i))/Rz)*(deltat/(density*c*deltav))+1.0001*T172(i);
            continue
        end
        if i==10
            T172(i)=((T173(i)-T172(i)/Rr)+(T_171-T172(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T172(i-1)-T172(i))/Rtheta+(T172(1)-T172(i))/Rtheta+2*(T162(i)-T172(i))/Rz)*(deltat/(density*c*deltav))+1.0001*T172(i);
            continue
        end
         T172(i)=((T173(i)-T172(i)/Rr)+(T_171-T172(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T172(i-1)-T172(i))/Rtheta+(T172(i+1)-T172(i))/Rtheta+2*(T162(i)-T172(i))/Rz)*(deltat/(density*c*deltav))+1.0001*T172(i);
                       
    end
    for i=1:10
        rm=2*deltaR;
        k_conductivity=ks;density=rhos;c=cps;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);Rh=1/((rm+deltaR)*deltaZ*theta*H);deltav=rm*deltaR*theta*deltaZ;
        if i==1
            T173(i)=((T174(i)-T173(i)/Rr)+(T172(i)-T173(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T173(10)-T173(i))/Rtheta+(T173(i+1)-T173(i))/Rtheta+2*(T163(i)-T173(i))/Rz)*(deltat/(density*c*deltav))+1.0001*T173(i);
            continue
        end
        if i==10
            T173(i)=((T174(i)-T173(i)/Rr)+(T172(i)-T173(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T173(i-1)-T173(i))/Rtheta+(T173(1)-T173(i))/Rtheta+2*(T163(i)-T173(i))/Rz)*(deltat/(density*c*deltav))+1.0001*T173(i);
            continue
        end
        T173(i)=((T174(i)-T173(i)/Rr)+(T172(i)-T173(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T173(i-1)-T173(i))/Rtheta+(T173(i+1)-T173(i))/Rtheta+2*(T163(i)-T173(i))/Rz)*(deltat/(density*c*deltav))+1.0001*T173(i);
                  
    end
    for i=1:10
        rm=3*deltaR;
        k_conductivity=ks;density=rhos;c=cps;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);Rh=1/((rm+deltaR)*deltaZ*theta*H);deltav=rm*deltaR*theta*deltaZ;
        if i==1
            T174(i)=((T175(i)-T174(i)/Rr)+(T173(i)-T174(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T174(10)-T174(i))/Rtheta+(T174(i+1)-T174(i))/Rtheta+2*(T164(i)-T174(i))/Rz)*(deltat/(density*c*deltav))+1.0001*T174(i);
            continue
        end
        if i==10
            T174(i)=((T175(i)-T174(i)/Rr)+(T173(i)-T174(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T174(i-1)-T174(i))/Rtheta+(T174(1)-T174(i))/Rtheta+2*(T164(i)-T174(i))/Rz)*(deltat/(density*c*deltav))+1.0001*T174(i);
            continue
        end
        T174(i)=((T175(i)-T174(i)/Rr)+(T173(i)-T174(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T174(i-1)-T174(i))/Rtheta+(T174(i+1)-T174(i))/Rtheta+2*(T164(i)-T174(i))/Rz)*(deltat/(density*c*deltav))+1.0001*T174(i);
                
    end
    for i=1:10
        rm=4*deltaR;
        k_conductivity=ks;density=rhos;c=cps;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);Rh=1/((rm+deltaR)*deltaZ*theta*H);deltav=rm*deltaR*theta*deltaZ;
        if i==1
            T175(i)=((T176(i)-T175(i)/Rr)+(T174(i)-T175(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T175(10)-T175(i))/Rtheta+(T175(i+1)-T175(i))/Rtheta+2*(T165(i)-T175(i))/Rz)*(deltat/(density*c*deltav))+1.0001*T175(i);
            continue
        end
        if i==10
            T175(i)=((T176(i)-T175(i)/Rr)+(T174(i)-T175(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T175(i-1)-T175(i))/Rtheta+(T175(1)-T175(i))/Rtheta+2*(T165(i)-T175(i))/Rz)*(deltat/(density*c*deltav))+1.0001*T175(i);
            continue
        end
        T175(i)=((T176(i)-T175(i)/Rr)+(T174(i)-T175(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T175(i-1)-T175(i))/Rtheta+(T175(i+1)-T175(i))/Rtheta+2*(T165(i)-T175(i))/Rz)*(deltat/(density*c*deltav))+1.0001*T175(i);
            
    end
    for i=1:10
        rm=5*deltaR;
        k_conductivity=ks;density=rhos;c=cps;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);Rh=1/((rm+deltaR)*deltaZ*theta*H);deltav=rm*deltaR*theta*deltaZ;
        if i==1
            T176(i)=((T_177(i)-T176(i)/Rr)+(T175(i)-T176(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T176(10)-T176(i))/Rtheta+(T176(i+1)-T176(i))/Rtheta+2*(T166(i)-T176(i))/Rz)*(deltat/(density*c*deltav))+1.0001*T176(i);
            continue
        end
        if i==10
            T176(i)=((T_177(i)-T176(i)/Rr)+(T175(i)-T176(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T176(i-1)-T176(i))/Rtheta+(T176(1)-T176(i))/Rtheta+2*(T166(i)-T176(i))/Rz)*(deltat/(density*c*deltav))+1.0001*T176(i);
            continue
        end
       T176(i)=((T_177(i)-T176(i)/Rr)+(T175(i)-T176(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T176(i-1)-T176(i))/Rtheta+(T176(i+1)-T176(i))/Rtheta+2*(T166(i)-T176(i))/Rz)*(deltat/(density*c*deltav))+1.0001*T176(i);
           
    end
    for i=1:10
        rm=6*deltaR;
        k_conductivity=ks;density=rhos;c=cps;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);Rh=1/((rm+deltaR)*deltaZ*theta*H);deltav=rm*deltaR*theta*deltaZ;
        if i==1
            T_177(i)=((T178(i)-T_177(i)/Rr)+(T176(i)-T_177(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T_177(10)-T_177(i))/Rtheta+(T_177(i+1)-T_177(i))/Rtheta+2*(T_167(i)-T_177(i))/Rz)*(deltat/(density*c*deltav))+1.0001*T_177(i);
            continue
        end
        if i==10
            T_177(i)=((T178(i)-T_177(i)/Rr)+(T176(i)-T_177(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T_177(i-1)-T_177(i))/Rtheta+(T_177(1)-T_177(i))/Rtheta+2*(T_167(i)-T_177(i))/Rz)*(deltat/(density*c*deltav))+1.0001*T_177(i);
            continue
        end
        T_177(i)=((T178(i)-T_177(i)/Rr)+(T176(i)-T_177(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T_177(i-1)-T_177(i))/Rtheta+(T_177(i+1)-T_177(i))/Rtheta+2*(T_167(i)-T_177(i))/Rz)*(deltat/(density*c*deltav))+1.0001*T_177(i);
          
    end
    for i=1:10
        rm=7*deltaR;
        k_conductivity=ks;density=rhos;c=cps;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);Rh=1/((rm+deltaR)*deltaZ*theta*H);deltav=rm*deltaR*theta*deltaZ;
        if i==1
            T178(i)=((T179(i)-T178(i)/Rr)+(T_177(i)-T178(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T178(10)-T178(i))/Rtheta+(T178(i+1)-T178(i))/Rtheta+2*(T168(i)-T178(i))/Rz)*(deltat/(density*c*deltav))+1.0001*T178(i);
            continue
        end
        if i==10
            T178(i)=((T179(i)-T178(i)/Rr)+(T_177(i)-T178(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T178(i-1)-T178(i))/Rtheta+(T178(1)-T178(i))/Rtheta+2*(T168(i)-T178(i))/Rz)*(deltat/(density*c*deltav))+1.0001*T178(i);
            continue
        end
        T178(i)=((T179(i)-T178(i)/Rr)+(T_177(i)-T178(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T178(i-1)-T178(i))/Rtheta+(T178(i+1)-T178(i))/Rtheta+2*(T168(i)-T178(i))/Rz)*(deltat/(density*c*deltav))+1.0001*T178(i);
       
    end
    for i=1:10
        rm=8*deltaR;
        k_conductivity=ks;density=rhos;c=cps;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);Rh=1/((rm+deltaR)*deltaZ*theta*H);deltav=rm*deltaR*theta*deltaZ;
        if i==1
            T179(i)=((T1710(i)-T179(i)/Rr)+(T178(i)-T179(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T179(10)-T179(i))/Rtheta+(T179(i+1)-T179(i))/Rtheta+2*(T169(i)-T179(i))/Rz)*(deltat/(density*c*deltav))+1.0001*T179(i);
            continue
        end
        if i==10
            T179(i)=((T1710(i)-T179(i)/Rr)+(T178(i)-T179(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T179(i-1)-T179(i))/Rtheta+(T179(1)-T179(i))/Rtheta+2*(T169(i)-T179(i))/Rz)*(deltat/(density*c*deltav))+1.0001*T179(i);
            continue
        end
        T179(i)=((T1710(i)-T179(i)/Rr)+(T178(i)-T179(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T179(i-1)-T179(i))/Rtheta+(T179(i+1)-T179(i))/Rtheta+2*(T169(i)-T179(i))/Rz)*(deltat/(density*c*deltav))+1.0001*T179(i);
           
    end
    for i=1:10
        rm=9*deltaR;
        k_conductivity=ks;density=rhos;c=cps;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);Rh=1/((rm+deltaR)*deltaZ*theta*H);deltav=rm*deltaR*theta*deltaZ;
        if i==1
            T1710(i)=((T1711(i)-T1710(i)/Rr)+(T179(i)-T1710(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T1710(10)-T1710(i))/Rtheta+(T1710(i+1)-T1710(i))/Rtheta+2*(T1610(i)-T1710(i))/Rz)*(deltat/(density*c*deltav))+1.0001*T1710(i);
            continue
        end
        if i==10
             T1710(i)=((T1711(i)-T1710(i)/Rr)+(T179(i)-T1710(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T1710(i-1)-T1710(i))/Rtheta+(T1710(1)-T1710(i))/Rtheta+2*(T1610(i)-T1710(i))/Rz)*(deltat/(density*c*deltav))+1.0001*T1710(i);
            continue
        end
         T1710(i)=((T1711(i)-T1710(i)/Rr)+(T179(i)-T1710(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T1710(i-1)-T1710(i))/Rtheta+(T1710(i+1)-T1710(i))/Rtheta+2*(T1610(i)-T1710(i))/Rz)*(deltat/(density*c*deltav))+1.0001*T1710(i);
         
    end
    for i=1:10
        rm=10*deltaR;
        k_conductivity=ks;density=rhos;c=cps;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);Rh=1/((rm+deltaR)*deltaZ*theta*H);deltav=rm*deltaR*theta*deltaZ;
        if i==1
            T1711(i)=((T1710(i)-T1711(i)/Rr)+(T1710(i)-T1711(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T1711(10)-T1711(i))/Rtheta+(T1711(i+1)-T1711(i))/Rtheta+2*(T1611(i)-T1711(i))/Rz)*(deltat/(density*c*deltav))+1.0001*T1711(i);
            continue
        end
        if i==10
             T1711(i)=((T1710(i)-T1711(i)/Rr)+(T1710(i)-T1711(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T1711(i-1)-T1711(i))/Rtheta+(T1711(1)-T1711(i))/Rtheta+2*(T1611(i)-T1711(i))/Rz)*(deltat/(density*c*deltav))+1.0001*T1711(i);
             continue
        end
         T1711(i)=((T1710(i)-T1711(i)/Rr)+(T1710(i)-T1711(i))/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+(T1711(i-1)-T1711(i))/Rtheta+(T1711(i+1)-T1711(i))/Rtheta+2*(T1611(i)-T1711(i))/Rz)*(deltat/(density*c*deltav))+1.0001*T1711(i);
           
    end
    if min(T1311)>321 && min(T1310)>321 && min(T139)>321 && min(T138)>321 && min(T_137)>321 && min(T136)>321 && min(T135)>321 && min(T134)>321 &&min(T133)>321 &&min(T132)>321 &&T_131>321 &&...
       min(T1411)>321 && min(T1410)>321 && min(T149)>321 && min(T148)>321 && min(T_147)>321 && min(T146)>321 && min(T145)>321 && min(T144)>321 &&min(T143)>321 &&min(T142)>321 &&T_141>321 &&...
       min(T1511)>321 && min(T1510)>321 && min(T159)>321 && min(T158)>321 && min(T_157)>321 && min(T156)>321 && min(T155)>321 && min(T154)>321 &&min(T153)>321 &&min(T152)>321 &&T_151>321 &&...
       min(T1611)>321 && min(T1610)>321 && min(T169)>321 && min(T168)>321 && min(T_167)>321 && min(T166)>321 && min(T165)>321 && min(T164)>321 &&min(T163)>321 &&min(T162)>321 &&T_161>321 &&...
       min(T1711)>321 && min(T1710)>321 && min(T179)>321 && min(T178)>321 && min(T_177)>321 && min(T176)>321 && min(T175)>321 && min(T174)>321 &&min(T173)>321 &&min(T172)>321 &&T_171>321
       break
    end   
end
%-------------------------------2-3
disp('t='+string(g*deltat)+'s')
%-------------------------------3-3
t=(0:0.0001:0.1633);
plot(t,t138);
%-------------------------------4-3
T3d=[transpose(t11),transpose(t21),transpose(t31),transpose(t41),transpose(t51),transpose(t61),transpose(t71),transpose(t81),transpose(t91),transpose(t101),transpose(t111),transpose(t121),transpose(t131),transpose(t141),transpose(t151),transpose(t161),transpose(t171)];
surf(T3d,'EdgeColor','interp')

    
    
    
    
    
    
    
    
    
    
    
    