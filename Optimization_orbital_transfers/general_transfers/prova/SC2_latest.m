
%% SCENARIO 2
clc
close all
clear 

mu_S= 132712440018 ; % (costante gravitazionale SOLE)      [km^3/s^2]
%% 
% dati orbita ELIOCENTRICA della terra (= orbita iniziale) :

a_i= 1.4946e8;    % [km]

e_i= 0.016;       % [-]

i_i= 9.1920e-5;   % [rad]

OM_i= 2.7847;     % [rad]

om_i= 5.2643;     % [rad]

% Nome asteroide: 3361 Orpheus (1982 HR)

% dati orbita ELIOCENTRICA asteroide (= orbita finale) : 

a_f= 1.210438 * 149597870.7;  % [km]

e_f= 0.322941;                % [-]

i_f= 2.66 * (pi/180);         % [rad]

OM_f= 188.67 * (pi/180);      % [rad]

om_f= 302.35 * (pi/180);      % [rad]

%% scelgo arbitrariamente th_i= 0 (pericentro) e th_f=pi (apocentro)

th_i=pi;  % th_i = theta di partenza nell'orbita iniziale
th_f=0; % th_f=  theta di arrivo nell'orbita finale 

% calcolo il vettore posizione e il vettore velocità nel punto di partenza e di arrivo 

[RR_i, VV_i] = par2car(a_i, e_i, i_i, OM_i, om_i, th_i, mu_S);
[RR_f, VV_f] = par2car(a_f, e_f, i_f, OM_f, om_f, th_f, mu_S);

r1_t=RR_i;
r2_t=RR_f;

% trovo il versore normale al piano orbitale di trasferimento

h_t=cross(RR_i,RR_f)/norm(cross(RR_i,RR_f));

% calcolo inclinazione orbita di trasferimento

i_t= acos(h_t(3));

% determino il versore linea dei nodi 

K=[0;0;1];
N_t= cross(K,h_t)/norm(cross(K,h_t));

% calcolo dell'ascensione retta del nodo ascendente (RAAN)

if N_t(2) >= 0

   OM_t= acos(N_t(1));

else 

   OM_t= 2*pi - acos(N_t(1));

end

om_vect=linspace(0,2*pi,15000);

deltaV_vect=[];
a_t_vect=[];
e_t_vect=[];

for ii=1:length(om_vect)

    om_t=om_vect(ii);
    
    R_OM_t = [cos(OM_t)     sin(OM_t)     0;...
              -sin(OM_t)    cos(OM_t)     0;...
              0         0         1];
        
R_i_t = [1     0          0;...
         0    cos(i_t)     sin(i_t);...
         0   -sin(i_t)     cos(i_t)];
  
R_om_t = [cos(om_t)     sin(om_t)     0;...
          -sin(om_t)    cos(om_t)     0;...
            0         0         1];
        

T_ELIO_PF_t = R_om_t * R_i_t * R_OM_t;                                           

r1_t_tilde= T_ELIO_PF_t * RR_i;

r2_t_tilde= T_ELIO_PF_t * RR_f;

th_i_t=acos(r1_t_tilde(1)/norm(RR_i));

th_f_t=acos(r2_t_tilde(1)/norm(RR_f));

r1=norm([r1_t_tilde(1); r1_t_tilde(2)]);
r2=norm([r2_t_tilde(1); r2_t_tilde(2)]);

e_t= (r2 - r1) / (r1*cos(th_i_t) - r2*cos(th_f_t));

if e_t >= 0 && e_t < 1
a_t= ( r1 * ( 1 + e_t * cos(th_i_t)) ) / (1-e_t^2);

[~, VV1_t] = par2car(a_t, e_t, i_t, OM_t, om_t, th_i_t, mu_S);
[~, VV2_t] = par2car(a_t, e_t, i_t, OM_t, om_t, th_f_t, mu_S);

deltaV= norm(VV1_t-VV_i) + norm (VV2_t-VV_f) ;
 
deltaV_vect=[deltaV_vect; deltaV];

a_t_vect= [a_t_vect;a_t];
e_t_vect= [e_t_vect;e_t];

else

end

end

[deltaV_min,idx]=min(deltaV_vect);
 a_t=a_t_vect(idx);
 e_t=e_t_vect(idx);
 om_t=om_vect(idx);

 deltaV_min


figure(1)
R_vect = plotOrbit(a_i, e_i, i_i, OM_i, om_i, 0, 2*pi, 0.005,mu_S);
hold on
figure(1)
R_vect = plotOrbit(a_f, e_f, i_f, OM_f, om_f, 0, 2*pi, 0.005,mu_S);
figure(1)
R_vect = plotOrbit(a_t, e_t, i_t, OM_t, om_t, 0, 2*pi, 0.005,mu_S);
hold on
plot3(RR_i(1),RR_i(2),RR_i(3),'*');
plot3(RR_f(1),RR_f(2),RR_f(3),'*');
plot3(0,0,0,'*')
legend('orbita terra','orbita asteoride','orbita di trasferimento',...
    'apocentro orbita iniziale','pericentro orbita iniziale','posizione sole')
