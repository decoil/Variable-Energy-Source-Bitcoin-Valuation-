

function [totmined] = ncv(n, k, e, P, M, r)
    mined = [];
    totmined = [];
    
    for i=0:n
        mined = [mined ((((1-k)*M)/(1+r)^i)-(e/P))];
        totmined = [totmined sum(mined)];
    end
end



