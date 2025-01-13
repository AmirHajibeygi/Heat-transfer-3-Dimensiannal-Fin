clear
clc
syms rm k_conductivity T_infinity H
%%
T_11=308;T12=308*ones(1,10);T13=308*ones(1,10);T14=308*ones(1,10);T15=308*ones(1,10);T16=308*ones(1,10);
%%%%
T_21=306;T22=306*ones(1,10);T23=306*ones(1,10);T24=306*ones(1,10);T25=306*ones(1,10);T26=306*ones(1,10);
%%%%
T_31=306;T32=306*ones(1,10);T33=306*ones(1,10);T34=306*ones(1,10);T35=306*ones(1,10);T36=306*ones(1,10);
%%%%
T_41=305;T42=305*ones(1,10);T43=305*ones(1,10);T44=305*ones(1,10);
%%%%
T_51=305;T52=305*ones(1,10);T53=305*ones(1,10);T54=305*ones(1,10);
%%%%
T_61=305;T62=305*ones(1,10);T63=305*ones(1,10);T64=305*ones(1,10);
%%%%
T_71=305;T72=305*ones(1,10);T73=305*ones(1,10);T74=305*ones(1,10);
%%%%
T_81=305;T82=305*ones(1,10);T83=305*ones(1,10);T84=305*ones(1,10);
%%%%
T_91=305;T92=305*ones(1,10);T93=305*ones(1,10);T94=305*ones(1,10);
%%%%
T_101=305;T102=305*ones(1,10);T103=305*ones(1,10);T104=305*ones(1,10);
%%%%
T_111=305;T112=305*ones(1,10);T113=305*ones(1,10);T114=305*ones(1,10);
%%%%
T_121=305;T122=305*ones(1,10);T123=305*ones(1,10);T124=305*ones(1,10);
%%%%
T_131=303;T132=303*ones(1,10);T133=303*ones(1,10);T134=303*ones(1,10);T135=303*ones(1,10);T136=303*ones(1,10);T137=303*ones(1,10);T138=303*ones(1,10);T139=303*ones(1,10);T1310=303*ones(1,10);T1311=303*ones(1,10);
%%%%
T_141=303;T142=303*ones(1,10);T143=303*ones(1,10);T144=303*ones(1,10);T145=303*ones(1,10);T146=303*ones(1,10);T147=303*ones(1,10);T148=303*ones(1,10);T149=303*ones(1,10);T1410=303*ones(1,10);T1411=303*ones(1,10);
%%%%
T_151=303;T152=303*ones(1,10);T153=303*ones(1,10);T154=303*ones(1,10);T155=303*ones(1,10);T156=303*ones(1,10);T157=303*ones(1,10);T158=303*ones(1,10);T159=303*ones(1,10);T1510=303*ones(1,10);T1511=303*ones(1,10);
%%%%
T_161=303;T162=303*ones(1,10);T163=303*ones(1,10);T164=303*ones(1,10);T165=303*ones(1,10);T166=303*ones(1,10);T167=303*ones(1,10);T168=303*ones(1,10);T169=303*ones(1,10);T1610=303*ones(1,10);T1611=303*ones(1,10);
%%%%
T_171=303;T172=303*ones(1,10);T173=303*ones(1,10);T174=303*ones(1,10);T175=303*ones(1,10);T176=303*ones(1,10);T177=303*ones(1,10);T178=303*ones(1,10);T179=303*ones(1,10);T1710=303*ones(1,10);T1711=303*ones(1,10);
%%-------------------------------------
h=[5.76,294.27,7,392.59,4.42,338.04];theta=pi/5;deltaR=0.02;deltaZ=0.025;
ks=44.5;rhos=7850;cps=475;%[w/m.k],[kg/m^3],[j/kg.k]
kc=386;rhoc=8954;cpc=383;%[w/m.k],[kg/m^3],[j/kg.k]
Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);Rh=1/((rm+deltaR)*deltaZ*theta*H);
%%-------------------------------------
%%
for j=1:10000
    %%2)T26
    for i=1:5
        H=h(1);
        rm=5*deltaR;
        k_conductivity=kc;
        T_infinity=40+273;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);Rh=1/((rm+deltaR)*deltaZ*theta*H);
        if i==1
            T26(i)=(T25(i)/deltaR/((4*deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T16(i)/(2*Rz)+T36(i)/(2*Rz)+T26(i+1)/(2*Rtheta)+T26(10)/(2*Rtheta)+T_infinity/Rh)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/(2*Rz)+1/(2*Rz)+1/(2*Rtheta)+1/(2*Rtheta)+1/Rh);
            continue
        end
        T26(i)=(T25(i)/deltaR/((4*deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T16(i)/(2*Rz)+T36(i)/(2*Rz)+T26(i+1)/(2*Rtheta)+T26(i-1)/(2*Rtheta)+T_infinity/Rh)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/(2*Rz)+1/(2*Rz)+1/(2*Rtheta)+1/(2*Rtheta)+1/Rh);
    
    end
    
    for i=6:10
        H=h(2);
        rm=5*deltaR;
        k_conductivity=kc;
        T_infinity=30+273;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);Rh=1/((rm+deltaR)*deltaZ*theta*H);
        if i==10
            T26(i)=(T25(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T16(i)/(2*Rz)+T36(i)/(2*Rz)+T26(1)/(2*Rtheta)+T26(i-1)/(2*Rtheta)+T_infinity/Rh)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/(2*Rz)+1/(2*Rz)+1/(2*Rtheta)+1/(2*Rtheta)+1/Rh);
            continue
        end
        T26(i)=(T25(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T16(i)/(2*Rz)+T36(i)/(2*Rz)+T26(i+1)/(2*Rtheta)+T26(i-1)/(2*Rtheta)+T_infinity/Rh)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/(2*Rz)+1/(2*Rz)+1/(2*Rtheta)+1/(2*Rtheta)+1/Rh);
    end
    %%2)T25 T24 T23 T22
    for i=1:10
        rm=4*deltaR;
        k_conductivity=kc;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);
        if i==1
           T25(i)=(T24(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T26(i)/Rr+T25(i+1)/Rtheta+T25(10)/Rtheta+T15(i)/Rz+T35(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
           continue
        end 
        if i==10
           T25(i)=(T24(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T26(i)/Rr+T25(1)/Rtheta+T25(i-1)/Rtheta+T15(i)/Rz+T35(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
           continue
        end 
        T25(i)=(T24(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T26(i)/Rr+T25(i+1)/Rtheta+T25(i-1)/Rtheta+T15(i)/Rz+T35(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
    end
    
    for i=1:10
        rm=3*deltaR;
        k_conductivity=kc;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);
        if i==1
           T24(i)=(T23(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T25(i)/Rr+T24(i+1)/Rtheta+T24(10)/Rtheta+T14(i)/Rz+T34(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
           continue
        end 
        if i==10
           T24(i)=(T23(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T25(i)/Rr+T24(1)/Rtheta+T24(i-1)/Rtheta+T14(i)/Rz+T34(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
           continue
        end 
        T24(i)=(T23(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T25(i)/Rr+T24(i+1)/Rtheta+T24(i-1)/Rtheta+T14(i)/Rz+T34(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
    end
    
    for i=1:10
        rm=2*deltaR;
        k_conductivity=kc;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);
        if i==1
           T23(i)=(T22(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T24(i)/Rr+T23(i+1)/Rtheta+T23(10)/Rtheta+T13(i)/Rz+T33(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
           continue
        end 
        if i==10
           T23(i)=(T22(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T24(i)/Rr+T23(1)/Rtheta+T23(i-1)/Rtheta+T13(i)/Rz+T33(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
           continue
        end 
        T23(i)=(T22(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T24(i)/Rr+T23(i+1)/Rtheta+T23(i-1)/Rtheta+T13(i)/Rz+T33(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
    end
    
    for i=1:10
        rm=1*deltaR;
        k_conductivity=kc;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);
        if i==1
           T22(i)=(T_21/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T23(i)/Rr+T22(i+1)/Rtheta+T22(10)/Rtheta+T12(i)/Rz+T32(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
           continue
        end 
        if i==10
           T22(i)=(T_21/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T23(i)/Rr+T22(1)/Rtheta+T22(i-1)/Rtheta+T12(i)/Rz+T32(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
           continue
        end 
        T22(i)=(T_21/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T23(i)/Rr+T22(i+1)/Rtheta+T22(i-1)/Rtheta+T12(i)/Rz+T32(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
    end
    %T21
    l=0;k_conductivity=kc;
    for i=1:10
        l=l+T22(i)/(2*deltaR)/(deltaR*theta*deltaZ*k_conductivity);    
    end
    T_21=(l+T_11/deltaZ/(pi*k_conductivity*deltaR^2)+T_31/deltaZ/(pi*k_conductivity*deltaR^2))/(10/(2*deltaR)/(deltaR*theta*deltaZ*k_conductivity)+2/deltaZ/(pi*k_conductivity*deltaR^2));
    %%
    %%3)T36
    for i=1:5
        H=h(1);
        rm=5*deltaR;
        k_conductivity=kc;
        T_infinity=40+273;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);Rh=1/((rm+deltaR)*deltaZ*theta*H);
        if i==1
            T36(i)=(T35(i)/deltaR/((4*deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T26(i)/(2*Rz)+T_infinity/(1/(h(3)*theta*deltaR^2))+T36(i+1)/(2*Rtheta)+T26(10)/(2*Rtheta)+T_infinity/Rh)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/(2*Rz)+1/(1/(h(3)*theta*deltaR^2))+1/(2*Rtheta)+1/(2*Rtheta)+1/Rh);
            continue
        end
        T36(i)=(T35(i)/deltaR/((4*deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T26(i)/(2*Rz)+T_infinity/(1/(h(3)*theta*deltaR^2))+T36(i+1)/(2*Rtheta)+T26(i-1)/(2*Rtheta)+T_infinity/Rh)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/(2*Rz)+1/(1/(h(3)*theta*deltaR^2))+1/(2*Rtheta)+1/(2*Rtheta)+1/Rh);
    
    end
    
    for i=6:10
        H=h(2);
        rm=5*deltaR;
        k_conductivity=kc;
        T_infinity=30+273;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);Rh=1/((rm+deltaR)*deltaZ*theta*H);
        if i==10
            T36(i)=(T35(i)/deltaR/((4*deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T26(i)/(2*Rz)+T_infinity/(1/(h(4)*theta*9*deltaR^2))+T36(1)/(2*Rtheta)+T26(i-1)/(2*Rtheta)+T_infinity/Rh)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/(2*Rz)+1/(1/(h(4)*theta*9*deltaR^2))+1/(2*Rtheta)+1/(2*Rtheta)+1/Rh);
            continue
        end
        T36(i)=(T35(i)/deltaR/((4*deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T26(i)/(2*Rz)+T_infinity/(1/(h(4)*9*theta*deltaR^2))+T36(i+1)/(2*Rtheta)+T26(i-1)/(2*Rtheta)+T_infinity/Rh)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/(2*Rz)+1/(1/(h(4)*9*theta*deltaR^2))+1/(2*Rtheta)+1/(2*Rtheta)+1/Rh);
    end
    %%3)T35 T34 T33 T32
    for i=1:5
        rm=4*deltaR;
        k_conductivity=kc;
        T_infinity=40+273;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);
        if i==1
           T35(i)=(T34(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T36(i)/Rr+T35(i+1)/Rtheta+T35(10)/Rtheta+T25(i)/Rz+T_infinity/(1/(h(3)*7*theta*deltaR^2)))/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+1/Rz+1/(1/(h(3)*7*theta*deltaR^2)));
           continue
        end
        T35(i)=(T34(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T36(i)/Rr+T35(i+1)/Rtheta+T35(i-1)/Rtheta+T25(i)/Rz+T_infinity/(1/(h(3)*7*theta*deltaR^2)))/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+1/Rz+1/(1/(h(3)*7*theta*deltaR^2)));
    end
    
    for i=6:10
        rm=4*deltaR;
        k_conductivity=kc;
        T_infinity=30+273;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);
        if i==10
           T35(i)=(T34(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T36(i)/Rr+T35(1)/Rtheta+T35(i-1)/Rtheta+T25(i)/Rz+T_infinity/(1/(7*h(4)*theta*deltaR^2)))/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+1/Rz+1/(1/(7*h(4)*theta*deltaR^2)));
           continue
        end
        T35(i)=(T34(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T36(i)/Rr+T35(i+1)/Rtheta+T35(i-1)/Rtheta+T25(i)/Rz+T_infinity/(1/(7*h(4)*theta*deltaR^2)))/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+1/Rz+1/(1/(7*h(4)*theta*deltaR^2)));
    end
    
    for i=1:5
        rm=3*deltaR;
        k_conductivity=kc;
        T_infinity=40+273;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);
        if i==1
           T34(i)=(T33(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T35(i)/Rr+T34(i+1)/Rtheta+T34(10)/Rtheta+T24(i)/Rz+T_infinity/(2/h(3)*theta*deltaR^2)+T44(i)/(2*Rz))/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+1/Rz+1/(2/h(3)*theta*deltaR^2)+1/(2*Rz));
           continue
        end
        T34(i)=(T33(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T35(i)/Rr+T34(i+1)/Rtheta+T34(i-1)/Rtheta+T24(i)/Rz+T_infinity/(2/h(3)*theta*deltaR^2)+T44(i)/(2*Rz))/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+1/Rz+1/(2/h(3)*theta*deltaR^2)+1/(2*Rz));
    end
    
    for i=6:10
        rm=3*deltaR;
        k_conductivity=kc;
        T_infinity=30+273;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);
        if i==10
           T34(i)=(T33(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T35(i)/Rr+T34(1)/Rtheta+T34(i-1)/Rtheta+T24(i)/Rz+T_infinity/(2/h(4)*theta*deltaR^2)+T44(i)/(2*Rz))/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+1/Rz+1/(2/h(4)*theta*deltaR^2)+1/(2*Rz));
           continue
        end
        T34(i)=(T33(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T35(i)/Rr+T34(i+1)/Rtheta+T34(i-1)/Rtheta+T24(i)/Rz+T_infinity/(2/h(4)*theta*deltaR^2)+T44(i)/(2*Rz))/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+1/Rz+1/(2/h(4)*theta*deltaR^2)+1/(2*Rz));
    end
    
    for i=1:10
        rm=2*deltaR;
        k_conductivity=kc;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);
        if i==1
           T33(i)=(T32(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T34(i)/Rr+T33(i+1)/Rtheta+T33(10)/Rtheta+T23(i)/Rz+T43(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
           continue
        end 
        if i==10
           T33(i)=(T32(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T34(i)/Rr+T33(1)/Rtheta+T33(i-1)/Rtheta+T23(i)/Rz+T43(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
           continue
        end 
        T33(i)=(T32(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T34(i)/Rr+T33(i+1)/Rtheta+T33(i-1)/Rtheta+T23(i)/Rz+T43(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
    end
    
    for i=1:10
        rm=1*deltaR;
        k_conductivity=kc;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);
        if i==1
           T32(i)=(T_31/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T33(i)/Rr+T32(i+1)/Rtheta+T32(10)/Rtheta+T22(i)/Rz+T42(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
           continue
        end 
        if i==10
           T32(i)=(T_31/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T33(i)/Rr+T32(1)/Rtheta+T32(i-1)/Rtheta+T22(i)/Rz+T42(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
           continue
        end 
        T32(i)=(T_31/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T33(i)/Rr+T32(i+1)/Rtheta+T32(i-1)/Rtheta+T22(i)/Rz+T42(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
    end
    
    %T31
    l=0;k_conductivity=kc;
    for i=1:10
        l=l+T32(i)/(2*deltaR)/(deltaR*theta*deltaZ*k_conductivity);    
    end
    T_31=(l+T_21/deltaZ/(pi*k_conductivity*deltaR^2)+T_41/deltaZ/(pi*k_conductivity*deltaR^2))/(10/(2*deltaR)/(deltaR*theta*deltaZ*k_conductivity)+2/deltaZ/(pi*k_conductivity*deltaR^2));
    %%
    %%4)T44
    for i=1:5
        H=h(3);
        rm=3*deltaR;
        k_conductivity=kc;
        T_infinity=40+273;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);Rh=1/((rm+deltaR)*deltaZ*theta*H);
        if i==1
            T44(i)=(T43(i)/deltaR/((2*deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T34(i)/(2*Rz)+T54(i)/(2*Rz)+T44(i+1)/(2*Rtheta)+T44(10)/(2*Rtheta)+T_infinity/Rh)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/(2*Rz)+1/(2*Rz)+1/(2*Rtheta)+1/(2*Rtheta)+1/Rh);
            continue
        end
        T44(i)=(T43(i)/deltaR/((2*deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T34(i)/(2*Rz)+T54(i)/(2*Rz)+T44(i+1)/(2*Rtheta)+T44(i-1)/(2*Rtheta)+T_infinity/Rh)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/(2*Rz)+1/(2*Rz)+1/(2*Rtheta)+1/(2*Rtheta)+1/Rh);
    
    end
    
    for i=6:10
        H=h(4);
        rm=3*deltaR;
        k_conductivity=kc;
        T_infinity=30+273;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);Rh=1/((rm+deltaR)*deltaZ*theta*H);
        if i==10
            T44(i)=(T43(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T34(i)/(2*Rz)+T54(i)/(2*Rz)+T44(1)/(2*Rtheta)+T44(i-1)/(2*Rtheta)+T_infinity/Rh)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/(2*Rz)+1/(2*Rz)+1/(2*Rtheta)+1/(2*Rtheta)+1/Rh);
            continue
        end
        T44(i)=(T43(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T34(i)/(2*Rz)+T54(i)/(2*Rz)+T44(i+1)/(2*Rtheta)+T44(i-1)/(2*Rtheta)+T_infinity/Rh)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/(2*Rz)+1/(2*Rz)+1/(2*Rtheta)+1/(2*Rtheta)+1/Rh);
    end
    %%T43 T42
    for i=1:10
        rm=2*deltaR;
        k_conductivity=kc;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);
        if i==1
           T43(i)=(T42(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T44(i)/Rr+T43(i+1)/Rtheta+T43(10)/Rtheta+T33(i)/Rz+T53(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
           continue
        end 
        if i==10
           T43(i)=(T42(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T44(i)/Rr+T43(1)/Rtheta+T43(i-1)/Rtheta+T33(i)/Rz+T53(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
           continue
        end 
        T43(i)=(T42(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T44(i)/Rr+T43(i+1)/Rtheta+T43(i-1)/Rtheta+T33(i)/Rz+T53(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
    end
    
    for i=1:10
        rm=1*deltaR;
        k_conductivity=kc;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);
        if i==1
           T42(i)=(T_41/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T43(i)/Rr+T42(i+1)/Rtheta+T42(10)/Rtheta+T32(i)/Rz+T52(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
           continue
        end 
        if i==10
           T42(i)=(T_41/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T43(i)/Rr+T42(1)/Rtheta+T42(i-1)/Rtheta+T32(i)/Rz+T52(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
           continue
        end 
        T42(i)=(T_41/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T43(i)/Rr+T42(i+1)/Rtheta+T42(i-1)/Rtheta+T32(i)/Rz+T52(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
    end
    %T41
    l=0;k_conductivity=kc;
    for i=1:10
        l=l+T42(i)/(2*deltaR)/(deltaR*theta*deltaZ*k_conductivity);    
    end
    T_41=(l+T_31/deltaZ/(pi*k_conductivity*deltaR^2)+T_51/deltaZ/(pi*k_conductivity*deltaR^2))/(10/(2*deltaR)/(deltaR*theta*deltaZ*k_conductivity)+2/deltaZ/(pi*k_conductivity*deltaR^2));
    %%
    %%5)T54
    for i=1:5
        H=h(3);
        rm=3*deltaR;
        k_conductivity=kc;
        T_infinity=40+273;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);Rh=1/((rm+deltaR)*deltaZ*theta*H);
        if i==1
            T54(i)=(T53(i)/deltaR/((2*deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T44(i)/(2*Rz)+T64(i)/(2*Rz)+T54(i+1)/(2*Rtheta)+T54(10)/(2*Rtheta)+T_infinity/Rh)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/(2*Rz)+1/(2*Rz)+1/(2*Rtheta)+1/(2*Rtheta)+1/Rh);
            continue
        end
        T54(i)=(T53(i)/deltaR/((2*deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T44(i)/(2*Rz)+T64(i)/(2*Rz)+T54(i+1)/(2*Rtheta)+T54(i-1)/(2*Rtheta)+T_infinity/Rh)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/(2*Rz)+1/(2*Rz)+1/(2*Rtheta)+1/(2*Rtheta)+1/Rh);
    
    end
    
    for i=6:10
        H=h(4);
        rm=3*deltaR;
        k_conductivity=kc;
        T_infinity=30+273;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);Rh=1/((rm+deltaR)*deltaZ*theta*H);
        if i==10
            T54(i)=(T53(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T44(i)/(2*Rz)+T64(i)/(2*Rz)+T54(1)/(2*Rtheta)+T54(i-1)/(2*Rtheta)+T_infinity/Rh)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/(2*Rz)+1/(2*Rz)+1/(2*Rtheta)+1/(2*Rtheta)+1/Rh);
            continue
        end
        T54(i)=(T53(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T44(i)/(2*Rz)+T64(i)/(2*Rz)+T54(i+1)/(2*Rtheta)+T54(i-1)/(2*Rtheta)+T_infinity/Rh)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/(2*Rz)+1/(2*Rz)+1/(2*Rtheta)+1/(2*Rtheta)+1/Rh);
    end
    %%T53 T52
    for i=1:10
        rm=2*deltaR;
        k_conductivity=kc;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);
        if i==1
           T53(i)=(T52(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T54(i)/Rr+T53(i+1)/Rtheta+T53(10)/Rtheta+T43(i)/Rz+T63(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
           continue
        end 
        if i==10
           T53(i)=(T52(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T54(i)/Rr+T53(1)/Rtheta+T53(i-1)/Rtheta+T43(i)/Rz+T63(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
           continue
        end 
        T53(i)=(T52(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T54(i)/Rr+T53(i+1)/Rtheta+T53(i-1)/Rtheta+T43(i)/Rz+T63(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
    end
    
    for i=1:10
        rm=1*deltaR;
        k_conductivity=kc;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);
        if i==1
           T52(i)=(T_51/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T53(i)/Rr+T52(i+1)/Rtheta+T52(10)/Rtheta+T42(i)/Rz+T62(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
           continue
        end 
        if i==10
           T52(i)=(T_51/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T53(i)/Rr+T52(1)/Rtheta+T52(i-1)/Rtheta+T42(i)/Rz+T62(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
           continue
        end 
        T52(i)=(T_51/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T53(i)/Rr+T52(i+1)/Rtheta+T52(i-1)/Rtheta+T42(i)/Rz+T62(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
    end
    %T51
    l=0;k_conductivity=kc;
    for i=1:10
        l=l+T52(i)/(2*deltaR)/(deltaR*theta*deltaZ*k_conductivity);    
    end
    T_51=(l+T_41/deltaZ/(pi*k_conductivity*deltaR^2)+T_61/deltaZ/(pi*k_conductivity*deltaR^2))/(10/(2*deltaR)/(deltaR*theta*deltaZ*k_conductivity)+2/deltaZ/(pi*k_conductivity*deltaR^2));
    %%
    %%6)T64
    for i=1:5
        H=h(3);
        rm=3*deltaR;
        k_conductivity=kc;
        T_infinity=40+273;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);Rh=1/((rm+deltaR)*deltaZ*theta*H);
        if i==1
            T64(i)=(T63(i)/deltaR/((2*deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T54(i)/(2*Rz)+T74(i)/(2*Rz)+T64(i+1)/(2*Rtheta)+T64(10)/(2*Rtheta)+T_infinity/Rh)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/(2*Rz)+1/(2*Rz)+1/(2*Rtheta)+1/(2*Rtheta)+1/Rh);
            continue
        end
        T64(i)=(T63(i)/deltaR/((2*deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T54(i)/(2*Rz)+T74(i)/(2*Rz)+T64(i+1)/(2*Rtheta)+T64(i-1)/(2*Rtheta)+T_infinity/Rh)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/(2*Rz)+1/(2*Rz)+1/(2*Rtheta)+1/(2*Rtheta)+1/Rh);
    
    end
    
    for i=6:10
        H=h(4);
        rm=3*deltaR;
        k_conductivity=kc;
        T_infinity=30+273;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);Rh=1/((rm+deltaR)*deltaZ*theta*H);
        if i==10
            T64(i)=(T63(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T54(i)/(2*Rz)+T74(i)/(2*Rz)+T64(1)/(2*Rtheta)+T64(i-1)/(2*Rtheta)+T_infinity/Rh)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/(2*Rz)+1/(2*Rz)+1/(2*Rtheta)+1/(2*Rtheta)+1/Rh);
            continue
        end
        T64(i)=(T63(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T54(i)/(2*Rz)+T74(i)/(2*Rz)+T64(i+1)/(2*Rtheta)+T64(i-1)/(2*Rtheta)+T_infinity/Rh)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/(2*Rz)+1/(2*Rz)+1/(2*Rtheta)+1/(2*Rtheta)+1/Rh);
    end
    %%T63 T62
    for i=1:10
        rm=2*deltaR;
        k_conductivity=kc;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);
        if i==1
           T63(i)=(T62(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T64(i)/Rr+T63(i+1)/Rtheta+T63(10)/Rtheta+T53(i)/Rz+T73(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
           continue
        end 
        if i==10
          T63(i)=(T62(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T64(i)/Rr+T63(i-1)/Rtheta+T63(1)/Rtheta+T53(i)/Rz+T73(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
           continue
        end 
        T63(i)=(T62(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T64(i)/Rr+T63(i+1)/Rtheta+T63(i-1)/Rtheta+T53(i)/Rz+T73(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
           
    end
    
    for i=1:10
        rm=1*deltaR;
        k_conductivity=kc;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);
        if i==1
           T62(i)=(T_61/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T63(i)/Rr+T62(i+1)/Rtheta+T62(10)/Rtheta+T72(i)/Rz+T52(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
           continue
        end 
        if i==10
           T62(i)=(T_61/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T63(i)/Rr+T62(1)/Rtheta+T62(i-1)/Rtheta+T72(i)/Rz+T52(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
           continue
        end 
        T62(i)=(T_61/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T63(i)/Rr+T62(i+1)/Rtheta+T62(i-1)/Rtheta+T72(i)/Rz+T52(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
    end
    %T61
    l=0;k_conductivity=kc;
    for i=1:10
        l=l+T62(i)/(2*deltaR)/(deltaR*theta*deltaZ*k_conductivity);    
    end
    T_61=(l+T_51/deltaZ/(pi*k_conductivity*deltaR^2)+T_71/deltaZ/(pi*k_conductivity*deltaR^2))/(10/(2*deltaR)/(deltaR*theta*deltaZ*k_conductivity)+2/deltaZ/(pi*k_conductivity*deltaR^2));
    %%
    %%7)T74
    for i=1:5
        H=h(3);
        rm=3*deltaR;
        k_conductivity=kc;
        T_infinity=40+273;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);Rh=1/((rm+deltaR)*deltaZ*theta*H);
        if i==1
            T74(i)=(T73(i)/deltaR/((2*deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T64(i)/(2*Rz)+T84(i)/(2*Rz)+T74(i+1)/(2*Rtheta)+T74(10)/(2*Rtheta)+T_infinity/Rh)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/(2*Rz)+1/(2*Rz)+1/(2*Rtheta)+1/(2*Rtheta)+1/Rh);
            continue
        end
        T74(i)=(T73(i)/deltaR/((2*deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T64(i)/(2*Rz)+T84(i)/(2*Rz)+T74(i+1)/(2*Rtheta)+T74(i-1)/(2*Rtheta)+T_infinity/Rh)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/(2*Rz)+1/(2*Rz)+1/(2*Rtheta)+1/(2*Rtheta)+1/Rh);
    
    end
    
    for i=6:10
        H=h(4);
        rm=3*deltaR;
        k_conductivity=kc;
        T_infinity=30+273;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);Rh=1/((rm+deltaR)*deltaZ*theta*H);
        if i==10
            T74(i)=(T73(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T64(i)/(2*Rz)+T84(i)/(2*Rz)+T74(1)/(2*Rtheta)+T74(i-1)/(2*Rtheta)+T_infinity/Rh)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/(2*Rz)+1/(2*Rz)+1/(2*Rtheta)+1/(2*Rtheta)+1/Rh);
            continue
        end
        T74(i)=(T73(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T64(i)/(2*Rz)+T84(i)/(2*Rz)+T74(i+1)/(2*Rtheta)+T74(i-1)/(2*Rtheta)+T_infinity/Rh)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/(2*Rz)+1/(2*Rz)+1/(2*Rtheta)+1/(2*Rtheta)+1/Rh);
    end
    %%T73 T72
    for i=1:10
        rm=2*deltaR;
        k_conductivity=kc;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);
        if i==1
           T73(i)=(T72(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T74(i)/Rr+T73(i+1)/Rtheta+T73(10)/Rtheta+T63(i)/Rz+T83(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
           continue
        end 
        if i==10
          T73(i)=(T72(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T74(i)/Rr+T73(i-1)/Rtheta+T73(1)/Rtheta+T63(i)/Rz+T83(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
           continue
        end 
        T73(i)=(T72(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T74(i)/Rr+T73(i+1)/Rtheta+T73(i-1)/Rtheta+T63(i)/Rz+T83(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
           
    end
    
    for i=1:10
        rm=1*deltaR;
        k_conductivity=kc;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);
        if i==1
           T72(i)=(T_71/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T73(i)/Rr+T72(i+1)/Rtheta+T72(10)/Rtheta+T82(i)/Rz+T62(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
           continue
        end 
        if i==10
           T72(i)=(T_71/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T73(i)/Rr+T72(1)/Rtheta+T72(i-1)/Rtheta+T82(i)/Rz+T62(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
           continue
        end 
        T72(i)=(T_71/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T73(i)/Rr+T72(i+1)/Rtheta+T72(i-1)/Rtheta+T82(i)/Rz+T62(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
    end
    %T71
    l=0;k_conductivity=kc;
    for i=1:10
        l=l+T72(i)/(2*deltaR)/(deltaR*theta*deltaZ*k_conductivity);    
    end
    T_71=(l+T_61/deltaZ/(pi*k_conductivity*deltaR^2)+T_81/deltaZ/(pi*k_conductivity*deltaR^2))/(10/(2*deltaR)/(deltaR*theta*deltaZ*k_conductivity)+2/deltaZ/(pi*k_conductivity*deltaR^2));
    %%
    %%8)T84
    for i=1:5
        H=h(3);
        rm=3*deltaR;
        k_conductivity=kc;
        T_infinity=40+273;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);Rh=1/((rm+deltaR)*deltaZ*theta*H);
        if i==1
            T84(i)=(T83(i)/deltaR/((2*deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T74(i)/(2*Rz)+T94(i)/(2*Rz)+T84(i+1)/(2*Rtheta)+T84(10)/(2*Rtheta)+T_infinity/Rh)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/(2*Rz)+1/(2*Rz)+1/(2*Rtheta)+1/(2*Rtheta)+1/Rh);
            continue
        end
        T84(i)=(T83(i)/deltaR/((2*deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T74(i)/(2*Rz)+T94(i)/(2*Rz)+T84(i+1)/(2*Rtheta)+T84(i-1)/(2*Rtheta)+T_infinity/Rh)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/(2*Rz)+1/(2*Rz)+1/(2*Rtheta)+1/(2*Rtheta)+1/Rh);
    
    end
    
    for i=6:10
        H=h(4);
        rm=3*deltaR;
        k_conductivity=kc;
        T_infinity=30+273;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);Rh=1/((rm+deltaR)*deltaZ*theta*H);
        if i==10
            T84(i)=(T83(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T74(i)/(2*Rz)+T94(i)/(2*Rz)+T84(1)/(2*Rtheta)+T84(i-1)/(2*Rtheta)+T_infinity/Rh)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/(2*Rz)+1/(2*Rz)+1/(2*Rtheta)+1/(2*Rtheta)+1/Rh);
            continue
        end
        T84(i)=(T83(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T74(i)/(2*Rz)+T94(i)/(2*Rz)+T84(i+1)/(2*Rtheta)+T84(i-1)/(2*Rtheta)+T_infinity/Rh)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/(2*Rz)+1/(2*Rz)+1/(2*Rtheta)+1/(2*Rtheta)+1/Rh);
    end
    %%T83 T82
    for i=1:10
        rm=2*deltaR;
        k_conductivity=kc;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);
        if i==1
           T83(i)=(T82(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T84(i)/Rr+T83(i+1)/Rtheta+T83(10)/Rtheta+T73(i)/Rz+T93(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
           continue
        end 
        if i==10
          T83(i)=(T82(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T84(i)/Rr+T83(i-1)/Rtheta+T83(1)/Rtheta+T73(i)/Rz+T93(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
           continue
        end 
        T83(i)=(T82(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T84(i)/Rr+T83(i+1)/Rtheta+T83(i-1)/Rtheta+T73(i)/Rz+T93(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
           
    end
    
    for i=1:10
        rm=1*deltaR;
        k_conductivity=kc;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);
        if i==1
           T82(i)=(T_81/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T83(i)/Rr+T82(i+1)/Rtheta+T82(10)/Rtheta+T72(i)/Rz+T92(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
           continue
        end 
        if i==10
           T82(i)=(T_81/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T83(i)/Rr+T82(1)/Rtheta+T82(i-1)/Rtheta+T72(i)/Rz+T92(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
           continue
        end 
        T82(i)=(T_81/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T83(i)/Rr+T82(i+1)/Rtheta+T82(i-1)/Rtheta+T72(i)/Rz+T92(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
    end
    %T81
    l=0;k_conductivity=kc;
    for i=1:10
        l=l+T82(i)/(2*deltaR)/(deltaR*theta*deltaZ*k_conductivity);    
    end
    T_81=(l+T_71/deltaZ/(pi*k_conductivity*deltaR^2)+T_91/deltaZ/(pi*k_conductivity*deltaR^2))/(10/(2*deltaR)/(deltaR*theta*deltaZ*k_conductivity)+2/deltaZ/(pi*k_conductivity*deltaR^2));
    %%
    %%9)T94
    for i=1:5
        H=h(3);
        rm=3*deltaR;
        k_conductivity=kc;
        T_infinity=40+273;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);Rh=1/((rm+deltaR)*deltaZ*theta*H);
        if i==1
            T94(i)=(T93(i)/deltaR/((2*deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T84(i)/(2*Rz)+T104(i)/(2*Rz)+T94(i+1)/(2*Rtheta)+T94(10)/(2*Rtheta)+T_infinity/Rh)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/(2*Rz)+1/(2*Rz)+1/(2*Rtheta)+1/(2*Rtheta)+1/Rh);
            continue
        end
        T94(i)=(T93(i)/deltaR/((2*deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T84(i)/(2*Rz)+T104(i)/(2*Rz)+T94(i+1)/(2*Rtheta)+T94(i-1)/(2*Rtheta)+T_infinity/Rh)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/(2*Rz)+1/(2*Rz)+1/(2*Rtheta)+1/(2*Rtheta)+1/Rh);
    
    end
    
    for i=6:10
        H=h(4);
        rm=3*deltaR;
        k_conductivity=kc;
        T_infinity=30+273;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);Rh=1/((rm+deltaR)*deltaZ*theta*H);
        if i==10
            T94(i)=(T93(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T84(i)/(2*Rz)+T104(i)/(2*Rz)+T94(1)/(2*Rtheta)+T94(i-1)/(2*Rtheta)+T_infinity/Rh)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/(2*Rz)+1/(2*Rz)+1/(2*Rtheta)+1/(2*Rtheta)+1/Rh);
            continue
        end
        T94(i)=(T93(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T84(i)/(2*Rz)+T104(i)/(2*Rz)+T94(i+1)/(2*Rtheta)+T94(i-1)/(2*Rtheta)+T_infinity/Rh)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/(2*Rz)+1/(2*Rz)+1/(2*Rtheta)+1/(2*Rtheta)+1/Rh);
    end
    %%T93 T92
    for i=1:10
        rm=2*deltaR;
        k_conductivity=kc;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);
        if i==1
           T93(i)=(T92(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T94(i)/Rr+T93(i+1)/Rtheta+T93(10)/Rtheta+T83(i)/Rz+T103(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
           continue
        end 
        if i==10
          T93(i)=(T92(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T94(i)/Rr+T93(i-1)/Rtheta+T93(1)/Rtheta+T83(i)/Rz+T103(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
           continue
        end 
        T93(i)=(T92(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T94(i)/Rr+T93(i+1)/Rtheta+T93(i-1)/Rtheta+T83(i)/Rz+T103(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
           
    end
    
    for i=1:10
        rm=1*deltaR;
        k_conductivity=kc;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);
        if i==1
           T92(i)=(T_91/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T93(i)/Rr+T92(i+1)/Rtheta+T92(10)/Rtheta+T82(i)/Rz+T102(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
           continue
        end 
        if i==10
           T92(i)=(T_91/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T93(i)/Rr+T92(1)/Rtheta+T92(i-1)/Rtheta+T82(i)/Rz+T102(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
           continue
        end 
        T92(i)=(T_91/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T93(i)/Rr+T92(i+1)/Rtheta+T92(i-1)/Rtheta+T82(i)/Rz+T102(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
    end
    %T91
    l=0;k_conductivity=kc;
    for i=1:10
        l=l+T92(i)/(2*deltaR)/(deltaR*theta*deltaZ*k_conductivity);    
    end
    T_91=(l+T_81/deltaZ/(pi*k_conductivity*deltaR^2)+T_101/deltaZ/(pi*k_conductivity*deltaR^2))/(10/(2*deltaR)/(deltaR*theta*deltaZ*k_conductivity)+2/deltaZ/(pi*k_conductivity*deltaR^2));
    %%
    %%10)T104
    for i=1:5
        H=h(3);
        rm=3*deltaR;
        k_conductivity=kc;
        T_infinity=40+273;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);Rh=1/((rm+deltaR)*deltaZ*theta*H);
        if i==1
            T104(i)=(T103(i)/deltaR/((2*deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T94(i)/(2*Rz)+T114(i)/(2*Rz)+T104(i+1)/(2*Rtheta)+T104(10)/(2*Rtheta)+T_infinity/Rh)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/(2*Rz)+1/(2*Rz)+1/(2*Rtheta)+1/(2*Rtheta)+1/Rh);
            continue
        end
        T104(i)=(T103(i)/deltaR/((2*deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T94(i)/(2*Rz)+T114(i)/(2*Rz)+T104(i+1)/(2*Rtheta)+T104(i-1)/(2*Rtheta)+T_infinity/Rh)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/(2*Rz)+1/(2*Rz)+1/(2*Rtheta)+1/(2*Rtheta)+1/Rh);
    
    end
    
    for i=6:10
        H=h(4);
        rm=3*deltaR;
        k_conductivity=kc;
        T_infinity=30+273;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);Rh=1/((rm+deltaR)*deltaZ*theta*H);
        if i==10
            T104(i)=(T103(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T104(i)/(2*Rz)+T114(i)/(2*Rz)+T104(1)/(2*Rtheta)+T104(i-1)/(2*Rtheta)+T_infinity/Rh)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/(2*Rz)+1/(2*Rz)+1/(2*Rtheta)+1/(2*Rtheta)+1/Rh);
            continue
        end
        T104(i)=(T103(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T94(i)/(2*Rz)+T114(i)/(2*Rz)+T104(i+1)/(2*Rtheta)+T104(i-1)/(2*Rtheta)+T_infinity/Rh)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/(2*Rz)+1/(2*Rz)+1/(2*Rtheta)+1/(2*Rtheta)+1/Rh);
    end
    %%T103 T102
    for i=1:10
        rm=2*deltaR;
        k_conductivity=kc;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);
        if i==1
           T103(i)=(T102(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T104(i)/Rr+T103(i+1)/Rtheta+T103(10)/Rtheta+T93(i)/Rz+T113(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
           continue
        end 
        if i==10
          T103(i)=(T102(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T104(i)/Rr+T103(i-1)/Rtheta+T103(1)/Rtheta+T93(i)/Rz+T113(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
           continue
        end 
        T103(i)=(T102(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T104(i)/Rr+T103(i+1)/Rtheta+T103(i-1)/Rtheta+T93(i)/Rz+T113(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
           
    end
    
    for i=1:10
        rm=1*deltaR;
        k_conductivity=kc;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);
        if i==1
           T102(i)=(T_101/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T103(i)/Rr+T102(i+1)/Rtheta+T102(10)/Rtheta+T92(i)/Rz+T112(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
           continue
        end 
        if i==10
           T102(i)=(T_101/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T103(i)/Rr+T102(1)/Rtheta+T102(i-1)/Rtheta+T92(i)/Rz+T112(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
           continue
        end 
        T102(i)=(T_101/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T103(i)/Rr+T102(i+1)/Rtheta+T102(i-1)/Rtheta+T92(i)/Rz+T112(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
    end
    %T101
    l=0;k_conductivity=kc;
    for i=1:10
        l=l+T102(i)/(2*deltaR)/(deltaR*theta*deltaZ*k_conductivity);    
    end
    T_101=(l+T_91/deltaZ/(pi*k_conductivity*deltaR^2)+T_111/deltaZ/(pi*k_conductivity*deltaR^2))/(10/(2*deltaR)/(deltaR*theta*deltaZ*k_conductivity)+2/deltaZ/(pi*k_conductivity*deltaR^2));
    %%
    %%11)T114
    for i=1:5
        H=h(3);
        rm=3*deltaR;
        k_conductivity=kc;
        T_infinity=40+273;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);Rh=1/((rm+deltaR)*deltaZ*theta*H);
        if i==1
            T114(i)=(T113(i)/deltaR/((2*deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T104(i)/(2*Rz)+T124(i)/(2*Rz)+T114(i+1)/(2*Rtheta)+T114(10)/(2*Rtheta)+T_infinity/Rh)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/(2*Rz)+1/(2*Rz)+1/(2*Rtheta)+1/(2*Rtheta)+1/Rh);
            continue
        end
        T114(i)=(T113(i)/deltaR/((2*deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T104(i)/(2*Rz)+T124(i)/(2*Rz)+T114(i+1)/(2*Rtheta)+T114(i-1)/(2*Rtheta)+T_infinity/Rh)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/(2*Rz)+1/(2*Rz)+1/(2*Rtheta)+1/(2*Rtheta)+1/Rh);
    
    end
    
    for i=6:10
        H=h(4);
        rm=3*deltaR;
        k_conductivity=kc;
        T_infinity=30+273;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);Rh=1/((rm+deltaR)*deltaZ*theta*H);
        if i==10
            T114(i)=(T113(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T104(i)/(2*Rz)+T124(i)/(2*Rz)+T114(1)/(2*Rtheta)+T114(i-1)/(2*Rtheta)+T_infinity/Rh)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/(2*Rz)+1/(2*Rz)+1/(2*Rtheta)+1/(2*Rtheta)+1/Rh);
            continue
        end
        T114(i)=(T113(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T104(i)/(2*Rz)+T124(i)/(2*Rz)+T114(i+1)/(2*Rtheta)+T114(i-1)/(2*Rtheta)+T_infinity/Rh)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/(2*Rz)+1/(2*Rz)+1/(2*Rtheta)+1/(2*Rtheta)+1/Rh);
    end
    %%T113 T112
    for i=1:10
        rm=2*deltaR;
        k_conductivity=kc;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);
        if i==1
           T113(i)=(T112(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T114(i)/Rr+T113(i+1)/Rtheta+T113(10)/Rtheta+T103(i)/Rz+T123(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
           continue
        end 
        if i==10
          T113(i)=(T112(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T114(i)/Rr+T113(i-1)/Rtheta+T113(1)/Rtheta+T103(i)/Rz+T123(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
           continue
        end 
        T113(i)=(T112(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T114(i)/Rr+T113(i+1)/Rtheta+T113(i-1)/Rtheta+T103(i)/Rz+T123(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
           
    end
    
    for i=1:10
        rm=1*deltaR;
        k_conductivity=kc;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);
        if i==1
           T112(i)=(T_111/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T113(i)/Rr+T112(i+1)/Rtheta+T112(10)/Rtheta+T102(i)/Rz+T122(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
           continue
        end 
        if i==10
           T112(i)=(T_111/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T113(i)/Rr+T112(1)/Rtheta+T112(i-1)/Rtheta+T102(i)/Rz+T122(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
           continue
        end 
        T112(i)=(T_111/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T113(i)/Rr+T112(i+1)/Rtheta+T112(i-1)/Rtheta+T102(i)/Rz+T122(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
    end
    %T111
    l=0;k_conductivity=kc;
    for i=1:10
        l=l+T112(i)/(2*deltaR)/(deltaR*theta*deltaZ*k_conductivity);    
    end
    T_111=(l+T_101/deltaZ/(pi*k_conductivity*deltaR^2)+T_121/deltaZ/(pi*k_conductivity*deltaR^2))/(10/(2*deltaR)/(deltaR*theta*deltaZ*k_conductivity)+2/deltaZ/(pi*k_conductivity*deltaR^2));
    %%
    %%12)T124
    for i=1:5
        H=h(3);
        rm=3*deltaR;
        k_conductivity=kc;
        T_infinity=40+273;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);Rh=1/((rm+deltaR)*deltaZ*theta*H);
        if i==1
            T124(i)=(T123(i)/deltaR/((2*deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T114(i)/(2*Rz)+T134(i)/(2*Rz)+T124(i+1)/(2*Rtheta)+T124(10)/(2*Rtheta)+T_infinity/Rh)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/(2*Rz)+1/(2*Rz)+1/(2*Rtheta)+1/(2*Rtheta)+1/Rh);
            continue
        end
        T124(i)=(T123(i)/deltaR/((2*deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T114(i)/(2*Rz)+T134(i)/(2*Rz)+T124(i+1)/(2*Rtheta)+T124(i-1)/(2*Rtheta)+T_infinity/Rh)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/(2*Rz)+1/(2*Rz)+1/(2*Rtheta)+1/(2*Rtheta)+1/Rh);
    
    end
    
    for i=6:10
        H=h(4);
        rm=3*deltaR;
        k_conductivity=kc;
        T_infinity=30+273;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);Rh=1/((rm+deltaR)*deltaZ*theta*H);
        if i==10
            T124(i)=(T123(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T114(i)/(2*Rz)+T134(i)/(2*Rz)+T124(1)/(2*Rtheta)+T124(i-1)/(2*Rtheta)+T_infinity/Rh)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/(2*Rz)+1/(2*Rz)+1/(2*Rtheta)+1/(2*Rtheta)+1/Rh);
            continue
        end
        T124(i)=(T123(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T114(i)/(2*Rz)+T134(i)/(2*Rz)+T124(i+1)/(2*Rtheta)+T124(i-1)/(2*Rtheta)+T_infinity/Rh)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/(2*Rz)+1/(2*Rz)+1/(2*Rtheta)+1/(2*Rtheta)+1/Rh);
    end
    %%T123 T122
    for i=1:10
        rm=2*deltaR;
        k_conductivity=kc;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);
        if i==1
           T123(i)=(T122(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T124(i)/Rr+T123(i+1)/Rtheta+T123(10)/Rtheta+T113(i)/Rz+T133(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
           continue
        end 
        if i==10
          T123(i)=(T122(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T124(i)/Rr+T123(i-1)/Rtheta+T123(1)/Rtheta+T113(i)/Rz+T133(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
           continue
        end 
        T123(i)=(T122(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T124(i)/Rr+T123(i+1)/Rtheta+T123(i-1)/Rtheta+T113(i)/Rz+T133(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
           
    end
    
    for i=1:10
        rm=1*deltaR;
        k_conductivity=kc;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);
        if i==1
           T122(i)=(T_121/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T123(i)/Rr+T122(i+1)/Rtheta+T122(10)/Rtheta+T112(i)/Rz+T132(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
           continue
        end 
        if i==10
           T122(i)=(T_121/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T123(i)/Rr+T122(1)/Rtheta+T122(i-1)/Rtheta+T112(i)/Rz+T132(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
           continue
        end 
        T122(i)=(T_121/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T123(i)/Rr+T122(i+1)/Rtheta+T122(i-1)/Rtheta+T112(i)/Rz+T132(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
    end
    %T121
    l=0;k_conductivity=kc;
    for i=1:10
        l=l+T122(i)/(2*deltaR)/(deltaR*theta*deltaZ*k_conductivity);    
    end
    T_121=(l+T_111/deltaZ/(pi*k_conductivity*deltaR^2)+T_131/deltaZ/(pi*k_conductivity*deltaR^2))/(10/(2*deltaR)/(deltaR*theta*deltaZ*k_conductivity)+2/deltaZ/(pi*k_conductivity*deltaR^2));
    %%
    %%13)T1311
    for i=1:5
        H=h(5);
        rm=10*deltaR;
        k_conductivity=ks;
        T_infinity=40+273;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);Rh=1/((rm+deltaR)*deltaZ*theta*H);
        if i==1
             T1311(i)=(T1310(i)/deltaR/((9*deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T1411(i)/(2*Rz)+T_infinity/1/(21*h(3)*theta*deltaR^2)+T1311(i+1)/(2*Rtheta)+T1311(10)/(2*Rtheta)+T_infinity/Rh)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/1/(21*h(3)*theta*deltaR^2)+1/(2*Rz)+1/(2*Rtheta)+1/(2*Rtheta)+1/Rh);
            continue
        end
        T1311(i)=(T1310(i)/deltaR/((9*deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T1411(i)/(2*Rz)+T_infinity/1/(21*h(3)*theta*deltaR^2)+T1311(i+1)/(2*Rtheta)+T1311(i-1)/(2*Rtheta)+T_infinity/Rh)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/1/(21*h(3)*theta*deltaR^2)+1/(2*Rz)+1/(2*Rtheta)+1/(2*Rtheta)+1/Rh);
    
    end
    
    for i=6:10
        H=h(6);
        rm=10*deltaR;
        k_conductivity=ks;
        T_infinity=30+273;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);Rh=1/((rm+deltaR)*deltaZ*theta*H);
        if i==10
            T1311(i)=(T1310(i)/deltaR/((9*deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T1411(i)/(2*Rz)+T_infinity/1/(17*h(4)*theta*deltaR^2)+T1311(1)/(2*Rtheta)+T1311(i-1)/(2*Rtheta)+T_infinity/Rh)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/1/(21*h(4)*theta*deltaR^2)+1/(2*Rz)+1/(2*Rtheta)+1/(2*Rtheta)+1/Rh);
            continue
        end
        T1311(i)=(T1310(i)/deltaR/((9*deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T1411(i)/(2*Rz)+T_infinity/1/(17*h(4)*theta*deltaR^2)+T1311(i+1)/(2*Rtheta)+T1311(i-1)/(2*Rtheta)+T_infinity/Rh)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/1/(21*h(4)*theta*deltaR^2)+1/(2*Rz)+1/(2*Rtheta)+1/(2*Rtheta)+1/Rh);
    end
    % T1310 T139 T138 T137 T136 T135 
    for i=1:5
        rm=9*deltaR;
        k_conductivity=ks;
        T_infinity=40+273;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);
        if i==1
           T1310(i)=(T139(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T1311(i)/Rr+T1310(i+1)/Rtheta+T1310(10)/Rtheta+T1410(i)/Rz+T_infinity/(1/(h(3)*17*theta*deltaR^2)))/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+1/Rz+1/(1/(h(3)*19*theta*deltaR^2)));
           continue
        end
        T1310(i)=(T139(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T1311(i)/Rr+T1310(i+1)/Rtheta+T1310(i-1)/Rtheta+T1410(i)/Rz+T_infinity/(1/(h(3)*17*theta*deltaR^2)))/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+1/Rz+1/(1/(h(3)*19*theta*deltaR^2)));
    end
    
    for i=6:10
        rm=9*deltaR;
        k_conductivity=ks;
        T_infinity=30+273;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);
        if i==10
           T1310(i)=(T139(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T1311(i)/Rr+T1310(1)/Rtheta+T1310(i-1)/Rtheta+T1410(i)/Rz+T_infinity/(1/(15*h(4)*theta*deltaR^2)))/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+1/Rz+1/(1/(19*h(4)*theta*deltaR^2)));
           continue
        end
        T1310(i)=(T139(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T1311(i)/Rr+T1310(i+1)/Rtheta+T1310(i-1)/Rtheta+T1410(i)/Rz+T_infinity/(1/(15*h(4)*theta*deltaR^2)))/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+1/Rz+1/(1/(19*h(4)*theta*deltaR^2)));
    end
    
    for i=1:5
        rm=8*deltaR;
        k_conductivity=ks;
        T_infinity=40+273;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);
        if i==1
           T139(i)=(T138(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T1310(i)/Rr+T139(i+1)/Rtheta+T139(10)/Rtheta+T149(i)/Rz+T_infinity/(1/(h(3)*17*theta*deltaR^2)))/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+1/Rz+1/(1/(h(3)*17*theta*deltaR^2)));
           continue
        end
        T139(i)=(T138(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T1310(i)/Rr+T139(i+1)/Rtheta+T139(i-1)/Rtheta+T149(i)/Rz+T_infinity/(1/(h(3)*17*theta*deltaR^2)))/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+1/Rz+1/(1/(h(3)*17*theta*deltaR^2)));
    end
    
    for i=6:10
        rm=8*deltaR;
        k_conductivity=ks;
        T_infinity=30+273;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);
        if i==10
           T139(i)=(T138(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T1310(i)/Rr+T139(1)/Rtheta+T139(i-1)/Rtheta+T149(i)/Rz+T_infinity/(1/(17*h(4)*theta*deltaR^2)))/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+1/Rz+1/(1/(17*h(4)*theta*deltaR^2)));
           continue
        end
        T139(i)=(T138(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T1310(i)/Rr+T139(i+1)/Rtheta+T139(i-1)/Rtheta+T149(i)/Rz+T_infinity/(1/(17*h(4)*theta*deltaR^2)))/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+1/Rz+1/(1/(17*h(4)*theta*deltaR^2)));
    end
    
    for i=1:5
        rm=7*deltaR;
        k_conductivity=ks;
        T_infinity=40+273;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);
        if i==1
           T138(i)=(T137(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T139(i)/Rr+T138(i+1)/Rtheta+T138(10)/Rtheta+T148(i)/Rz+T_infinity/(1/(h(3)*15*theta*deltaR^2)))/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+1/Rz+1/(1/(h(3)*15*theta*deltaR^2)));
           continue
        end
        T138(i)=(T137(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T139(i)/Rr+T138(i+1)/Rtheta+T138(i-1)/Rtheta+T148(i)/Rz+T_infinity/(1/(h(3)*15*theta*deltaR^2)))/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+1/Rz+1/(1/(h(3)*15*theta*deltaR^2)));
    end
    
    for i=6:10
        rm=7*deltaR;
        k_conductivity=ks;
        T_infinity=30+273;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);
        if i==10
           T138(i)=(T137(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T139(i)/Rr+T138(1)/Rtheta+T138(i-1)/Rtheta+T148(i)/Rz+T_infinity/(1/(15*h(4)*theta*deltaR^2)))/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+1/Rz+1/(1/(15*h(4)*theta*deltaR^2)));
           continue
        end
        T138(i)=(T137(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T139(i)/Rr+T138(i+1)/Rtheta+T138(i-1)/Rtheta+T148(i)/Rz+T_infinity/(1/(15*h(4)*theta*deltaR^2)))/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+1/Rz+1/(1/(15*h(4)*theta*deltaR^2)));
    end
    
    for i=1:5
        rm=6*deltaR;
        k_conductivity=ks;
        T_infinity=40+273;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);
        if i==1
           T137(i)=(T136(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T138(i)/Rr+T137(i+1)/Rtheta+T137(10)/Rtheta+T147(i)/Rz+T_infinity/(1/(h(3)*13*theta*deltaR^2)))/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+1/Rz+1/(1/(h(3)*13*theta*deltaR^2)));
           continue
        end
        T137(i)=(T136(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T138(i)/Rr+T137(i+1)/Rtheta+T137(i-1)/Rtheta+T147(i)/Rz+T_infinity/(1/(h(3)*13*theta*deltaR^2)))/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+1/Rz+1/(1/(h(3)*13*theta*deltaR^2)));
    end
    
    for i=6:10
        rm=6*deltaR;
        k_conductivity=ks;
        T_infinity=30+273;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);
        if i==10
           T137(i)=(T136(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T138(i)/Rr+T137(1)/Rtheta+T137(i-1)/Rtheta+T147(i)/Rz+T_infinity/(1/(13*h(4)*theta*deltaR^2)))/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+1/Rz+1/(1/(13*h(4)*theta*deltaR^2)));
           continue
        end
        T137(i)=(T136(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T138(i)/Rr+T137(i+1)/Rtheta+T137(i-1)/Rtheta+T147(i)/Rz+T_infinity/(1/(13*h(4)*theta*deltaR^2)))/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+1/Rz+1/(1/(13*h(4)*theta*deltaR^2)));
    end
    
    for i=1:5
        rm=5*deltaR;
        k_conductivity=ks;
        T_infinity=40+273;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);
        if i==1
           T136(i)=(T135(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T137(i)/Rr+T136(i+1)/Rtheta+T136(10)/Rtheta+T146(i)/Rz+T_infinity/(1/(h(3)*11*theta*deltaR^2)))/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+1/Rz+1/(1/(h(3)*11*theta*deltaR^2)));
           continue
        end
        T136(i)=(T135(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T137(i)/Rr+T136(i+1)/Rtheta+T136(i-1)/Rtheta+T146(i)/Rz+T_infinity/(1/(h(3)*11*theta*deltaR^2)))/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+1/Rz+1/(1/(h(3)*11*theta*deltaR^2)));
    end
    
    for i=6:10
        rm=5*deltaR;
        k_conductivity=ks;
        T_infinity=30+273;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);
        if i==10
           T136(i)=(T135(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T137(i)/Rr+T136(1)/Rtheta+T136(i-1)/Rtheta+T146(i)/Rz+T_infinity/(1/(11*h(4)*theta*deltaR^2)))/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+1/Rz+1/(1/(11*h(4)*theta*deltaR^2)));
           continue
        end
        T136(i)=(T135(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T137(i)/Rr+T136(i+1)/Rtheta+T136(i-1)/Rtheta+T146(i)/Rz+T_infinity/(1/(11*h(4)*theta*deltaR^2)))/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+1/Rz+1/(1/(11*h(4)*theta*deltaR^2)));
    end
    
    for i=1:5
        rm=4*deltaR;
        k_conductivity=ks;
        T_infinity=40+273;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);
        if i==1
           T135(i)=(T134(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T136(i)/Rr+T135(i+1)/Rtheta+T135(10)/Rtheta+T145(i)/Rz+T_infinity/(1/(h(3)*9*theta*deltaR^2)))/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+1/Rz+1/(1/(h(3)*9*theta*deltaR^2)));
           continue
        end
        T135(i)=(T134(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T136(i)/Rr+T135(i+1)/Rtheta+T135(i-1)/Rtheta+T145(i)/Rz+T_infinity/(1/(h(3)*9*theta*deltaR^2)))/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+1/Rz+1/(1/(h(3)*9*theta*deltaR^2)));
    end
    
    for i=6:10
        rm=4*deltaR;
        k_conductivity=ks;
        T_infinity=30+273;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);
        if i==10
           T135(i)=(T134(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T136(i)/Rr+T135(1)/Rtheta+T135(i-1)/Rtheta+T145(i)/Rz+T_infinity/(1/(9*h(4)*theta*deltaR^2)))/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+1/Rz+1/(1/(9*h(4)*theta*deltaR^2)));
           continue
        end
        T135(i)=(T134(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T136(i)/Rr+T135(i+1)/Rtheta+T135(i-1)/Rtheta+T145(i)/Rz+T_infinity/(1/(9*h(4)*theta*deltaR^2)))/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+1/Rz+1/(1/(9*h(4)*theta*deltaR^2)));
    end
    %T134
    for i=1:5
        rm=3*deltaR;
        k_conductivity=ks;
        T_infinity=40+273;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);
        if i==1
           T134(i)=(T133(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*kc))+T135(i)/Rr+T134(i+1)/Rtheta+T134(10)/Rtheta+T144(i)/Rz+T_infinity/(2/h(3)*theta*deltaR^2)+T124(i)/(2*Rz))/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*kc))+1/Rr+2/Rtheta+1/Rz+1/(2/h(3)*theta*deltaR^2)+1/(2*Rz));
           continue
        end
        T134(i)=(T133(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*kc))+T135(i)/Rr+T134(i+1)/Rtheta+T134(i-1)/Rtheta+T144(i)/Rz+T_infinity/(2/h(3)*theta*deltaR^2)+T124(i)/(2*Rz))/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*kc))+1/Rr+2/Rtheta+1/Rz+1/(2/h(3)*theta*deltaR^2)+1/(2*Rz));
    end
    
    for i=6:10
        rm=3*deltaR;
        k_conductivity=ks;
        T_infinity=30+273;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);
        if i==10
           T134(i)=(T133(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*kc))+T135(i)/Rr+T134(1)/Rtheta+T134(i-1)/Rtheta+T144(i)/Rz+T_infinity/(2/h(4)*theta*deltaR^2)+T124(i)/(2*Rz))/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*kc))+1/Rr+2/Rtheta+1/Rz+1/(2/h(4)*theta*deltaR^2)+1/(2*Rz));
           continue
        end
        T134(i)=(T133(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*kc))+T135(i)/Rr+T134(i+1)/Rtheta+T134(i-1)/Rtheta+T144(i)/Rz+T_infinity/(2/h(4)*theta*deltaR^2)+T124(i)/(2*Rz))/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*kc))+1/Rr+2/Rtheta+1/Rz+1/(2/h(4)*theta*deltaR^2)+1/(2*Rz));
    end
    %T133 T132
    for i=1:10
        rm=2*deltaR;
        k_conductivity=kc;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);
        if i==1
           T133(i)=(T132(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T134(i)/Rr+T133(i+1)/Rtheta+T133(10)/Rtheta+T123(i)/Rz+T143(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
           continue
        end 
        if i==10
           T133(i)=(T132(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T134(i)/Rr+T133(1)/Rtheta+T133(i-1)/Rtheta+T123(i)/Rz+T143(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
           continue
        end 
        T133(i)=(T132(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T134(i)/Rr+T133(i+1)/Rtheta+T133(i-1)/Rtheta+T123(i)/Rz+T143(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
    end
    for i=1:10
        rm=1*deltaR;
        k_conductivity=kc;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);
        if i==1
           T132(i)=(T_131/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T133(i)/Rr+T132(i+1)/Rtheta+T132(10)/Rtheta+T122(i)/Rz+T142(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
           continue
        end 
        if i==10
           T132(i)=(T_131/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T133(i)/Rr+T132(1)/Rtheta+T132(i-1)/Rtheta+T122(i)/Rz+T142(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
           continue
        end 
        T132(i)=(T_131/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T133(i)/Rr+T132(i+1)/Rtheta+T132(i-1)/Rtheta+T122(i)/Rz+T142(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
    end
    
    %T131
    l=0;k_conductivity=kc;
    for i=1:10
        l=l+T132(i)/(2*deltaR)/(deltaR*theta*deltaZ*k_conductivity);    
    end
    T_131=(l+T_121/deltaZ/(pi*k_conductivity*deltaR^2)+T_141/deltaZ/(pi*k_conductivity*deltaR^2))/(10/(2*deltaR)/(deltaR*theta*deltaZ*k_conductivity)+2/deltaZ/(pi*k_conductivity*deltaR^2));
    %%
    %%14)T1411
    for i=1:5
        H=h(5);
        rm=10*deltaR;
        k_conductivity=ks;
        T_infinity=40+273;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);Rh=1/((rm+deltaR)*deltaZ*theta*H);
        if i==1
            T1411(i)=(T1410(i)/deltaR/((9*deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T1311(i)/(2*Rz)+T1511(i)/(2*Rz)+T1411(i+1)/(2*Rtheta)+T1411(10)/(2*Rtheta)+T_infinity/Rh)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/(2*Rz)+1/(2*Rz)+1/(2*Rtheta)+1/(2*Rtheta)+1/Rh);
            continue
        end
        T1411(i)=(T1410(i)/deltaR/((9*deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T1311(i)/(2*Rz)+T1511(i)/(2*Rz)+T1411(i+1)/(2*Rtheta)+T1411(i-1)/(2*Rtheta)+T_infinity/Rh)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/(2*Rz)+1/(2*Rz)+1/(2*Rtheta)+1/(2*Rtheta)+1/Rh);
    
    end
    
    for i=6:10
        H=h(6);
        rm=10*deltaR;
        k_conductivity=ks;
        T_infinity=30+273;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);Rh=1/((rm+deltaR)*deltaZ*theta*H);
        if i==10
            T1411(i)=(T1410(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T1311(i)/(2*Rz)+T1511(i)/(2*Rz)+T1411(1)/(2*Rtheta)+T1411(i-1)/(2*Rtheta)+T_infinity/Rh)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/(2*Rz)+1/(2*Rz)+1/(2*Rtheta)+1/(2*Rtheta)+1/Rh);
            continue
        end
        T1411(i)=(T1410(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T1311(i)/(2*Rz)+T1511(i)/(2*Rz)+T1411(i+1)/(2*Rtheta)+T1411(i-1)/(2*Rtheta)+T_infinity/Rh)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/(2*Rz)+1/(2*Rz)+1/(2*Rtheta)+1/(2*Rtheta)+1/Rh);
    end
    %T1410  T149 T148 T147 T146 T145
    for i=1:10
        rm=9*deltaR;
        k_conductivity=ks;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);
        if i==1
           T1410(i)=(T149(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T1411(i)/Rr+T1410(i+1)/Rtheta+T1410(10)/Rtheta+T1310(i)/Rz+T1510(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
           continue
        end 
        if i==10
           T1410(i)=(T149(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T1411(i)/Rr+T1410(1)/Rtheta+T1410(i-1)/Rtheta+T1310(i)/Rz+T1510(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
           continue
        end 
        T1410(i)=(T149(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T1411(i)/Rr+T1410(i+1)/Rtheta+T1410(i-1)/Rtheta+T1310(i)/Rz+T1510(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
    end
    
    for i=1:10
        rm=8*deltaR;
        k_conductivity=ks;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);
        if i==1
           T149(i)=(T148(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T1410(i)/Rr+T149(i+1)/Rtheta+T149(10)/Rtheta+T139(i)/Rz+T159(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
           continue
        end 
        if i==10
           T149(i)=(T148(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T1410(i)/Rr+T149(1)/Rtheta+T149(i-1)/Rtheta+T139(i)/Rz+T159(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
           continue
        end 
        T149(i)=(T148(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T1410(i)/Rr+T149(i+1)/Rtheta+T149(i-1)/Rtheta+T139(i)/Rz+T159(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
    end
    
    for i=1:10
        rm=7*deltaR;
        k_conductivity=ks;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);
        if i==1
           T148(i)=(T147(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T149(i)/Rr+T148(i+1)/Rtheta+T148(10)/Rtheta+T138(i)/Rz+T158(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
           continue
        end 
        if i==10
           T148(i)=(T147(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T149(i)/Rr+T148(1)/Rtheta+T148(i-1)/Rtheta+T138(i)/Rz+T158(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
           continue
        end 
        T148(i)=(T147(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T149(i)/Rr+T148(i+1)/Rtheta+T148(i-1)/Rtheta+T138(i)/Rz+T158(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
    end
    
    for i=1:10
        rm=6*deltaR;
        k_conductivity=ks;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);
        if i==1
           T147(i)=(T146(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T148(i)/Rr+T147(i+1)/Rtheta+T147(10)/Rtheta+T137(i)/Rz+T157(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
           continue
        end 
        if i==10
           T147(i)=(T146(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T148(i)/Rr+T147(1)/Rtheta+T147(i-1)/Rtheta+T137(i)/Rz+T157(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
           continue
        end 
        T147(i)=(T146(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T148(i)/Rr+T147(i+1)/Rtheta+T147(i-1)/Rtheta+T137(i)/Rz+T157(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
    end
    
    for i=1:10
        rm=5*deltaR;
        k_conductivity=ks;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);
        if i==1
           T146(i)=(T145(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T147(i)/Rr+T146(i+1)/Rtheta+T146(10)/Rtheta+T136(i)/Rz+T156(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
           continue
        end 
        if i==10
           T146(i)=(T145(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T147(i)/Rr+T146(1)/Rtheta+T146(i-1)/Rtheta+T136(i)/Rz+T156(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
           continue
        end 
        T146(i)=(T145(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T147(i)/Rr+T146(i+1)/Rtheta+T146(i-1)/Rtheta+T136(i)/Rz+T156(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
    end
    
    for i=1:10
        rm=4*deltaR;
        k_conductivity=ks;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);
        if i==1
           T145(i)=(T144(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T146(i)/Rr+T145(i+1)/Rtheta+T145(10)/Rtheta+T135(i)/Rz+T155(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
           continue
        end 
        if i==10
           T145(i)=(T144(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T146(i)/Rr+T145(1)/Rtheta+T145(i-1)/Rtheta+T135(i)/Rz+T155(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
           continue
        end 
        T145(i)=(T144(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T146(i)/Rr+T145(i+1)/Rtheta+T145(i-1)/Rtheta+T135(i)/Rz+T155(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
    end
    %T144
    for i=1:10
        rm=3*deltaR;
        k_conductivity=ks;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);
        if i==1
           T144(i)=(T143(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*kc))+T145(i)/Rr+T144(i+1)/Rtheta+T144(10)/Rtheta+T134(i)/Rz+T154(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*kc))+1/Rr+2/Rtheta+2/Rz);
           continue
        end 
        if i==10
           T144(i)=(T143(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*kc))+T145(i)/Rr+T144(1)/Rtheta+T144(i-1)/Rtheta+T134(i)/Rz+T154(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*kc))+1/Rr+2/Rtheta+2/Rz);
           continue
        end 
        T144(i)=(T143(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*kc))+T145(i)/Rr+T144(i+1)/Rtheta+T144(i-1)/Rtheta+T134(i)/Rz+T154(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*kc))+1/Rr+2/Rtheta+2/Rz);
    end
    %T143 %T142
    for i=1:10
        rm=2*deltaR;
        k_conductivity=kc;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);
        if i==1
           T143(i)=(T142(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T144(i)/Rr+T143(i+1)/Rtheta+T143(10)/Rtheta+T133(i)/Rz+T153(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
           continue
        end 
        if i==10
           T143(i)=(T142(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T144(i)/Rr+T143(1)/Rtheta+T143(i-1)/Rtheta+T133(i)/Rz+T153(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
           continue
        end 
        T143(i)=(T142(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T144(i)/Rr+T143(i+1)/Rtheta+T143(i-1)/Rtheta+T133(i)/Rz+T153(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
    end
    for i=1:10
        rm=1*deltaR;
        k_conductivity=kc;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);
        if i==1
           T142(i)=(T_141/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T143(i)/Rr+T42(i+1)/Rtheta+T142(10)/Rtheta+T132(i)/Rz+T152(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
           continue
        end 
        if i==10
           T142(i)=(T_141/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T143(i)/Rr+T142(1)/Rtheta+T142(i-1)/Rtheta+T132(i)/Rz+T152(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
           continue
        end 
        T142(i)=(T_141/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T143(i)/Rr+T142(i+1)/Rtheta+T142(i-1)/Rtheta+T132(i)/Rz+T152(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
    end
    %T41
    l=0;k_conductivity=kc;
    for i=1:10
        l=l+T142(i)/(2*deltaR)/(deltaR*theta*deltaZ*k_conductivity);    
    end
    T_141=(l+T_131/deltaZ/(pi*k_conductivity*deltaR^2)+T_151/deltaZ/(pi*k_conductivity*deltaR^2))/(10/(2*deltaR)/(deltaR*theta*deltaZ*k_conductivity)+2/deltaZ/(pi*k_conductivity*deltaR^2));
    %%
    %%15)T1511
    for i=1:5
        H=h(5);
        rm=10*deltaR;
        k_conductivity=ks;
        T_infinity=40+273;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);Rh=1/((rm+deltaR)*deltaZ*theta*H);
        if i==1
            T1511(i)=(T1510(i)/deltaR/((9*deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T1411(i)/(2*Rz)+T1611(i)/(2*Rz)+T1511(i+1)/(2*Rtheta)+T1511(10)/(2*Rtheta)+T_infinity/Rh)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/(2*Rz)+1/(2*Rz)+1/(2*Rtheta)+1/(2*Rtheta)+1/Rh);
            continue
        end
        T1511(i)=(T1510(i)/deltaR/((9*deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T1411(i)/(2*Rz)+T1611(i)/(2*Rz)+T1511(i+1)/(2*Rtheta)+T1511(i-1)/(2*Rtheta)+T_infinity/Rh)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/(2*Rz)+1/(2*Rz)+1/(2*Rtheta)+1/(2*Rtheta)+1/Rh);
    
    end
    
    for i=6:10
        H=h(6);
        rm=10*deltaR;
        k_conductivity=ks;
        T_infinity=30+273;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);Rh=1/((rm+deltaR)*deltaZ*theta*H);
        if i==10
            T1511(i)=(T1510(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T1411(i)/(2*Rz)+T1611(i)/(2*Rz)+T1511(1)/(2*Rtheta)+T1511(i-1)/(2*Rtheta)+T_infinity/Rh)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/(2*Rz)+1/(2*Rz)+1/(2*Rtheta)+1/(2*Rtheta)+1/Rh);
            continue
        end
        T1511(i)=(T1510(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T1411(i)/(2*Rz)+T1611(i)/(2*Rz)+T1511(i+1)/(2*Rtheta)+T1511(i-1)/(2*Rtheta)+T_infinity/Rh)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/(2*Rz)+1/(2*Rz)+1/(2*Rtheta)+1/(2*Rtheta)+1/Rh);
    end
    %T1510  T159 T158 T157 T156 T155
    for i=1:10
        rm=9*deltaR;
        k_conductivity=ks;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);
        if i==1
           T1510(i)=(T159(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T1511(i)/Rr+T1510(i+1)/Rtheta+T1510(10)/Rtheta+T1410(i)/Rz+T1610(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
           continue
        end 
        if i==10
           T1510(i)=(T159(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T1511(i)/Rr+T1510(1)/Rtheta+T1510(i-1)/Rtheta+T1410(i)/Rz+T1610(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
           continue
        end 
        T1510(i)=(T159(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T1511(i)/Rr+T1510(i+1)/Rtheta+T1510(i-1)/Rtheta+T1410(i)/Rz+T1610(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
    end
    
    for i=1:10
        rm=8*deltaR;
        k_conductivity=ks;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);
        if i==1
           T159(i)=(T158(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T1510(i)/Rr+T159(i+1)/Rtheta+T159(10)/Rtheta+T149(i)/Rz+T169(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
           continue
        end 
        if i==10
           T159(i)=(T158(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T1510(i)/Rr+T159(1)/Rtheta+T159(i-1)/Rtheta+T149(i)/Rz+T169(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
           continue
        end 
        T159(i)=(T158(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T1510(i)/Rr+T159(i+1)/Rtheta+T159(i-1)/Rtheta+T149(i)/Rz+T169(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
    end
    
    for i=1:10
        rm=7*deltaR;
        k_conductivity=ks;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);
        if i==1
           T158(i)=(T157(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T159(i)/Rr+T158(i+1)/Rtheta+T158(10)/Rtheta+T148(i)/Rz+T168(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
           continue
        end 
        if i==10
           T158(i)=(T157(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T159(i)/Rr+T158(1)/Rtheta+T158(i-1)/Rtheta+T148(i)/Rz+T168(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
           continue
        end 
        T158(i)=(T157(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T159(i)/Rr+T158(i+1)/Rtheta+T158(i-1)/Rtheta+T148(i)/Rz+T168(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
    end
    
    for i=1:10
        rm=6*deltaR;
        k_conductivity=ks;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);
        if i==1
           T157(i)=(T156(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T158(i)/Rr+T157(i+1)/Rtheta+T157(10)/Rtheta+T147(i)/Rz+T167(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
           continue
        end 
        if i==10
           T157(i)=(T156(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T158(i)/Rr+T157(1)/Rtheta+T157(i-1)/Rtheta+T147(i)/Rz+T167(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
           continue
        end 
        T157(i)=(T156(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T158(i)/Rr+T157(i+1)/Rtheta+T157(i-1)/Rtheta+T147(i)/Rz+T167(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
    end
    
    for i=1:10
        rm=5*deltaR;
        k_conductivity=ks;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);
        if i==1
           T156(i)=(T155(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T157(i)/Rr+T156(i+1)/Rtheta+T156(10)/Rtheta+T146(i)/Rz+T166(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
           continue
        end 
        if i==10
           T156(i)=(T155(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T157(i)/Rr+T156(1)/Rtheta+T156(i-1)/Rtheta+T146(i)/Rz+T166(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
           continue
        end 
        T156(i)=(T155(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T157(i)/Rr+T156(i+1)/Rtheta+T156(i-1)/Rtheta+T146(i)/Rz+T166(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
    end
    
    for i=1:10
        rm=4*deltaR;
        k_conductivity=ks;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);
        if i==1
           T155(i)=(T154(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T156(i)/Rr+T155(i+1)/Rtheta+T155(10)/Rtheta+T145(i)/Rz+T165(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
           continue
        end 
        if i==10
           T155(i)=(T154(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T156(i)/Rr+T155(1)/Rtheta+T155(i-1)/Rtheta+T145(i)/Rz+T165(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
           continue
        end 
        T155(i)=(T154(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T156(i)/Rr+T155(i+1)/Rtheta+T155(i-1)/Rtheta+T145(i)/Rz+T165(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
    end
    %T154
    for i=1:10
        rm=3*deltaR;
        k_conductivity=ks;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);
        if i==1
           T154(i)=(T153(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*kc))+T155(i)/Rr+T154(i+1)/Rtheta+T154(10)/Rtheta+T144(i)/Rz+T164(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*kc))+1/Rr+2/Rtheta+2/Rz);
           continue
        end 
        if i==10
           T154(i)=(T153(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*kc))+T155(i)/Rr+T154(1)/Rtheta+T154(i-1)/Rtheta+T144(i)/Rz+T164(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*kc))+1/Rr+2/Rtheta+2/Rz);
           continue
        end 
        T154(i)=(T153(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*kc))+T155(i)/Rr+T154(i+1)/Rtheta+T154(i-1)/Rtheta+T144(i)/Rz+T164(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*kc))+1/Rr+2/Rtheta+2/Rz);
    end
    %%T153 T152
    for i=1:10
        rm=2*deltaR;
        k_conductivity=kc;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);
        if i==1
           T153(i)=(T152(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T154(i)/Rr+T153(i+1)/Rtheta+T153(10)/Rtheta+T143(i)/Rz+T163(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
           continue
        end 
        if i==10
           T153(i)=(T152(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T154(i)/Rr+T153(1)/Rtheta+T153(i-1)/Rtheta+T143(i)/Rz+T163(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
           continue
        end 
        T153(i)=(T152(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T154(i)/Rr+T153(i+1)/Rtheta+T153(i-1)/Rtheta+T143(i)/Rz+T163(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
    end
    
    for i=1:10
        rm=1*deltaR;
        k_conductivity=kc;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);
        if i==1
           T152(i)=(T_151/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T153(i)/Rr+T152(i+1)/Rtheta+T152(10)/Rtheta+T142(i)/Rz+T162(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
           continue
        end 
        if i==10
           T152(i)=(T_151/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T153(i)/Rr+T152(1)/Rtheta+T152(i-1)/Rtheta+T142(i)/Rz+T162(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
           continue
        end 
        T152(i)=(T_151/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T153(i)/Rr+T152(i+1)/Rtheta+T152(i-1)/Rtheta+T142(i)/Rz+T162(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
    end
    %T151
    l=0;k_conductivity=kc;
    for i=1:10
        l=l+T152(i)/(2*deltaR)/(deltaR*theta*deltaZ*k_conductivity);    
    end
    T_151=(l+T_141/deltaZ/(pi*k_conductivity*deltaR^2)+T_161/deltaZ/(pi*ks*deltaR^2))/(10/(2*deltaR)/(deltaR*theta*deltaZ*k_conductivity)+1/deltaZ/(pi*k_conductivity*deltaR^2)+1/deltaZ/(pi*ks*deltaR^2));
    %%
    %%16)T1611
    for i=1:5
        H=h(5);
        rm=10*deltaR;
        k_conductivity=ks;
        T_infinity=40+273;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);Rh=1/((rm+deltaR)*deltaZ*theta*H);
        if i==1
            T1611(i)=(T1610(i)/deltaR/((9*deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T1511(i)/(2*Rz)+T1711(i)/(2*Rz)+T1611(i+1)/(2*Rtheta)+T1611(10)/(2*Rtheta)+T_infinity/Rh)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/(2*Rz)+1/(2*Rz)+1/(2*Rtheta)+1/(2*Rtheta)+1/Rh);
            continue
        end
        T1611(i)=(T1610(i)/deltaR/((9*deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T1511(i)/(2*Rz)+T1711(i)/(2*Rz)+T1611(i+1)/(2*Rtheta)+T1611(i-1)/(2*Rtheta)+T_infinity/Rh)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/(2*Rz)+1/(2*Rz)+1/(2*Rtheta)+1/(2*Rtheta)+1/Rh);
    
    end
    
    for i=6:10
        H=h(6);
        rm=10*deltaR;
        k_conductivity=ks;
        T_infinity=30+273;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);Rh=1/((rm+deltaR)*deltaZ*theta*H);
        if i==10
            T1611(i)=(T1610(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T1511(i)/(2*Rz)+T1711(i)/(2*Rz)+T1611(1)/(2*Rtheta)+T1611(i-1)/(2*Rtheta)+T_infinity/Rh)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/(2*Rz)+1/(2*Rz)+1/(2*Rtheta)+1/(2*Rtheta)+1/Rh);
            continue
        end
        T1611(i)=(T1610(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T1511(i)/(2*Rz)+T1711(i)/(2*Rz)+T1611(i+1)/(2*Rtheta)+T1611(i-1)/(2*Rtheta)+T_infinity/Rh)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/(2*Rz)+1/(2*Rz)+1/(2*Rtheta)+1/(2*Rtheta)+1/Rh);
    end
    %T1610  T169 T168 T167 T166 T165 T164 T163 T162 T161
    for i=1:10
        rm=9*deltaR;
        k_conductivity=ks;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);
        if i==1
           T1610(i)=(T169(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T1611(i)/Rr+T1610(i+1)/Rtheta+T1610(10)/Rtheta+T1510(i)/Rz+T1710(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
           continue
        end 
        if i==10
           T1610(i)=(T169(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T1611(i)/Rr+T1610(1)/Rtheta+T1610(i-1)/Rtheta+T1510(i)/Rz+T1710(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
           continue
        end 
        T1610(i)=(T169(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T1611(i)/Rr+T1610(i+1)/Rtheta+T1610(i-1)/Rtheta+T1510(i)/Rz+T1710(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
    end
    
    for i=1:10
        rm=8*deltaR;
        k_conductivity=ks;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);
        if i==1
           T169(i)=(T168(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T1610(i)/Rr+T169(i+1)/Rtheta+T169(10)/Rtheta+T159(i)/Rz+T179(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
           continue
        end 
        if i==10
           T169(i)=(T168(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T1610(i)/Rr+T169(1)/Rtheta+T169(i-1)/Rtheta+T159(i)/Rz+T179(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
           continue
        end 
        T169(i)=(T168(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T1610(i)/Rr+T169(i+1)/Rtheta+T169(i-1)/Rtheta+T159(i)/Rz+T179(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
    end
    
    for i=1:10
        rm=7*deltaR;
        k_conductivity=ks;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);
        if i==1
           T168(i)=(T167(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T169(i)/Rr+T168(i+1)/Rtheta+T168(10)/Rtheta+T158(i)/Rz+T178(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
           continue
        end 
        if i==10
           T168(i)=(T167(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T169(i)/Rr+T168(1)/Rtheta+T168(i-1)/Rtheta+T158(i)/Rz+T178(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
           continue
        end 
        T168(i)=(T167(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T169(i)/Rr+T168(i+1)/Rtheta+T168(i-1)/Rtheta+T158(i)/Rz+T178(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
    end
    
    for i=1:10
        rm=6*deltaR;
        k_conductivity=ks;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);
        if i==1
           T167(i)=(T166(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T168(i)/Rr+T167(i+1)/Rtheta+T167(10)/Rtheta+T157(i)/Rz+T177(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
           continue
        end 
        if i==10
           T167(i)=(T166(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T168(i)/Rr+T167(1)/Rtheta+T167(i-1)/Rtheta+T157(i)/Rz+T177(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
           continue
        end 
        T167(i)=(T166(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T168(i)/Rr+T167(i+1)/Rtheta+T167(i-1)/Rtheta+T157(i)/Rz+T177(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
    end
    
    for i=1:10
        rm=5*deltaR;
        k_conductivity=ks;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);
        if i==1
           T166(i)=(T165(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T167(i)/Rr+T166(i+1)/Rtheta+T166(10)/Rtheta+T156(i)/Rz+T176(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
           continue
        end 
        if i==10
           T166(i)=(T165(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T167(i)/Rr+T166(1)/Rtheta+T166(i-1)/Rtheta+T156(i)/Rz+T176(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
           continue
        end 
        T166(i)=(T165(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T167(i)/Rr+T166(i+1)/Rtheta+T166(i-1)/Rtheta+T156(i)/Rz+T176(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
    end
    
    for i=1:10
        rm=4*deltaR;
        k_conductivity=ks;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);
        if i==1
           T165(i)=(T164(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T166(i)/Rr+T165(i+1)/Rtheta+T165(10)/Rtheta+T155(i)/Rz+T175(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
           continue
        end 
        if i==10
           T165(i)=(T164(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T166(i)/Rr+T165(1)/Rtheta+T165(i-1)/Rtheta+T155(i)/Rz+T175(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
           continue
        end 
        T165(i)=(T164(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T166(i)/Rr+T165(i+1)/Rtheta+T165(i-1)/Rtheta+T155(i)/Rz+T175(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
    end
    
    for i=1:10
        rm=3*deltaR;
        k_conductivity=ks;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);
        if i==1
           T164(i)=(T163(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T165(i)/Rr+T164(i+1)/Rtheta+T164(10)/Rtheta+T154(i)/Rz+T174(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
           continue
        end 
        if i==10
           T164(i)=(T163(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T165(i)/Rr+T164(1)/Rtheta+T164(i-1)/Rtheta+T154(i)/Rz+T174(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
           continue
        end 
        T164(i)=(T163(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T165(i)/Rr+T164(i+1)/Rtheta+T164(i-1)/Rtheta+T154(i)/Rz+T174(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
    end
    for i=1:10
        rm=2*deltaR;
        k_conductivity=ks;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);
        if i==1
           T163(i)=(T162(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T164(i)/Rr+T163(i+1)/Rtheta+T163(10)/Rtheta+T153(i)/Rz+T173(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
           continue
        end 
        if i==10
          T163(i)=(T162(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T164(i)/Rr+T163(i-1)/Rtheta+T163(1)/Rtheta+T153(i)/Rz+T173(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
           continue
        end 
        T163(i)=(T162(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T164(i)/Rr+T163(i+1)/Rtheta+T163(i-1)/Rtheta+T153(i)/Rz+T173(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
           
    end
    
    for i=1:10
        rm=1*deltaR;
        k_conductivity=ks;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);
        if i==1
           T162(i)=(T_161/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T163(i)/Rr+T162(i+1)/Rtheta+T162(10)/Rtheta+T172(i)/Rz+T152(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
           continue
        end 
        if i==10
           T162(i)=(T_161/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T163(i)/Rr+T162(1)/Rtheta+T162(i-1)/Rtheta+T172(i)/Rz+T152(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
           continue
        end 
        T162(i)=(T_161/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T163(i)/Rr+T162(i+1)/Rtheta+T162(i-1)/Rtheta+T172(i)/Rz+T152(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
    end
    %T161
    l=0;k_conductivity=ks;
    for i=1:10
        l=l+T162(i)/(2*deltaR)/(deltaR*theta*deltaZ*k_conductivity);    
    end
    T_161=(l+T_151/deltaZ/(pi*k_conductivity*deltaR^2)+T_171/deltaZ/(pi*k_conductivity*deltaR^2))/(10/(2*deltaR)/(deltaR*theta*deltaZ*k_conductivity)+2/deltaZ/(pi*k_conductivity*deltaR^2));
    %%
    %17)T1711
    for i=1:5
        H=h(5);
        rm=10*deltaR;
        k_conductivity=ks;
        T_infinity=40+273;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);Rh=1/((rm+deltaR)*deltaZ*theta*H);
        if i==1
            T1711(i)=(T1710(i)/deltaR/((9*deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+2*T1611(i)/(2*Rz)+T1711(i+1)/(2*Rtheta)+T1711(10)/(2*Rtheta)+T_infinity/Rh)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+2/(2*Rz)+1/(2*Rtheta)+1/(2*Rtheta)+1/Rh);
            continue
        end
        T1711(i)=(T1710(i)/deltaR/((9*deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+2*T1611(i)/(2*Rz)+T1711(i+1)/(2*Rtheta)+T1711(i-1)/(2*Rtheta)+T_infinity/Rh)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/(2*Rz)+1/(2*Rz)+1/(2*Rtheta)+1/(2*Rtheta)+1/Rh);
    
    end
    
    for i=6:10
        H=h(6);
        rm=10*deltaR;
        k_conductivity=ks;
        T_infinity=30+273;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);Rh=1/((rm+deltaR)*deltaZ*theta*H);
        if i==10
            T1711(i)=(T1710(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T1611(i)/(2*Rz)+T1611(i)/(2*Rz)+T1711(1)/(2*Rtheta)+T1711(i-1)/(2*Rtheta)+T_infinity/Rh)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/(2*Rz)+1/(2*Rz)+1/(2*Rtheta)+1/(2*Rtheta)+1/Rh);
            continue
        end
        T1711(i)=(T1710(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T1611(i)/(2*Rz)+T1611(i)/(2*Rz)+T1711(i+1)/(2*Rtheta)+T1711(i-1)/(2*Rtheta)+T_infinity/Rh)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/(2*Rz)+1/(2*Rz)+1/(2*Rtheta)+1/(2*Rtheta)+1/Rh);
    end
    %T1710  T179 T178 T177 T176 T175 T174 T173 T172 T171
    for i=1:10
        rm=9*deltaR;
        k_conductivity=ks;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);
        if i==1
           T1710(i)=(T179(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T1711(i)/Rr+T1710(i+1)/Rtheta+T1710(10)/Rtheta+T1610(i)/Rz+T1610(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
           continue
        end 
        if i==10
           T1710(i)=(T179(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T1711(i)/Rr+T1710(1)/Rtheta+T1710(i-1)/Rtheta+T1610(i)/Rz+T1610(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
           continue
        end 
        T1710(i)=(T179(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T1711(i)/Rr+T1710(i+1)/Rtheta+T1710(i-1)/Rtheta+T1610(i)/Rz+T1610(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
    end
    
    for i=1:10
        rm=8*deltaR;
        k_conductivity=ks;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);
        if i==1
           T179(i)=(T178(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T1710(i)/Rr+T179(i+1)/Rtheta+T179(10)/Rtheta+T169(i)/Rz+T169(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
           continue
        end 
        if i==10
           T179(i)=(T178(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T1710(i)/Rr+T179(1)/Rtheta+T179(i-1)/Rtheta+T169(i)/Rz+T169(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
           continue
        end 
        T179(i)=(T178(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T1710(i)/Rr+T179(i+1)/Rtheta+T179(i-1)/Rtheta+T169(i)/Rz+T169(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
    end
    
    for i=1:10
        rm=7*deltaR;
        k_conductivity=ks;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);
        if i==1
           T178(i)=(T177(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T179(i)/Rr+T178(i+1)/Rtheta+T178(10)/Rtheta+T168(i)/Rz+T168(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
           continue
        end 
        if i==10
           T178(i)=(T177(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T179(i)/Rr+T178(1)/Rtheta+T178(i-1)/Rtheta+T168(i)/Rz+T168(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
           continue
        end 
        T178(i)=(T177(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T179(i)/Rr+T178(i+1)/Rtheta+T178(i-1)/Rtheta+T168(i)/Rz+T168(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
    end
    
    for i=1:10
        rm=6*deltaR;
        k_conductivity=ks;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);
        if i==1
           T177(i)=(T176(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T178(i)/Rr+T177(i+1)/Rtheta+T177(10)/Rtheta+T167(i)/Rz+T167(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
           continue
        end 
        if i==10
           T177(i)=(T176(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T178(i)/Rr+T177(1)/Rtheta+T177(i-1)/Rtheta+T167(i)/Rz+T167(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
           continue
        end 
        T177(i)=(T176(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T178(i)/Rr+T177(i+1)/Rtheta+T177(i-1)/Rtheta+T167(i)/Rz+T167(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
    end
    
    for i=1:10
        rm=5*deltaR;
        k_conductivity=ks;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);
        if i==1
           T176(i)=(T175(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T177(i)/Rr+T176(i+1)/Rtheta+T176(10)/Rtheta+T166(i)/Rz+T166(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
           continue
        end 
        if i==10
           T176(i)=(T175(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T177(i)/Rr+T176(1)/Rtheta+T176(i-1)/Rtheta+T166(i)/Rz+T166(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
           continue
        end 
        T176(i)=(T175(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T177(i)/Rr+T176(i+1)/Rtheta+T176(i-1)/Rtheta+T166(i)/Rz+T166(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
    end
    
    for i=1:10
        rm=4*deltaR;
        k_conductivity=ks;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);
        if i==1
           T175(i)=(T174(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T176(i)/Rr+T175(i+1)/Rtheta+T175(10)/Rtheta+T165(i)/Rz+T165(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
           continue
        end 
        if i==10
           T175(i)=(T174(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T176(i)/Rr+T175(1)/Rtheta+T175(i-1)/Rtheta+T165(i)/Rz+T165(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
           continue
        end 
        T175(i)=(T174(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T176(i)/Rr+T175(i+1)/Rtheta+T175(i-1)/Rtheta+T165(i)/Rz+T165(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
    end
    
    for i=1:10
        rm=3*deltaR;
        k_conductivity=ks;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);
        if i==1
           T174(i)=(T173(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T175(i)/Rr+T174(i+1)/Rtheta+T174(10)/Rtheta+T164(i)/Rz+T164(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
           continue
        end 
        if i==10
           T174(i)=(T173(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T175(i)/Rr+T174(1)/Rtheta+T174(i-1)/Rtheta+T164(i)/Rz+T164(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
           continue
        end 
        T174(i)=(T173(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T175(i)/Rr+T174(i+1)/Rtheta+T174(i-1)/Rtheta+T164(i)/Rz+T164(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
    end
    for i=1:10
        rm=2*deltaR;
        k_conductivity=ks;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);
        if i==1
           T173(i)=(T172(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T174(i)/Rr+T173(i+1)/Rtheta+T173(10)/Rtheta+T163(i)/Rz+T163(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
           continue
        end 
        if i==10
          T173(i)=(T172(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T174(i)/Rr+T173(i-1)/Rtheta+T173(1)/Rtheta+T163(i)/Rz+T163(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
           continue
        end 
        T173(i)=(T172(i)/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T174(i)/Rr+T173(i+1)/Rtheta+T173(i-1)/Rtheta+T163(i)/Rz+T163(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
           
    end
    
    for i=1:10
        rm=1*deltaR;
        k_conductivity=ks;
        Rr=deltaR/((rm+deltaR/2)*(deltaZ*theta*k_conductivity));Rz=deltaZ/(rm*theta*deltaR*k_conductivity);Rtheta=(rm*theta)/(deltaR*deltaZ*k_conductivity);
        if i==1
           T172(i)=(T_171/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T173(i)/Rr+T172(i+1)/Rtheta+T172(10)/Rtheta+T162(i)/Rz+T162(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
           continue
        end 
        if i==10
           T172(i)=(T_171/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T173(i)/Rr+T172(1)/Rtheta+T172(i-1)/Rtheta+T162(i)/Rz+T162(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
           continue
        end 
        T172(i)=(T_171/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+T173(i)/Rr+T172(i+1)/Rtheta+T172(i-1)/Rtheta+T162(i)/Rz+T162(i)/Rz)/(1/deltaR/((rm-deltaR+deltaR/2)*(deltaZ*theta*k_conductivity))+1/Rr+2/Rtheta+2/Rz);
    end
    %T171
    l=0;k_conductivity=ks;
    for i=1:10
        l=l+T172(i)/(2*deltaR)/(deltaR*theta*deltaZ*k_conductivity);    
    end
    T_171=(l+T_161/deltaZ/(pi*k_conductivity*deltaR^2)+T_161/deltaZ/(pi*k_conductivity*deltaR^2))/(10/(2*deltaR)/(deltaR*theta*deltaZ*k_conductivity)+2/deltaZ/(pi*k_conductivity*deltaR^2));
end
%%
T=[T1511(8),T1510(8),T159(8),T158(8),T157(8),T156(8),T155(8),T154(8),T153(8),T152(8),T_151,T152(3),T153(3),T154(3),T155(3),T156(3),T157(3),T158(3),T159(3),T1510(3),T1511(3)];
R=[-20,-18,-16,-14,-12,-10,-8,-6,-4,-2,0,2,4,6,8,10,12,14,16,18,20];
plot(R,T)









