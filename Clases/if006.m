function [final] = if006(nota)

if(nota>=90), final='A'
elseif(nota>=80), final='B'
elseif(nota>=70), final='C'
elseif(nota>=60), final='D'
else final='F'
end

end