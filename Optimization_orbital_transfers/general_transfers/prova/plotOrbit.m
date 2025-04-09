function R_vect = plotOrbit(a, e, i, OM, om, th0, thf, dth,mu)

% 3d orbit plot
% 
% plotOrbit(a, e, i, OM, om, th0, thf, dth)
% 
% ------------------------------------------------------------------------
% Input arguments:
% a             [1x1]   semi-major axis                      [km]
% e             [1x1]   eccentricity                         [-]
% i             [1x1]   inclination                          [rad]
% OM            [1x1]   RAAN                                 [rad]
% om            [1x1]   pericenter anomaly                   [rad]
% th0           [1x1]   initial true anomaly                 [rad]
% thf           [1x1]   final true anomaly                   [rad]
% dth           [1x1]   true anomaly step size               [rad]
% mu            [1x1]   gravitational parameter              [km^3/s^2]
% -----------------------------------------------------------------------
% Output Arguments:
% R_vect        [3xn]   position vector matrix               [-]
% -----------------------------------------------------------------------

%% definizione vettore delle anomalie vere

th_vect = [th0 : dth : thf];

%% calcolo vettore di stato - [R_vect,V_vect]

n = length(th_vect);

R_vect = zeros(3,n);
V_vect = zeros(3,n);

for k = 1:n
    
    [RR, VV] = par2car(a, e, i, OM, om, th_vect(k),mu);                        %calcolo RR e VV per ogni th i-esimo
    
    R_vect(:,k) = [,RR];                                                    %affianco il vettore colonna appena calcolato al precedente
    V_vect(:,k) = [,VV];                                                    %alla fine ottengo delle matrici dove ogni colonna raprresenta il 
                                                                            %vettore RR o VV corrispondente ad il singolo th i-esimo
end
                                                                        
%% plot terra e orbita (scaricare pacchetto Earth-sized Sphere with Topografy)

%earth_sphere
%hold on
plot3(R_vect(1,:), R_vect(2,:), R_vect(3,:))

%% plot campo di velocità
% hold on
% 
% passo = ceil(length(R_vect)/20);                                            %definisco il passo (vedi sotto) (ps. 20 è del tutto casuale)
% 
% quiver3(R_vect(1,1:passo:end),R_vect(2,1:passo:end),...
% R_vect(3,1:passo:end),...                                                   %quiver(x,y,z,u,v,w,s) stampa delle frecce (vetttori) aventi origine in
% V_vect(1,1:passo:end),V_vect(2,1:passo:end),...                             %x,y,z e con componenti u,v,w.
% V_vect(3,1:passo:end));                                                     %in questo caso x,y e z sono solo alcuni punti dell'orbita, distaziati di "passo", per evitare di stampare troppi vettori velocità   
     
%% plot assi ECI
 % X = [0 0 0]';
 % Y = [0 0 0]';                                                              %per stampare gli assi del sistema ECI definisco 
 % Z = [0 0 0]';                                                              %l'origine (X,Y,Z) e le componenti (I,J,K)
 % I = [1 0 0]'; 
 % J = [0 1 0]'; 
 % K = [0 0 1]';
 % 
 % hold on
 % quiver3(X,Y,Z,I,J,K,2e4)
 %% plot andamento velocità al variare di theta
 % 
 % figure
 % 
 % plot(th_vect,V_vect(1,:), th_vect,V_vect(2,:),th_vect,V_vect(3,:));
 % legend('vx','vy','vz')
end

% aggiunte possibili: plot vettore eccentricità, plot vettore momento
% angolare, plot vettore asse dei nodi.
