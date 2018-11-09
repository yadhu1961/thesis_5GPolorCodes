function polarized_channels = channel_polarization(n,design_epsilon)
%Summary of this function goes here
%Detailed explanation goes here
polarized_channels = repmat(design_epsilon,1,2^n);
block_length = 2^n;

for iteration=1:n
   increment = 2^iteration;
   for j = 1:increment
       for i = 1:block_length
           c1 = polarized_channels(i + j);
           c2 = polarized_channels(i + j + increment);
           polarized_channels(i + j) = c1;
           polarized_channels(i + j + increment) = c2;
       end
   end
end
end