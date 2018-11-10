function channels = channel_polarization(n,epsilon)
%Summary of this function goes here
%Detailed explanation goes here

block_length = 2^n;

channels = epsilon*ones(1, block_length);

for i=1:n
    c1 = channels(1:2:block_length);
    c2 = channels(2:2:block_length);
    channels = [c1 + c2 - c1.*c2, c1.*c2];
end

end