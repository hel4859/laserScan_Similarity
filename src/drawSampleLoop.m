function drawSampleLoop( res, pose )
%DRAWLOOP Summary of this function goes here
%   Detailed explanation goes here    
    hold on
    for i = 1:size(res,1)
        if res(i,1)-res(i,2) < 10
            continue
        end
        spx = (res(i,1) - 1) * 10 + 1;
        spy = (res(i,2) - 1) * 10 + 1;
        
        idi = spx;
        idj = spy;
        pi = pose{spx};
        pj = pose{spy};
        pi = pi(1:3,4);
        pj = pj(1:3,4);
        plot3([pi(1) pj(1)],[pi(2) pj(2)],[pi(3)+idi*0.1 pj(3)+idj*0.1],'r','LineWidth',1)   
        % To draw on the trajectory of kitti
        drawnow
    end

end

