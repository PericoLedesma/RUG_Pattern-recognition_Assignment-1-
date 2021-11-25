%set up the feature matrix
f1 = [4 5 6];
f2 = [6 3 9];
f3 = [8 7 3];
f4 = [7 4 8];
f5 = [4 6 5];
F = [f1; f2; f3; f4; f5]

%calculate the mean
mu =0.2*[sum(F(:,1)), sum(F(:,2)), sum(F(:,3))];

%covariance
S = eye(3);
for i = 1:3
   for j = 1:3
      xi = F(:,i) - mu(:,i)*ones(5,1);
      yi = F(:,j) - mu(:,j)*ones(5,1);
      S(i,j) =  (1/4)*sum(xi.*yi);
   end
end
disp(S)